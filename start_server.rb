require './hello_world/service_twirp.rb'
require './hello_world/hello_world_handler.rb'
require 'rack'
require 'webrick'

handler = HelloWorldHandler.new()
service = Example::HelloWorldService.new(handler)

path_prefix = "/twirp/" + service.full_name
server = WEBrick::HTTPServer.new(Port: 3000)
server.mount path_prefix, Rack::Handler::WEBrick, service
server.start
