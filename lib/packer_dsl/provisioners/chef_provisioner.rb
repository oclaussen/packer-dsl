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

require 'packer_dsl/provisioners/base_provisioner'

module PackerDSL
  module Provisioners
    class ChefProvisioner < BaseProvisioner
      property :run_list
      property :chef_environment
      property :guest_os_type
      property :json
      property :config_template
      property :encrypted_data_bag_secret_path
      property :execute_command
      property :install_command
      property :prevent_sudo
      property :skip_install
      property :staging_directory
    end
  end
end
