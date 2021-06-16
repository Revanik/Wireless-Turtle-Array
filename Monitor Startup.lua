peripheral.wrap(top)
Peripheral = peripheral.isPresent()
Start_X, Start_Y = window.getPosition()




if Peripheral == true then
    monitor.setCursorPos(Start_X, Start_Y)
    monitor.setCursorBlink(true)

    print(peripheral.getType())

end