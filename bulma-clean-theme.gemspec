# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "bulma-clean-theme"
  spec.version       = "0.12"
  spec.authors       = ["chrisrhymes"]
  spec.email         = ["csrhymes@gmail.com"]

  spec.summary       = "Clean and simple Jekyll theme built using Bulma"
  spec.homepage      = "https://www.github.com/chrisrhymes/bulma-clean-theme"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(assets|_layouts|_includes|_sass|_posts|blog|LICENSE|README|package|node_modules|favicon)!i) }

  spec.add_runtime_dependency "jekyll", "~> 4.0"

   # ADD THIS LINE to force the older sass converter to fix issue with sass-embedded
  spec.add_runtime_dependency "jekyll-sass-converter", "~> 2.0"
  
  spec.add_runtime_dependency "jekyll-feed"
  spec.add_runtime_dependency "jekyll-sitemap"
  spec.add_runtime_dependency "jekyll-paginate"
  spec.add_runtime_dependency "jekyll-seo-tag"
  spec.add_runtime_dependency "kramdown-parser-gfm"

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
end