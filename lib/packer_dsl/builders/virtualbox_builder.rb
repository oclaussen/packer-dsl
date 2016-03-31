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

require 'packer_dsl/builders/base_builder'

module PackerDSL
  module Builders
    class VirtualboxBuilder < BaseBuilder
      property :vm_name
      property :format
      property :headless
      property :export_opts
      property :floppy_files
      property :vboxmanage
      property :vboxmanage_post
      property :virtualbox_version_file
      property :output_directory

      property :ssh_username
      property :ssh_password
      property :ssh_host_port_min
      property :ssh_host_port_max
      property :ssh_skip_nat_mapping

      property :boot_command
      property :boot_wait
      property :shutdown_command
      property :shutdown_timeout

      property :http_directory
      property :http_port_min
      property :http_port_max

      property :vrdp_port_min
      property :vrdp_port_max

      property :guest_additions_mode
      property :guest_additions_path
      property :guest_additions_url
      property :guest_additions_sha256
    end
  end
end
