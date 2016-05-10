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

require 'json'
require 'packer_dsl/template'

module PackerDSL
  module_function

  def convert(file, output_dir: nil)
    template = PackerDSL::Template.new
    template.from_file(file)
    template = JSON.pretty_generate(template.to_h)

    output_dir ||= File.dirname(file)
    Dir.mkdir(output_dir) unless File.exist?(output_dir)
    target = File.basename(file, '.rb')
    target = File.join(output_dir, "#{target}.json")
    File.open(target, 'w') { |f| f.write(template) }
  end
end
