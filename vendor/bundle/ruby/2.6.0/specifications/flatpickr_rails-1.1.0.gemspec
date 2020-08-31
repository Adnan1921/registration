# -*- encoding: utf-8 -*-
# stub: flatpickr_rails 1.1.0 ruby lib

Gem::Specification.new do |s|
  s.name = "flatpickr_rails".freeze
  s.version = "1.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Jiren".freeze]
  s.bindir = "exe".freeze
  s.date = "2017-06-16"
  s.description = "A lightweight & powerful datetimepicker using flatpickr lib https://github.com/chmln/flatpickr ".freeze
  s.email = ["jirenpatel@gmail.com".freeze]
  s.homepage = "https://github.com/jiren/flatpickr_rails".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.0.8".freeze
  s.summary = "A lightweight & powerful datetimepicker gem".freeze

  s.installed_by_version = "3.0.8" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<railties>.freeze, [">= 3.0"])
      s.add_development_dependency(%q<bundler>.freeze, ["~> 1.10"])
      s.add_development_dependency(%q<rake>.freeze, ["~> 10.0"])
      s.add_development_dependency(%q<rspec>.freeze, [">= 0"])
    else
      s.add_dependency(%q<railties>.freeze, [">= 3.0"])
      s.add_dependency(%q<bundler>.freeze, ["~> 1.10"])
      s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
      s.add_dependency(%q<rspec>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<railties>.freeze, [">= 3.0"])
    s.add_dependency(%q<bundler>.freeze, ["~> 1.10"])
    s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
    s.add_dependency(%q<rspec>.freeze, [">= 0"])
  end
end
