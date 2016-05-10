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

require 'packer_dsl/builders/vmware_builder'

module PackerDSL
  module Builders
    module Vmware
      class VmwareIsoBuilder < VmwareBuilder
        register_as VmwareIsoBuilder, builder: 'vmware-iso'

        property :version
        property :disk_size
        property :disk_additional_size
        property :disk_type_id
        property :guest_os_type

        property :vmdk_name
        property :vmx_template_path

        property :tools_upload_flavor
        property :tools_upload_path

        property :iso_url
        property :iso_urls
        property :iso_checksum
        property :iso_checksum_url
        property :iso_checksum_type
        property :iso_target_path

        property :remote_type
        property :remote_host
        property :remote_username
        property :remote_password
        property :remote_private_key_file
        property :remote_datastore
        property :remote_cache_datastore
        property :remote_cache_directory
      end
    end
  end
end
