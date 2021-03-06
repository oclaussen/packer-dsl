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

require 'packer_dsl/registry'
require 'packer_dsl/builders'
require 'packer_dsl/post_processors'
require 'packer_dsl/provisioners'
require 'packer_dsl/mixins/from_file'

module PackerDSL
  class Template
    include FromFile

    attr_reader :definitions
    attr_reader :variables
    attr_reader :builders
    attr_reader :post_processors
    attr_reader :provisioners

    def initialize
      @definitions = {}
      @variables = {}
      @builders = []
      @post_processors = []
      @provisioners = []
    end

    def description(text = nil)
      return @description if text.nil?
      @description = text
    end

    def min_packer_version(version = nil)
      return @min_version if version.nil?
      @min_version = version
    end

    def define(name, &blk)
      definitions[name.to_sym] = blk
    end

    def include_template(relative_path)
      caller_file = caller[0].split(':')[0]
      path = File.expand_path(relative_path, File.dirname(caller_file))
      path += '.rb' unless File.exist?(path) || path.end_with?('rb')
      from_file path
    end

    def variable(name, value)
      variables[name] = value
    end

    def builder(type, &blk)
      builders << build_component(:builder, type, &blk)
    end

    def post_processor(type, &blk)
      post_processors << build_component(:post_processor, type, &blk)
    end

    def provisioner(type, &blk)
      provisioners << build_component(:provisioner, type, &blk)
    end

    # TODO: make this nice
    # rubocop:disable Metrics/LineLength
    # rubocop:disable Metrics/AbcSize
    # rubocop:disable Metrics/CyclomaticComplexity
    def to_h
      hash = {}
      hash[:description] = description unless description.nil?
      hash[:min_packer_version] = min_packer_version unless min_packer_version.nil?
      hash[:variables] = variables unless variables.empty?
      hash[:builders] = builders.map(&:to_h) unless builders.empty?
      hash['post-processors'] = post_processors.map(&:to_h) unless post_processors.empty?
      hash[:provisioners] = provisioners.map(&:to_h) unless provisioners.empty?
      hash
    end

    private

    def build_component(type, name, &blk)
      new_item = Registry.instance.retrieve(type, name).new(name, self)
      new_item.instance_eval(&blk) if block_given?
      new_item
    end
  end
end
