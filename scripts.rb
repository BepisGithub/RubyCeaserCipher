def caesar_cipher(str,key)
    str = str.bytes #convert the string into an array of the converted ascii keys
    str.map! do |item|
        if item>=65 && item<=90
            while key>(item-90).abs
                key = key - (item-90).abs 
            end



        elsif item>=97 && item<=122

        else
            item
        end

    end

end

caesar_cipher("Hello world!",2)