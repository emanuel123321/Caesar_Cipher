def caesar_cipher(text, key, new_array = [])
    char_array = text.split("")
    
    char_array.each do |character|
        keycode = character.ord + key
        new_array << keycode.chr
    end
    new_array.join("")
end

p caesar_cipher("hello", 3)