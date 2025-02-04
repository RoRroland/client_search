require_relative 'client_search/json.rb'

module ClientSearch
  extend self

  # Default exception class for ClientSearch.
  class Exception < ::StandardError
  end

  # Exception that is raised if file is not found.
  class FileNotFound < ClientSearch::Exception
  end

  # Exception that is raised if path is missing.
  class PathMissing < ClientSearch::Exception
  end

  # Exception that is raised if path is an empty string.
  class EmptyString < ClientSearch::Exception
  end

  def self.process(path:)
    ClientSearch::Json.new(path:)
  end
end
