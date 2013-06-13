module VagrantPlugins
  module Destroyer
    class Config < Vagrant.plugin(2, :config)
      attr_accessor :enable
      
      def initialize
        @enable = false
        
      end

      def finalize!
        @enable = false if @enable == UNSET_VALUE || @enable == nil || @enable == false
      end

      #def enabled?
      #  @enabled ||= @enable != UNSET_VALUE ||
      #               @enable != nil
      #end

    end
  end
end
