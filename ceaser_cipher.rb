def ceaser_cipher message = "", shift = 0
  if !message.empty? then
      bytes_array = Array.new()

      message.each_byte do |c|
        shifted = c + shift
        if (shifted > 90 && shifted < 97) || shifted > 122 then
          shifted -= 26
        elsif shifted < 65 || (shifted < 97 && shifted > 90) then
          shifted += 26
        end
        puts "shift by: #{shift} | regular: #{c} | shifted: #{shifted}"
        bytes_array.push(shifted)
      end

      bytes_array.pack('c*')
  end
end


puts ceaser_cipher "aA", 1
