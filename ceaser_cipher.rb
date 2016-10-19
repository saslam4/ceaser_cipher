require 'sinatra'

set :port, 8080

def ceaser_cipher message = "", shift = 0
  if !message.empty? then
      bytes_array = Array.new()

      message.each_byte do |c|
      	if (c > 64 && c < 91) || (c > 96 && c < 123) then

	        shifted = c + shift
	        if (shifted > 90 && shifted < 97) || shifted > 122 then
	          shifted -= 26
	        elsif shifted < 65 || (shifted < 97 && shifted > 90) then
	          shifted += 26
	        end
	        bytes_array.push(shifted)
	      else
	      	bytes_array.push(c)
	      end

      end

      bytes_array.pack('c*')
  end
end

get '/' do
	@message = params['message']
	@shift = params[:shift].to_i

	if !@message.nil? then
		@encodedMessage = ceaser_cipher @message, @shift
	end

	erb :index
end