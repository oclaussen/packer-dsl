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

require 'packer_dsl/builders/amazon/base'

module PackerDSL
  module Builders
    module Amazon
      class Chroot < Amazon::Base
        register_as Amazon::Chroot, builder: 'amazon-chroot'

        property :chroot_mounts
        property :command_wrapper
        property :copy_files
        property :device_path
        property :root_volume_size

        property :mount_path
        property :mount_partition
        property :mount_options
      end
    end
  end
end
