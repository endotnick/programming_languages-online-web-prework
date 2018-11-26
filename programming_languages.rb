def reformat_languages(input)
  reformatted = {}
  input.each do |style, languages|
    languages.each do |language, attributes|
      reformatted[language] = attributes
      
        reformatted[language][:style] = [style]
    end
  end
  reformatted
end
