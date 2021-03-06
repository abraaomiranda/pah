module Pah
  class << self
    attr_accessor :configuration
  end

  def self.configure
    self.configuration ||= Configuration.new
    yield(configuration)
  end

  class Configuration
    attr_accessor :app_name, :heroku

    def initialize
      @heroku = {}
    end
  end
end
