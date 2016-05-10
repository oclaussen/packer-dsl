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

require 'packer_dsl/builders/base'

module PackerDSL
  module Builders
    module Vmware
      class Base < Builders::Base
        property :vm_name
        property :headless
        property :floppy_files
        property :fusion_app_path
        property :skip_compaction
        property :output_directory
        property :vmx_data
        property :vmx_data_post

        property :ssh_username
        property :ssh_password
        property :ssh_port

        property :boot_command
        property :boot_wait
        property :shutdown_command
        property :shutdown_timeout

        property :http_directory
        property :http_port_min
        property :http_port_max

        property :vnc_port_min
        property :vnc_port_max
      end
    end
  end
end
