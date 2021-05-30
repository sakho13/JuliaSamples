using Genie
using Genie.Router
using Genie.Renderer.Json,Genie.Requests
using HTTP

Genie.config.run_as_server = true

route("/") do 
    (:message => "Hi there!") |> json
end

route("/echo", method=POST) do 
    message = jsonpayload()
    (:echo => (message["message"] * " ")^message["repeat"]) |> json
end

route("/send") do 
    response = HTTP.request("POST", "http://localhost:800/echo", [])
end

Genie.startup()