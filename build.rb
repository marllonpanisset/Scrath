require 'webrick'
include WEBrick


system('sass --watch scss:build &')

port = 8000

puts "Scrath Development Web Server"
puts "Starting server: http://localhost:#{port}"
puts "---------------------------------------"

server = HTTPServer.new(:Port=>8000,:DocumentRoot=>'build')
trap("INT"){ server.shutdown }
server.start
