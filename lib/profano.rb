require 'profano/configuration'
require 'profano/filter'
require 'profano/railtie' if defined?(Rails)

module Profano
  extend Profano::Configuration
  extend Profano::Filter
end

# TODO:
# 1. New generator install task that copies over this gem's files to a rails project's lib/profano
# 3. The gem should point to the files in the user's Rails project
