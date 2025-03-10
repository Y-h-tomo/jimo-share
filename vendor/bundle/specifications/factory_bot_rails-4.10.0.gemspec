# -*- encoding: utf-8 -*-
# stub: factory_bot_rails 4.10.0 ruby lib

Gem::Specification.new do |s|
  s.name = "factory_bot_rails".freeze
  s.version = "4.10.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Joe Ferris".freeze]
  s.date = "2018-05-25"
  s.description = "factory_bot_rails provides integration between\n    factory_bot and rails 3 or newer (currently just automatic factory definition\n    loading)".freeze
  s.email = "jferris@thoughtbot.com".freeze
  s.homepage = "http://github.com/thoughtbot/factory_bot_rails".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.1.4".freeze
  s.summary = "factory_bot_rails provides integration between factory_bot and rails 3 or newer".freeze

  s.installed_by_version = "3.1.4" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<railties>.freeze, [">= 3.0.0"])
    s.add_runtime_dependency(%q<factory_bot>.freeze, ["~> 4.10.0"])
  else
    s.add_dependency(%q<railties>.freeze, [">= 3.0.0"])
    s.add_dependency(%q<factory_bot>.freeze, ["~> 4.10.0"])
  end
end
