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
    class QemuBuilder < BaseBuilder
      register_as QemuBuilder, builder: 'qemu'

      property :vm_name
      property :format
      property :accelerator
      property :headless
      property :floppy_files
      property :machine_type
      property :net_device
      property :output_directory
      property :skip_compaction

      property :qemu_binary
      property :qemuargs

      property :disk_image
      property :disk_interface
      property :disk_size
      property :disk_cache
      property :disk_compression
      property :disk_discard

      property :iso_url
      property :iso_urls
      property :iso_checksum
      property :iso_checksum_url
      property :iso_checksum_type
      property :iso_skip_cache
      property :iso_target_path

      property :ssh_username
      property :ssh_password
      property :ssh_port
      property :ssh_host_port_min
      property :ssh_host_port_max
      property :ssh_wait_timeout

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
