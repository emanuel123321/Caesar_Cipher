def caesar_cipher(text, key)
    new_array = []
    char_array = text.split("")
    
    char_array.each do |character|
        keycode = character.ord

        if keycode.between?(96, 122)
            keycode += key
            if keycode < 123
                new_array << keycode.chr
            elsif keycode > 122
                keycode -= 26
                new_array << keycode.chr
            end
        elsif keycode.between?(65, 90)
            keycode += key
            if keycode < 91
                new_array << keycode.chr
            elsif keycode > 90
                keycode -= 26
                new_array << keycode.chr
            end 
        else
            new_array<< keycode.chr
        end
        
    end
    new_array.join("")
end

p caesar_cipher("Ebiil jv kxjb fp BJXKRBI ! Kf`b ql jbbq vlr", 3)