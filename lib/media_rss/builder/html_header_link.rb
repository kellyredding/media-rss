module MediaRss
  module Builder
    
    class HtmlHeaderLink
      
      attr_reader :url, :options
      def initialize(url, opts={})
        @url = url
        @options = opts || {}
        @options[:title] ||= 'media rss'
      end
      
      def to_s
        "<link rel=\"alternate\" href=\"#{@url.to_s}\" type=\"application/rss+xml\" title=\"#{@options[:title]}\" />"
      end
    end
  end
end