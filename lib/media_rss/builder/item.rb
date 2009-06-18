require File.join([File.dirname(__FILE__), 'base.rb'])

module MediaRss
  module Builder

    class Item
      
      def self.build(builder, item)
        builder.item {
          builder.title item.title.to_s 
          builder.link item.link.to_s
          builder.guid item.guid.to_s
          builder.send('media:description', item.description.to_s)
          builder.send('media:thumbnail', :url => item.thumb.to_s, :type => item.thumb_type.to_s)
          builder.send('media:content', :url => item.content.to_s, :type => item.content_type.to_s)
        }
      end
      
    end

  end  
end