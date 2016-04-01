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

require 'packer_dsl/builders/base_builder'

module PackerDSL
  module Builders
    class AmazonBuilder < BaseBuilder
      property :instance_type
      property :region
      property :availability_zone
      property :subnet_id

      property :vpc_id
      property :associate_public_ip_address
      property :ebs_optimized
      property :enhanced_networking
      property :force_deregister
      property :iam_instance_profile
      property :windows_password_timeout
      property :tags
      property :run_tags
      property :spot_price
      property :spot_price_auto_product

      property :source_ami
      property :ami_name
      property :ami_description
      property :ami_groups
      property :ami_product_codes
      property :ami_regions
      property :ami_users
      property :ami_virtualization_type
      property :ami_block_device_mappings
      property :launch_block_device_mappings

      property :access_key
      property :secret_key
      property :security_group_id
      property :security_group_ids

      property :ssh_username
      property :ssh_password
      property :ssh_keypair_name
      property :ssh_private_ip
      property :temporary_key_pair_name

      property :user_data
      property :user_data_file
    end
  end
end
