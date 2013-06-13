module VagrantPlugins
  module Destroyer
    class Plugin < Vagrant.plugin('2')
      name 'vagrant-destroy'

      config 'destroy' do
        require_relative "config"
        Config
      end

      install_action_hook = lambda do |hook|
        require_relative 'action'
        hook.append VagrantPlugins::Destroyer::Action::Destroy
      end
      action_hook 'destroy-on-machine-up', :machine_action_up, &install_action_hook
    end
  end
end
