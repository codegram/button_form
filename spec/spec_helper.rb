require 'bundler'
Bundler.setup

require 'active_support/hash_with_indifferent_access'

module ActionView
  module Helpers
  end
end

module Rails
  class Railtie
    def self.initializer(string)
      yield
    end
  end
end

require 'button_form'
require 'rspec'
