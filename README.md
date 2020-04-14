# twirp-ruby

https://github.com/twitchtv/twirp-ruby

## Server

### Start server

```sh
ruby start_server.rb
```

## Client

### Twirp

```sh
ruby client_example.rb
```

### HTTP

```sh
curl --request POST --url http://localhost:3000/twirp/example.HelloWorld/Hello --header 'Content-Type: application/json' --data '{"name": "World"}'
```