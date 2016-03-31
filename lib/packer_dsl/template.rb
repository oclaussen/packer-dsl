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
# rubocop:disable Style/TrivialAccessors

require 'packer_dsl/builder'
require 'packer_dsl/post_processor'
require 'packer_dsl/provisioner'

require 'packer_dsl/mixins/from_file'
require 'packer_dsl/mixins/hashable'

module PackerDSL
  class Template
    include FromFile
    include Hashable

    def hashable_variables
      [
        :description,
        :min_packer_version,
        :variables,
        :builders,
        :post_processors,
        :provisioners
      ]
    end

    def description(text)
      @description = text
    end

    def min_packer_version(version)
      @min_packer_version = version
    end

    def variables
      @variables ||= {}
    end

    def variable(name, value)
      variables[name] = value
    end

    def builders
      @builders ||= []
    end

    def builder(type, &blk)
      builders << Builder.from_type(type, &blk)
    end

    def post_processors
      @post_processors ||= []
    end

    def post_processor(type, &blk)
      post_processors << PostProcessor.from_type(type, &blk)
    end

    def provisioners
      @provisioners ||= []
    end

    def provisioner(type, &blk)
      provisioners << Provisioner.from_type(type, &blk)
    end
  end
end
