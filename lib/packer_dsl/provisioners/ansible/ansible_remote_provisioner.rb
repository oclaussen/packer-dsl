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

require 'packer_dsl/provisioners/ansible_provisioner'

module PackerDSL
  module Provisioners
    module Ansible
      class AnsibleRemoteProvisioner < AnsibleProvisioner
        register_as AnsibleRemoteProvisioner, provisioner: 'ansible'

        property :user
        property :groups
        property :empty_groups
        property :host_alias
        property :ssh_host_key_file
        property :ssh_authorized_key_file
        property :local_port
        property :sftp_command
        property :ansible_env_vars
      end
    end
  end
end
