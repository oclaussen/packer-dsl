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

require 'packer_dsl/mixins/hashable'

module PackerDSL
  class Builder
    include Hashable

    def self.from_type(type, &blk)
      new_builder = Builder.new(type)
      new_builder.instance_eval(&blk) if block_given?
      new_builder
    end

    def hashable_variables
      [:type]
    end

    def initialize(type)
      @type = type
    end
  end
end
