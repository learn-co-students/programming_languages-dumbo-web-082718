def reformat_languages(languages)
  new_hash={}
  languages.each do |style, language_names|
    language_names.each do |language_name, type_hash|
      type_hash.each do |type_key,type_value|
        if new_hash.keys.include?(language_name)==true
          new_hash[language_name][:style]<<style
        else
          new_hash[language_name]={}
          new_hash[language_name]={type_key=> type_value,:style=>[style]}
        end
      end
    end
  end
  return new_hash
end
