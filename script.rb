def caesar_cipher(text, key)
    new_array = []
    char_array = text.split("")
    
    char_array.each do |character|
        keycode = character.ord + key
        if keycode > 122
            keycode = keycode - 26
        end
        new_array << keycode.chr
    end
    new_array.join("")
end

p caesar_cipher("text", 3)