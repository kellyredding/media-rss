module MediaRss
  
  class Channel
    
    attr_accessor :title, :icon, :link, :description, :items
    
    def initialize(title, opts = {})
      @title = title
      @icon = opts[:icon]
      @link = opts[:link]
      @description = opts[:description]
      @items = []
    end
    
  end
  
end