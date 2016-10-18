def ceaser_cipher message = "", shift = 0
    if !message.empty? then
        bytes_array = Array.new()

        message.each_byte do |c|
            bytes_array.push(c)
        end

        bytes_array
    end
end

puts ceaser_cipher "abc"
