require 'chef/resource/git'
require_relative 'provider_jgit'

class Chef
  class Resource
    class Jgit < Git
      def initialize(name, run_context=nil)
        super
        @resource_name = :jgit
        @provider = Chef::Provider::Jgit
      end

      def whyrun_supported?
        @provider.whyrun_supported?
      end
    end
  end
end

