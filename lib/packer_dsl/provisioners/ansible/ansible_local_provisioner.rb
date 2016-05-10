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
      class AnsibleLocalProvisioner < AnsibleProvisioner
        register_as AnsibleLocalProvisioner, provisioner: 'ansible-local'

        property :command
        property :inventory_groups
        property :inventory_file
        property :playbook_dir
        property :playbook_paths
        property :group_vars
        property :host_vars
        property :role_paths
        property :staging_directory
      end
    end
  end
end
