require './hello_world/service_twirp.rb'

client = Example::HelloWorldClient.new("http://localhost:3000/twirp")
resp = client.hello(name: "World")
if resp.error
  puts resp.error # <Twirp::Error code:... msg:"..." meta:{...}>
else
  puts resp.data  # <Example::HelloResponse: message:"Hello World">
end
