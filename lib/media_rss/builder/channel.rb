require File.join([File.dirname(__FILE__), 'base.rb'])

module MediaRss
  module Builder

    class Channel < Base
      
      def initialize(channel)
        super
        @channel = channel
        @builder.channel {
          build_info
          @channel.items.each |item| do
            Item.build(@builder, item)
          end
        }
      end
      
      protected
      
      def build_info
        @builder.send('atom:icon') @channel.icon.to_s
        @builder.title @channel.title.to_s 
        @builder.link @channel.link.to_s
        @builder.description @channel.description.to_s
      end
      
    end

  end  
end
