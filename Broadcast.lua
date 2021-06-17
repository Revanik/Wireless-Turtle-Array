local ID = io.read("Enter Turtle ID")
local command = io.read("Enter name of commmand")

rednet.send(ID, command)
