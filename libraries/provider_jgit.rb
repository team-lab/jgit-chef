require 'chef/provider/git'

class Chef
  class Provider
    # use jgit when repository is on amazon-s3
    # https://github.com/opscode/chef/blob/master/lib/chef/provider/git.rb
    class Jgit < Chef::Provider::Git
      # modified command line
      def shell_out!(*command_args)
        if @new_resource.repository =~ %r[^amazon-s3://]
          command_args[0].gsub!(/(^|[&;|]\s*)git(\s+(ls-remote|clone|fetch|submodule\s+update))/, '\1jgit\2')
        end
        super(*command_args)
      end

      def whyrun_supported?
        jgit_command_executable?
      end

      # fix https://github.com/opscode/chef/blob/11.12.4/lib/chef/provider/git.rb#L70 error on why-run
      def remote_resolve_reference
        if whyrun_mode? && !jgit_command_executable?
          ""
        else
          super
        end
      end

      def jgit_command_executable?
        command_executable?("jgit") && command_executable?("git")
      end

      def command_executable?(cmd)
        ENV['PATH'].split(::File::PATH_SEPARATOR).any?{|path|
          ::File.executable?(::File.join(path, cmd))
        }
      end
    end
  end
end
