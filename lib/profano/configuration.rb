module Profano
  module Configuration
    attr_accessor :filter_character,
                  :treshold,
                  :source_path,
                  :locales,
                  :blacklists

    def self.extended(base)
      base.filter_character = '*'
      base.treshold = 0.5
      base.source_path = 'lib/locale/'
      base.locales = ['en']
      base.blacklists = {}

      # Load blacklist
      base.singleton_class.instance_eval do
        base.locales.each do |locale|
          base.blacklists[locale] = []
          File.readlines("lib/locale/#{locale}").each do |line|
            # TODO: instead of a list, build a btree index
            base.blacklists[locale] << line.chomp
          end
        end
      end
    end

    def configure
      yield self
    end
  end
end