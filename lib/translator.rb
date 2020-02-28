# require modules here
require 'pry'
require 'yaml'
emoticons = YAML.load_file('lib/emoticons.yml')
def load_library(emoticons)
  # code goes here
  hash = {
          :get_meaning =>
          {
            "☜(⌒▽⌒)☞" => "angel",
            "ヽ(ｏ`皿′ｏ)ﾉ" => "angry",
            "(ΘεΘ;)" => "bored",
            "(゜.゜)"=> "confused",
            "(#^.^#)" => "embarrased",
            ">゜))))彡" => "fish",
            "(^0_0^)" => "glasses",
            "(￣ー￣)" =>  "grinning",
            "(＾ｖ＾)" => "happy",
            "(*^3^)/~☆" => "kiss",
            "(Ｔ▽Ｔ)" => "sad",
            "o_O" => "surprised",
            "(^_-)" => "wink"
          },
          :get_emoticon =>
          {
            "O:)" => "☜(⌒▽⌒)☞",
            ">:(" => "ヽ(ｏ`皿′ｏ)ﾉ",
            ":O" => "(ΘεΘ;)",
            "%)" => "(゜.゜)",
            ":$" => "(#^.^#)",
            "><>" => ">゜))))彡",
            "8D" => "(^0_0^)",
            "=D" => "(￣ー￣)",
            ":)" => "(＾ｖ＾)",
            ":*" => "(*^3^)/~☆",
            ":'(" => "(Ｔ▽Ｔ)" ,
            ":o" => "o_O",
            ";)" => "(^_-)"
          }
          }
  hash
end

def get_japanese_emoticon(emoticons,emoticon)
# #   # code goes here
my_library = load_library(emoticons)
result = []
  my_library.each do |key,value|
    # p "KEY: #{key}, VALUE: #{value}"
    value.each do |value_key, value_value|
      # p "value_key: #{value_key}, value_value: #{value_value}"
      if emoticon == value_key
        result << value_value
      end
    end
  end
  if !my_library[:get_emoticon].include? emoticon
    p "Sorry, that emoticon was not found"
  else
    result.join('')
  end
end

def get_english_meaning(emoticons,emoticon)
  my_library = load_library(emoticons)
  result = []
    my_library.each do |key,value|
      # p "KEY: #{key}, VALUE: #{value}"
      value.each do |value_key, value_value|
        # p "value_key: #{value_key}, value_value: #{value_value}"
        if emoticon == value_key
          result << value_value
        end
      end
    end
    if !my_library[:get_meaning].include? emoticon
      p "Sorry, that emoticon was not found"
    else
      result.join('')
    end

end
