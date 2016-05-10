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
      class Instance < Amazon::Base
        register_as Amazon::Instance, builder: 'amazon-instance'

        property :account_id
        property :s3_bucket

        property :x509_cert_path
        property :x509_key_path
        property :x509_upload_path

        property :bundle_destination
        property :bundle_prefix
        property :bundle_upload_command
        property :bundle_vol_command
      end
    end
  end
end
