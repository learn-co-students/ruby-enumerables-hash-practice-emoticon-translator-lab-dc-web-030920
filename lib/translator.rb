# require modules here
require 'pry'
require 'yaml'

def load_library(emoticons_file)
  library = YAML.load_file(emoticons_file)
  # binding.pry
  emoticon_library = {"get_meaning" => {}, "get_emoticon" => {}}
  library.each do |meaning, emoticon|
    emoticon_library["get_meaning"][emoticon[1]] = meaning
    emoticon_library["get_emoticon"][emoticon[0]] = emoticon[1]
  end 
  emoticon_library
end

def get_japanese_emoticon(emoticons_file, emoticon)
  emoticon_library = load_library(emoticons_file)
  
  if emoticon_library["get_emoticon"][emoticon] == nil 
    return "Sorry, that emoticon was not found"
  else
    return emoticon_library["get_emoticon"][emoticon]
  end
  
end

def get_english_meaning(emoticons_file, emoticon)
  emoticon_library = load_library(emoticons_file)
  
  if emoticon_library["get_meaning"][emoticon] == nil
    return "Sorry, that emoticon was not found"
  else
    return emoticon_library["get_meaning"][emoticon]
  end
  
end