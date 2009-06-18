module MediaRss
  
  class Item
    
    attr_accessor :title, :link, :guid, :description, :thumb, :thumb_type, :content, :content_type
    
    def initialize(title, opts = {})
      @title = title
      @link = opts[:link]
      @guid = opts[:guid]
      @description = opts[:description]
      @thumb = opts[:thumb]
      @thumb_type = opts[:thumb_type]
      @thumb_type ||= MediaRss.configuration[:default_thumb_type]
      @thumb_type ||= 'image/jpeg'
      @content = opts[:content]
      @content_type = opts[:content_type]
    end
    
  end
  
end
