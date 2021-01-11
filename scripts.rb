def caesar_cipher(str,key)
    str = str.bytes #convert the string into an array of the converted ascii keys
    str.map! do |item|
        if item>=65 && item<=90

        elsif item>=97 && item<=122
        
        end
        
    end

end

caesar_cipher("Hello world!",2)