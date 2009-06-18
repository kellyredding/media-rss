# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{media-rss}
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Kelly Redding"]
  s.date = %q{2009-06-18}
  s.email = %q{kelly@kelredd.com}
  s.extra_rdoc_files = ["README.rdoc"]
  s.files = ["README.rdoc", "Rakefile", "lib/media_rss", "lib/media_rss/builder", "lib/media_rss/builder/base.rb", "lib/media_rss/builder/channel.rb", "lib/media_rss/builder/html_header_link.rb", "lib/media_rss/builder/item.rb", "lib/media_rss/builder.rb", "lib/media_rss/models", "lib/media_rss/models/channel.rb", "lib/media_rss/models/feed.rb", "lib/media_rss/models/item.rb", "lib/media_rss/models.rb", "lib/media_rss/version.rb", "lib/media_rss.rb", "test/test_helper.rb", "test/unit", "test/unit/media_rss_test.rb"]
  s.has_rdoc = true
  s.homepage = %q{}
  s.rdoc_options = ["--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{A gem to provide some classes for generating media-rss.}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<nokogiri>, [">= 0"])
    else
      s.add_dependency(%q<nokogiri>, [">= 0"])
    end
  else
    s.add_dependency(%q<nokogiri>, [">= 0"])
  end
end
