# -*- encoding: utf-8 -*-
# stub: stripe 1.48.0 ruby lib

Gem::Specification.new do |s|
  s.name = "stripe".freeze
  s.version = "1.48.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Stripe".freeze]
  s.date = "2016-07-12"
  s.description = "Stripe is the easiest way to accept payments online.  See https://stripe.com for details.".freeze
  s.email = "support@stripe.com".freeze
  s.executables = ["stripe-console".freeze]
  s.files = ["bin/stripe-console".freeze]
  s.homepage = "https://stripe.com/docs/api/ruby".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.3".freeze)
  s.rubygems_version = "2.6.13".freeze
  s.summary = "Ruby bindings for the Stripe API".freeze

  s.installed_by_version = "2.6.13" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rest-client>.freeze, ["< 3.0", ">= 1.4"])
    else
      s.add_dependency(%q<rest-client>.freeze, ["< 3.0", ">= 1.4"])
    end
  else
    s.add_dependency(%q<rest-client>.freeze, ["< 3.0", ">= 1.4"])
  end
end
