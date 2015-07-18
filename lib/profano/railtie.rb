require 'rails'

module Profano
  class Railtie < Rails::Railtie
    initializer "my_railtie.configure_rails_initialization" do
      # some initialization behavior
    end
  end
end