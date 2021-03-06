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

require 'packer_dsl/provisioners/chef/base'

module PackerDSL
  module Provisioners
    module Chef
      class Solo < Chef::Base
        register_as Chef::Solo, provisioner: 'chef-solo'

        property :cookbook_paths
        property :remote_cookbook_paths
        property :environment_paths
        property :roles_paths
        property :data_bag_paths
      end
    end
  end
end
