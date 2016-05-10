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

require 'packer_dsl/builders/virtualbox_builder'

module PackerDSL
  module Builders
    module VirtualBox
      class VirtualboxIsoBuilder < VirtualboxBuilder
        register_as VirtualboxIsoBuilder, builder: 'virtualbox-iso'

        property :disk_size
        property :guest_os_type
        property :hard_drive_interface

        property :iso_url
        property :iso_urls
        property :iso_checksum
        property :iso_checksum_url
        property :iso_checksum_type
        property :iso_interface
        property :iso_target_path
      end
    end
  end
end
