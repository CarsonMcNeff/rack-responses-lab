class Application
    def call(env)
        resp = Rack::Response.new
        time = Time.now
        time.hour < 12 ? resp.write("Good Morning!") : resp.write("Good Afternoon!")
        puts time.hour
        resp.finish
    end
end