# -*- encoding: utf-8 -*-
# stub: binarylogic-searchlogic 2.3.5 ruby lib

Gem::Specification.new do |s|
  s.name = "binarylogic-searchlogic".freeze
  s.version = "2.3.5"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Ben Johnson of Binary Logic".freeze]
  s.date = "2009-09-13"
  s.description = "Searchlogic makes using ActiveRecord named scopes easier and less repetitive.".freeze
  s.email = "bjohnson@binarylogic.com".freeze
  s.extra_rdoc_files = ["LICENSE".freeze, "README.rdoc".freeze]
  s.files = ["LICENSE".freeze, "README.rdoc".freeze]
  s.homepage = "http://github.com/binarylogic/searchlogic".freeze
  s.rdoc_options = ["--charset=UTF-8".freeze]
  s.rubygems_version = "3.1.4".freeze
  s.summary = "Searchlogic makes using ActiveRecord named scopes easier and less repetitive.".freeze

  s.installed_by_version = "3.1.4" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<activerecord>.freeze, [">= 2.0.0"])
  else
    s.add_dependency(%q<activerecord>.freeze, [">= 2.0.0"])
  end
end
