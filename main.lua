_G.love = require("love")


function love.load()
    X = 0
    Y = 0

    
    map = love.graphics.newImage("Assets/map.png")

    -- player 
    screenWidth = love.graphics.getWidth()
    screenHeight = love.graphics.getHeight()
    player = love.graphics.newImage("Assets/player.png")
    imageX = (screenWidth - 16) / 2
    imageY = (screenHeight - 16) / 2

end


function love.update()
    if love.keyboard.isDown("w")== true then
        Y = Y + 16
    end
    if love.keyboard.isDown("s")== true then
        Y = Y - 16
    end
    if love.keyboard.isDown("a")== true then
        X = X + 16
    end
    if love.keyboard.isDown("d")== true then
        X = X - 16
    end
        
end


function love.draw()

    love.graphics.draw(map, X/16, Y/16)
    love.graphics.draw(player, imageX, imageY)
    love.graphics.print(X,screenWidth - 100, 9, 0, 1.2)
    love.graphics.print(Y,screenWidth - 45, 9, 0, 1.2)
end