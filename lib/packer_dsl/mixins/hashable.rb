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

module PackerDSL
  module Hashable
    def self.included(base_class)
      base_class.extend(ClassMethods)
    end

    module ClassMethods
      def hashable_variables
        # rubocop:disable Style/ClassVars
        @@hashable_variables ||= []
      end
    end

    def to_h
      result = {}
      self.class.hashable_variables.each do |prop|
        var_name = "@#{prop}".to_sym
        next unless instance_variable_defined?(var_name)
        value = instance_variable_get(var_name)
        value = to_hash_helper(value)
        result[prop.to_s] = value
      end
      result
    end

    private

    VALUE_CLASSES = [
      NilClass,
      TrueClass,
      FalseClass,
      Integer,
      Float,
      String
    ].freeze

    def to_hash_helper(value)
      VALUE_CLASSES.each { |cls| return value if value.is_a?(cls) }
      if value.is_a?(Array)
        value.map { |v| to_hash_helper(v) }
      elsif value.is_a?(Hash)
        Hash[value.map { |k, v| [k.to_s, to_hash_helper(v)] }]
      elsif value.respond_to?(:to_h)
        value.to_h
      else
        value.to_s
      end
    end
  end
end
