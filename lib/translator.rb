# require modules here

require 'yaml'

def load_library(file_path)
emoticons = YAML.load_file(file_path)
hash = {"get_meaning": {},
       "get_emoticon": {},
}
emoticons.each do |key,value|
  hash[:get_emoticon][value[0]] = value[1]
  hash[:get_meaning][value[1]] = key.to_s
  end
 hash
end


def get_japanese_emoticon(file_path, western_emoticon)
  # code goes here
result = "Sorry, that emoticon was not found"
 emoticons = load_library(file_path)
 emoticons[:get_emoticon].each do |key,value|
   if key == western_emoticon
    result = value
   end
  end
  result
end

def get_english_meaning(file_path, j_emoticon)
  # code goes here
  result = "Sorry, that emoticon was not found"
  emoticons = load_library(file_path)
  emoticons[:get_meaning].each do |key,value|
    if key == j_emoticon
      result = value
    end
  end
  result
end
