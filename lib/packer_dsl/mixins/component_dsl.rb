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
require 'packer_dsl/mixins/hashable'

module PackerDSL
  module ComponentDSL
    def self.included(base_class)
      base_class.extend(ClassMethods)
    end

    module ClassMethods
      def register_as(clazz, **kwargs)
        kwargs.each do |type, name|
          Registry.instance.register(type, name, clazz)
        end
      end

      def property(name)
        hashable_variables << name if include? Hashable
        variable_name = "@#{name}".to_sym
        define_method name.to_sym do |value = nil|
          if !value.nil?
            instance_variable_set(variable_name, value)
          elsif instance_variable_defined?(variable_name)
            instance_variable_get(variable_name)
          end
        end
      end
    end
  end
end
