require File.join([File.dirname(__FILE__), 'channel.rb'])

module MediaRss
  
  class Feed < ::Array
    def self.default_channel(title, ops = {})
      opts[:icon] ||= MediaRss.congiguration[:default_icon]
      Channel.new(title, opts)
    end
  end

end