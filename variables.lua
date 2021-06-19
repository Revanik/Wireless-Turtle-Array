Turtle_1_ID =
Turtle_2_ID =
Turtle_3_ID =
Turtle_4_ID =
Turtle_5_ID =
Turtle_6_ID =
Turtle_7_ID =
Turtle_8_ID =
Turtle_9_ID =
Turtle_10_ID =
Turtle_11_ID =
Turtle_12_ID =

--Add as many as turtles you have
--

function Mine_16()
    for Blocks_Forward=16,1,-1 do 
        turtle.dig()
        turtle.forward()
        turtle.digDown()
        turtle.digUp()        
    end
end
function Turn_Right()
    turtle.turnRight()
    turtle.dig()
    turtle.forward()
    turtle.digDown()
    turtle.digUp()
    turtle.dig()
    turtle.forward()
    turtle.digDown()
    turtle.digUp()
    turtle.dig()
    turtle.forward()
    turtle.digDown()
    turtle.digUp()
    turtle.turnRight()
end
function Turn_Left()
    turtle.turnLeft()
    turtle.dig()
    turtle.forward()
    turtle.digDown()
    turtle.digUp()
    turtle.dig()
    turtle.forward()
    turtle.digDown()
    turtle.digUp()
    turtle.dig()
    turtle.forward()
    turtle.digDown()
    turtle.digUp()
    turtle.turnLeft()
end
function Chest_Dump()
    while turtle.getItemCount(16) > 0 do
        print("Dumping Inv")
        turtle.turnRight()
        turtle.dig()
        turtle.forward()
        turtle.digDown()
        turtle.select(3)
        turtle.placeDown()
        while slots <= 16 do
               turtle.select(slots)
               turtle.dropDown()
               slots = slots + 1
        end
        if slots == 17 then
            turtle.back()
            turtle.turnLeft()
            slots = 4
            break
        end
    break
    end
end

function mine()
    Blocks_Forward = 16
    Blocks_Right = 3
    rounds = 6
    slots = 4
 
    turtle.up()
    running = true
    while rounds > 0 do
        if turtle.getFuelLevel() == 0 then
            print("Please Refuel")
            break
        end
        if turtle.getFuelLevel() > 0 then
            print("Mining...")
            Chest_Dump()
            Mine_16()
            Turn_Right()
            Mine_16()
            Turn_Left()
            rounds = rounds - 1
        end
    end
    turtle.back()
    turtle.turnLeft()
    turtle.turnLeft()
    turtle.dig()
    turtle.forward()
    turtle.digUp()
    turtle.digDown()
    turtle.turnRight()
    Mine_16()
    Mine_16()
    turtle.dig()
    turtle.forward()
    turtle.digUp()
    turtle.digDown()
    turtle.dig()
    turtle.forward()
    turtle.digUp()
    turtle.digDown()
    turtle.dig()
    turtle.forward()
    turtle.digUp()
    turtle.digDown()
    turtle.forward()
    turtle.turnRight()
    Blocks_Forward = 16
    for Blocks_Forward=16,1,-1 do
        turtle.forward()
    end
    turtle.down()
end