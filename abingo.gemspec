# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{abingo}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Patrick McKenzie"]
  s.date = %q{2011-07-24}
  s.email = %q{patrick@kalzumeus.com}
  s.extra_rdoc_files = ["README"]
  s.files = ["init.rb", "install.rb", "MIT-LICENSE", "Rakefile", "README", "strip.rb", "uninstall.rb", "test/abingo_test.rb", "test/test_helper.rb", "lib/abingo", "lib/abingo/alternative.rb", "lib/abingo/controller", "lib/abingo/controller/dashboard.rb", "lib/abingo/conversion_rate.rb", "lib/abingo/experiment.rb", "lib/abingo/rails", "lib/abingo/rails/controller", "lib/abingo/rails/controller/dashboard.rb", "lib/abingo/statistics.rb", "lib/abingo/views", "lib/abingo/views/dashboard", "lib/abingo/views/dashboard/_experiment.erb", "lib/abingo/views/dashboard/index.erb", "lib/abingo.rb", "lib/abingo_sugar.rb", "lib/abingo_view_helper.rb"]
  s.homepage = %q{http://www.bingocardcreator.com/abingo}
  s.rdoc_options = ["--main", "README"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.6.2}
  s.summary = %q{Rails A/B testing. One minute to install. One line to set up a new A/B test. One line to track conversion.}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
