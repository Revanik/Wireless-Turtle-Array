Turtle_id = 4

while true do
    id, command = rednet.receive()
    if id == Turtle_id then
        command()
    end
end

