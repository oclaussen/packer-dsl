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
      class Client < Chef::Base
        register_as Chef::Client, provisioner: 'chef-client'

        property :node_name
        property :server_url
        property :client_key
        property :validation_client_name
        property :validation_key_path
        property :ssl_verify_mode
        property :skip_clean_client
        property :skip_clean_node
      end
    end
  end
end
