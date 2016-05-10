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
  module Provisioners
    require 'packer_dsl/provisioners/ansible/ansible_local_provisioner'
    require 'packer_dsl/provisioners/ansible/ansible_remote_provisioner'
    require 'packer_dsl/provisioners/chef/chef_client_provisioner'
    require 'packer_dsl/provisioners/chef/chef_solo_provisioner'
    require 'packer_dsl/provisioners/puppet/puppet_masterless_provisioner'
    require 'packer_dsl/provisioners/puppet/puppet_server_provisioner'
    require 'packer_dsl/provisioners/shell/powershell_provisioner'
    require 'packer_dsl/provisioners/shell/local_shell_provisioner'
    require 'packer_dsl/provisioners/shell/remote_shell_provisioner'
    require 'packer_dsl/provisioners/shell/windows_shell_provisioner'
    require 'packer_dsl/provisioners/file_provisioner'
    require 'packer_dsl/provisioners/salt_provisioner'
    require 'packer_dsl/provisioners/windows_restart_provisioner'
  end
end
