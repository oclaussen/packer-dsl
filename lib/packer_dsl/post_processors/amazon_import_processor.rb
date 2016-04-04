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

require 'packer_dsl/post_processors/base_processor'

module PackerDSL
  module PostProcessors
    class AmazonImportProcessor < BaseProcessor
      PostProcessors.register 'amazon-import', AmazonImportProcessor

      property :access_key
      property :region
      property :secret_key
      property :skip_clean
      property :tags
      property :s3_bucket_name
      property :s3_key_name
    end
  end
end
