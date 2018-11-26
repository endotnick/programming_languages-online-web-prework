def reformat_languages(input)
  reformatted = {}
  input.each do |coding_style, languages|
    languages.each do |language, attributes|
      reformatted[language] = attributes
      style = [] || reformatted[language][:style]
      style << coding_style
      reformatted[language][:style] = [style]
    end
  end
  reformatted
end
