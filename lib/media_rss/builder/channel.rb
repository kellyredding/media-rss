require File.join([File.dirname(__FILE__), 'base.rb'])

module MediaRss
  module Builder

    class Channel < MediaRss::Builder::Base
      
      def initialize(channel)
        super(channel)
        @channel = channel
        build do |builder|
          builder.channel {
            builder.send('atom:icon', @channel.icon.to_s)
            builder.title @channel.title.to_s 
            builder.link @channel.link.to_s
            builder.description @channel.description.to_s
            @channel.items.each do |item|
              Item.build(builder, item)
            end
          }
        end
      end
      
    end

  end  
end
