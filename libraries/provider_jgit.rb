require 'chef/provider/git'

class Chef
  class Provider
    # use jgit when repository is on amazon-s3
    # https://github.com/opscode/chef/blob/master/lib/chef/provider/git.rb
    class Jgit < Chef::Provider::Git

      # modified command line
      def shell_out!(*command_args)
        if @new_resource.repository =~ %r[^amazon-s3://]
          command_args[0].gsub!(/(^|[&;|]\s*)git(\s+(ls-remote|clone|fetch|submodule\s+sync))/, '\1jgit\2')
        end
        super(*command_args)
      end
    end
  end
end
