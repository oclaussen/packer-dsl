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

require 'packer_dsl/provisioners/base'

module PackerDSL
  module Provisioners
    class Salt < Provisioners::Base
      register_as Provisioners::Salt, provisioner: 'salt'

      property :bootstrap_args
      property :disable_sudo
      property :remote_pillar_roots
      property :remote_state_tree
      property :local_pillar_roots
      property :local_state_tree
      property :minion_config
      property :skip_bootstrap
      property :temp_config_dir
      property :no_exit_on_failure
      property :log_level
    end
  end
end
