# encoding: UTF-8
# frozen_string_literal: true
#
# Copyright 2016, Ole Claussen <claussen.ole@gmail.com>
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

require 'rake'
require 'rake/tasklib'
require 'packer_dsl'

module PackerDSL
  class RakeTasks < Rake::TaskLib
    attr_accessor :files
    attr_accessor :output_directory

    def initialize
      @files = []
      @output_directory = nil

      yield self if block_given?
      namespace :packer do
        convert
        validate
      end
    end

    def convert
      desc 'Convert Packer DSL files'
      task :convert do
        @files.each do |file|
          puts "Converting file #{file}"
          PackerDSL.convert(file, output_dir: @output_directory)
        end
      end
    end

    def validate
      desc 'Validate Packer templates'
      task validate: [:convert] do
        Dir.glob(File.join(output_directory, '*.json')).each do |file|
          sh "packer validate #{file}"
        end
      end
    end
  end
end
