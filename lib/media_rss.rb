$:.unshift File.dirname(__FILE__)

require 'media_rss/models'
require 'media_rss/generator'

module MediaRss
  
  @@configuration = {}
  def self.configure(opts = {})
    @@configuration = opts || {}
  end
  
end
