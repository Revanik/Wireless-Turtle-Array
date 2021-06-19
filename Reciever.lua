while true do
    id, command = rednet.receive()
    --if id == Turtle_id then
    if command == "mine" then mine()
    elseif command == "" then
    elseif command == "" then
    end
end

--id and command are both stored for orginization sake since the id isn't technically needed