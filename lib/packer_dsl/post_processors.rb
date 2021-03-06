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
  module PostProcessors
    require 'packer_dsl/post_processors/amazon/import'
    require 'packer_dsl/post_processors/docker/import'
    require 'packer_dsl/post_processors/docker/push'
    require 'packer_dsl/post_processors/docker/save'
    require 'packer_dsl/post_processors/docker/tag'
    require 'packer_dsl/post_processors/shell/local'
    require 'packer_dsl/post_processors/artifice'
    require 'packer_dsl/post_processors/atlas'
    require 'packer_dsl/post_processors/compress'
    require 'packer_dsl/post_processors/vagrant'
    require 'packer_dsl/post_processors/vsphere'
  end
end
