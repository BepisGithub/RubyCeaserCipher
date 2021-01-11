

def caesar_cipher(str,key)
    str = str.chomp.to_s
    key = key.chomp.to_i
    p str
    p key
    str = str.bytes #convert the string into an array of the converted ascii keys
    str.map! do |item|
        if item>=65 && item<=90
            while key>(item-90).abs
                key = key - (item-90).abs 
            end
            item+key



        elsif item>=97 && item<=122
            while key>(item-122).abs
                key = key - (item-90).abs 
            end
            item+key

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