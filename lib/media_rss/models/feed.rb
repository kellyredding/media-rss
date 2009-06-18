require File.join([File.dirname(__FILE__), 'channel.rb'])

module MediaRss
  
  class Feed < ::Array
    def self.default_channel(title, ops = {})
      opts[:icon] ||= @@congiguration[:default_icon] #'/images/insight.png'
      Channel.new(title, opts)
    end
  end

end