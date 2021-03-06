#
# Cookbook Name:: openstack_client
# Library:: openstack
# Author:: Paul Czarkowski
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

module Openstack
  # The client module starts here
  module Client
    def initialize(name, run_context = nil)
      super
      begin
        require 'fog'
      rescue LoadError
        Chef::Log.error("Missing gem 'fog'. Use the default openstack_client recipe to install it first.")
      end
    end
  end
end
