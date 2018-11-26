def reformat_languages(input)
  reformatted = {}
  input.each do |style, languages|
    languages.each do |language, attributes|
      reformatted[language] = attributes
      if reformatted[language][:style] 
        reformatted[language][:style] << style
      else 
        reformatted[language][:style] = [style]
      end
    end
  end
  reformatted
end
