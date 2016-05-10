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
# rubocop:disable Style/ClassVars

module PackerDSL
  module Definitions
    module_function

    def register(name, &blk)
      (@@registry ||= {})[name.to_sym] = blk
    end

    def include_in(name, item)
      @@registry ||= {}
      definition = @@registry[name.to_sym]
      raise "Undefined options: #{name}" if definition.nil?
      item.instance_eval(&definition)
    end
  end
end
