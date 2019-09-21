# require modules here
require "yaml"

def load_library(file)
  hash_form_file = YAML.load_file(file)
  emoticons = {"get_meaning" => {}, "get_emoticon" => {}}
  hash_form_file.each do |emotion, ejarray|
    emoticons["get_meaning"][ejarray[1]] = emotion
    emoticons["get_emoticon"][ejarray[0]] = ejarray[1]
  end 
  return emoticons
end

def get_japanese_emoticon(file, e_emoticon)
  new_file = load_library(file)
  new_file["get_emoticon"].each do |e_emot, j_emot_array|
    if e_emot === e_emoticon
      return j_emot_array
    else 
      return "Sorry, that emoticon was not found"
    end 
  end 
end 
  
  #if new_file[:get_emoticon].include?(emoticon)
   # return new_file[:get_emoticon][emoticon]
  #else 
   # return "Sorry, that emoticon was not found"
  #end 
#end 


def get_english_meaning
  # code goes here
end