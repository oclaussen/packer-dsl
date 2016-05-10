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
  module Builders
    require 'packer_dsl/builders/amazon_builder'
    require 'packer_dsl/builders/amazon/amazon_chroot_builder'
    require 'packer_dsl/builders/amazon/amazon_ebs_builder'
    require 'packer_dsl/builders/amazon/amazon_instance_builder'
    require 'packer_dsl/builders/docker_builder'
    require 'packer_dsl/builders/null_builder'
    require 'packer_dsl/builders/qemu_builder'
    require 'packer_dsl/builders/virtualbox_builder'
    require 'packer_dsl/builders/virtualbox/virtualbox_iso_builder'
    require 'packer_dsl/builders/virtualbox/virtualbox_ovf_builder'
    require 'packer_dsl/builders/vmware_builder'
    require 'packer_dsl/builders/vmware/vmware_iso_builder'
    require 'packer_dsl/builders/vmware/vmware_vmx_builder'
  end
end
