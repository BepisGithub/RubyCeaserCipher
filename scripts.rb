

def caesar_cipher(str,key)
    str = str.chomp.to_s
    key = key.chomp.to_i
    str = str.bytes #convert the string into an array of the converted ascii keys
    str.map! do |item|
        key_copy = key
        needsWrapping = false
        if item>=65 && item<=90
            if item==90
                needsWrapping = true
            end
            while key_copy>(item-90).abs && (item-90).abs != 0
                key_copy = key_copy - (item-90).abs
                needsWrapping = true
            end
            if needsWrapping==true
                64+key_copy
            else
                item+key_copy
            end



        elsif item>=97 && item<=122
            if item==122
                needsWrapping = true
            end
            while key_copy>(item-122).abs && (item-122).abs != 0
                key_copy = key_copy - (item-122).abs 
                needsWrapping = true
            end
            if needsWrapping==true
                96+key_copy
            else
                item+key_copy
            end

        else
            item
        end

    end
    str.map!{|item|item.chr}
    str = str.join("")
end

puts "Enter the string you want encrypted: "
string = gets
puts "Enter the key to shift by: "
shift = gets
puts caesar_cipher(string,shift)