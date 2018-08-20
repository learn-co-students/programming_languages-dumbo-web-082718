def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, language_and_types|
    language_and_types.each do |language, types|
      if new_hash.keys.include?(language)
        new_hash[language][:style] << style
      else
      new_hash[language] = types
      new_hash[language][:style] = [style] 
    end
    end
  end
  new_hash
end
