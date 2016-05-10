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

require 'packer_dsl/post_processors/base'

module PackerDSL
  module PostProcessors
    class Vsphere < PostProcessors::Base
      register_as PostProcessors::Vsphere, post_processor: 'vsphere'

      property :cluster
      property :datacenter
      property :datastore
      property :host
      property :password
      property :resource_pool
      property :username
      property :vm_name
      property :disk_mode
      property :insecure
      property :vm_folder
      property :vm_network
      property :overwrite
      property :options
    end
  end
end
