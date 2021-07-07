# require modules here
require "pry"
require "yaml"

#  ["☜(⌒▽⌒)☞","ヽ(ｏ`皿′ｏ)ﾉ","(ΘεΘ;)", "(゜.゜)", "(#^.^#)",">゜))))彡","8D", "(^0_0^)","=D", "(￣ー￣)","(＾ｖ＾)","(*^3^)/~☆","(Ｔ▽Ｔ)",":o", "o_O", "(^_-)"]
# , "(ΘεΘ;)", "(￣ー￣)", "o_O", "(^_-)"]
# "angel",
# "O:)" => "☜(⌒▽⌒)☞", ":'(" => "(Ｔ▽Ｔ)", ";)" => "(^_-)"
         

def load_library (file)
  # code goes here
  data = YAML.load_file(file)
  # pp data
  
  new_hash = {:get_meaning => {}, :get_emoticon => {} }
  data.each { |meaning, emotions|
  
    new_hash[:get_meaning][emotions[1]] = meaning
    new_hash[:get_emoticon][emotions[0]] = emotions[1]
  
  }
  
  # pp new_hash
  new_hash
  
end

def get_japanese_emoticon (file, emotion)
  # code goes 
  
  emoticon_hash = load_library (file)
  
  if emoticon_hash[:get_emoticon].include? emotion
    answer = emoticon_hash[:get_emoticon][emotion]
  else
    return "Sorry, that emoticon was not found"
  end
  
  answer
end

def get_english_meaning(file, emotion)
  # code goes here
  emotions_hash = load_library(file)
  
  if emotions_hash[:get_meaning].include? emotion 
    answer = emotions_hash[:get_meaning][emotion]
  else
    return "Sorry, that emoticon was not found"
  end
  
end