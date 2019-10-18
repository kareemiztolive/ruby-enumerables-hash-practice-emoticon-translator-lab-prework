def load_library(yml_file)
  emoticon_lib = YAML.load_file(yml_file)

  emoticon_hash = {}

  american_arr = []
  japanese_arr = []

  meanings_hash = {}
  english_hash = {}

  emoticon_lib.each do |face_sym, emoji_array|

    english_hash = english_hash.merge(emoji_array[0] => emoji_array[1])
    meanings_hash = meanings_hash.merge(emoji_array[1] => face_sym.to_s)

  end

  emoticon_hash = {
    "get_emoticon" => english_hash,
    "get_meaning" => meanings_hash
  }

  return emoticon_hash
end