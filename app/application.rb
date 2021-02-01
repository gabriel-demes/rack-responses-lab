class Application
    
    def call(env)
        resp = Rack::Response.new

        time = Time.now.hour.to_i

        if time < 12
            resp.write "Good Morning!" 
        else 
            resp.write "Good Afternoon!";
        end
        #resp.write "Good Afternoon!" if time >= 12;
        resp.finish
    end
end

