require_relative 'client_search/json.rb'

module ClientSearch
  extend self

  # Default exception class for ClientSearch.
  class Exception < ::StandardError
  end

  # Exception that is raised if file is not found.
  class FileNotFound < ClientSearch::Exception
  end

  # Exception that is raised if path is empty.
  class PathMissing < ClientSearch::Exception
  end

  # Exception that is raised if param is an empty string.
  class EmptyString < ClientSearch::Exception
  end

  def self.parse(path:)
    ClientSearch::Json.new(path:)
  end
end
