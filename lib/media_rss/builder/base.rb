require 'nokogiri' unless defined?(Nokogiri)

module MediaRss
  module Builder
    
    class Base
      def initialize(object)
        @builder = Nokogiri::XML::Builder.new
      end
      
      def build
        @builder.rss({
          :version => "2.0",
          :'xmlns:media' => "http://search.yahoo.com/mrss",
          :'xmlns:atom' => "http://www.w3.org/2005/Atom"
        }) do |builder|
          yield builder
        end
      end
      
      def to_rss
        @builder.to_xml
      end
      
    end
  end
end