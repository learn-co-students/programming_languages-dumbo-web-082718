require 'pry'

def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, style_hash|
    style_hash.each do |language, type_hash|
      if new_hash.has_key?(language)
        new_hash[language][:style] << style
      else
        new_hash[language] = type_hash
        new_hash[language][:style] = []
        new_hash[language][:style] << style
      end
    end
  end
  new_hash
end
