class Application

  def call(env)
    resp = Rack::Response.new
    if Time.new.hour > 12
      resp.write "Good afternoon!"
    else
      resp.write "Good morning!"
    end
      resp.finish
  end
end
