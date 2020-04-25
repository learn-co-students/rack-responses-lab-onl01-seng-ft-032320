class Application
    def call(env)
        return [200, {'Content-Type' => 'text/html'}, time_now]
    end

    def time_now
        (Time.now.hour < 12)? ["<em>Good Morning!</em>"] :
        ["<strong>Good Afternoon!</strong>"]
    end
end