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
    class DockerBuilder < BaseBuilder
      register_as DockerBuilder, builder: 'docker'

      property :commit
      property :discard
      property :export_path

      property :image
      property :pull
      property :volumes
      property :run_command

      property :login
      property :login_username
      property :login_password
      property :login_email
      property :login_server
    end
  end
end
