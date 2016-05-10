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

require 'packer_dsl/definitions'
require 'packer_dsl/mixins/hashable'
require 'packer_dsl/mixins/component_dsl'

module PackerDSL
  class Component
    include Hashable
    include ComponentDSL

    def include_options(name)
      Definitions.instance.include_in(name, self)
    end

    def type(value = nil)
      return @type if value.nil?
      @type = value
    end
  end
end
