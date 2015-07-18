module Profano

  # TOOD:
  # 1. New generator install task that copies over this gem's files to a rails project's lib/profano
  # 2. Allow rails projects to configure stuff i.e. replacement char, profanity treshold
  # 3. The gem should point to the files in the user's Rails project

  def parse(str)
    # TODO: returns a score given string
  end

  def filter(str)
    # TODO: replaces blacklisted phrases with a specified character i.e. *
  end
end