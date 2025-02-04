# encoding: UTF-8
require 'rbconfig'
require 'client_search'

module FileHelpers
  def data_path(name)
    path = File.expand_path('./spec/data/')
    File.join(path, name)
  end
end

RSpec.configure do |config|
  config.include(FileHelpers)
  config.filter_run_excluding :windows => true if RbConfig::CONFIG['host_os'].match(/mswin|mingw|cygwin/) == nil
end
