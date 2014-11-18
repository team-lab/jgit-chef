require 'chef/provider'
require 'chef/provider/git'
class Chef
  class Provider
    # use jgit when repository is on amazon-s3
    class JGit < Git
      provides :jgit
      alias _git_shell_out! shell_out!
      def shell_out!(*command_args)
        if @new_resource.repository =~ %r[^amazon-s3://]
          command_args[0].gsub!(/(^|[&;|]\s*)git(\s+(ls-remote|clone|fetch))/, '\1jgit\2')
        end
        _git_shell_out!(*command_args)
      end
    end
  end
end
