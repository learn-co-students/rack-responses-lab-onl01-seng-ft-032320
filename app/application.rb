require 'rack'

class Application
    def call (env)
        resp = Rack::Response.new
        time = Time.now

        if time.hour < 12 
            [200, { 'Content-Type' => 'text/html' }, ['<em>Good Morning</em>']]
        else
            [200, { 'Content-Type' => 'text/html' }, ['<em>Good Afternoon</em>']]
        end 
    end

end