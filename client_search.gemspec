$:.push File.expand_path('../lib', __FILE__)
require 'client_search/version'

Gem::Specification.new do |s|
  s.name        = 'client_search'
  s.version     = ClientSearch::VERSION
  s.authors     = ['Rolando Alvarado']
  s.email       = ['rorroland@gmail.com']
  s.homepage    = 'https://github.com/RoRroland/client_search.git'
  s.summary     = %q{Process clients data from a file.}
  s.description = %q{ClientSearch is a simple code for parsing a clients data from a file with search capabilty for partial or full name and showing of duplicate email if there are.}

  s.rubyforge_project = 'client_search'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {spec}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ['lib']
end
