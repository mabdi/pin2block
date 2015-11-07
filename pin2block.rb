def pin2block pin,pan
	(("#{0}#{pin.size}#{pin}#{ 'F'*(14-pin.size) }".to_i(16)) ^ ("0000#{pan[3..-2]}".to_i(16))).to_s 16
end

abort("usage: pin2block pin pan ") if ARGV.size!=2

puts pin2block ARGV[0],ARGV[1]