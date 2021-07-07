require 'yaml'
require 'pry'
  
def load_library(file_path)
  library = YAML.load_file(file_path)
  # binding.pry
  
  meaning_of_emoticons = {"get_meaning" => {}, "get_emoticon" => {} }
  
  library.each do |meaning_key, emoticon_value|
    meaning_of_emoticons["get_meaning"][emoticon_value[1]]= meaning_key
    meaning_of_emoticons["get_emoticon"][emoticon_value[0]] = emoticon_value[1]
  end
  meaning_of_emoticons
end

def get_japanese_emoticon(file_path, emoticon)
  if load_library(file_path)["get_emoticon"][emoticon]
    load_library(file_path)["get_emoticon"][emoticon]
  else
    "Sorry, that emoticon was not found"
  end
end

def get_english_meaning(file_path, emoticon)
  if load_library(file_path)["get_meaning"][emoticon]
    load_library(file_path)["get_meaning"][emoticon]
  else
    "Sorry, that emoticon was not found"
  end
end