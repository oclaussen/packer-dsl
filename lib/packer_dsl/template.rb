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

require 'packer_dsl/builders'
require 'packer_dsl/definitions'
require 'packer_dsl/post_processor'
require 'packer_dsl/provisioner'

require 'packer_dsl/mixins/from_file'
require 'packer_dsl/mixins/hashable'

module PackerDSL
  class Template
    include FromFile
    include Hashable

    property :description
    property :min_packer_version

    def define(name, &blk)
      Definitions.register(name, &blk)
    end

    def variable(name, value)
      variables[name] = value
    end

    def builder(type, &blk)
      builders << Builders.from_type(type, &blk)
    end

    def post_processor(type, &blk)
      post_processors << PostProcessor.from_type(type, &blk)
    end

    def provisioner(type, &blk)
      provisioners << Provisioner.from_type(type, &blk)
    end

    private

    def variables
      if @variables.nil?
        @variables = {}
        self.class.hashable_variables << :variables
      end
      @variables
    end

    def builders
      if @builders.nil?
        @builders = []
        self.class.hashable_variables << :builders
      end
      @builders
    end

    def post_processors
      if @post_processors.nil?
        @post_processors = []
        self.class.hashable_variables << :post_processors
      end
      @post_processors
    end

    def provisioners
      if @provisioners.nil?
        @provisioners = []
        self.class.hashable_variables << :provisioners
      end
      @provisioners
    end
  end
end
