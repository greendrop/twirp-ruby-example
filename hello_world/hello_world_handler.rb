class HelloWorldHandler
  def hello(req, env)
    if req.name.empty?
      return Twirp::Error.invalid_argument("name is mandatory")
    end
    {message: "Hello #{req.name}"}
  end
end
