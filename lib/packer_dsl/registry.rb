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

require 'singleton'

module PackerDSL
  class Registry
    include Singleton

    def category(name)
      @registry ||= {}
      @registry[name.to_sym] ||= {}
    end

    def register(type, name, cls)
      category(type)[name.to_sym] = cls
    end

    def retrieve(type, name)
      cat = category(type)
      raise "Unregistered item: #{type}" unless cat.key?(name.to_sym)
      cat[name.to_sym]
    end
  end
end
