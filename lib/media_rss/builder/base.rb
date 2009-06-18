require 'nokogiri' unless defined?(Nokogiri)

module MediaRss
  module Builder
    
    class Base
      def initialize
        @builder = Nokogiri::XML::Builder.new
      end
      
      def to_rss
        @builder.to_xml
      end
      
    end
  end
end