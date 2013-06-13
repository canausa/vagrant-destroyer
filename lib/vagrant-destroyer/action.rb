module VagrantPlugins
  module Destroyer
    class Action
      class Destroy
        def initialize(app, env)
          @app = app
          @logger = Log4r::Logger.new("vagrant::destroyer::action::destroy")
        end

        def call(env)
          return @app.call(env) if !env[:machine].config.destroy.enable

          @env = env
		
          @env[:machine].action(:destroy,:force_confirm_destroy => true)
         
          @app.call env

        end

      end
    end
  end
end
