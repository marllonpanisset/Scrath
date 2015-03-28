require 'webrick'
require 'yaml'

ScrathSetting = YAML.load_file('config.yaml')

include WEBrick

loadFolder = ScrathSetting["settings"]["folder"]
loadPort = ScrathSetting["settings"]["serverPort"]

system('sass --watch scss:'+loadFolder+' &')

port = loadPort

puts "Scrath Development Web Server"
puts "Starting server: http://localhost:#{port}"
puts "---------------------------------------"

server = HTTPServer.new(:Port=>port,:DocumentRoot=>loadFolder)
trap("INT"){ server.shutdown }
server.start
