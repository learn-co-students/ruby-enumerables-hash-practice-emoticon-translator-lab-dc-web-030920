# require modules here
require 'yaml'

 
def load_library(file_path)

  meaning = {}
  emoticon = {}

   combined = {'get_meaning' => meaning, 'get_emoticon' => emoticon}
   hash = YAML.load_file(file_path)

   hash.each do |english_word, emoticons|
     combined["get_meaning"][emoticons[1]] = english_word
     combined["get_emoticon"][emoticons[0]] = emoticons[1]
   end
   return combined
end


def get_japanese_emoticon(file_path, emoticon)
  hash = load_library(file_path)
  
    if hash["get_emoticon"][emoticon]
      return hash["get_emoticon"][emoticon]
    else
      return "Sorry, that emoticon was not found"
    end
end

def get_english_meaning(file_path, emoticon)
  # code goes here
  hash = load_library(file_path)
  
  if hash["get_meaning"][emoticon]
    return hash["get_meaning"][emoticon]
  else
    return "Sorry, that emoticon was not found"
  end
  
end