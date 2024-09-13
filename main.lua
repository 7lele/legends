_G.love = require("love")


function love.load()
    X = 0
    Y = 0

    
    map = love.graphics.newImage("Assets/map.png")
    map:setFilter("nearest", "nearest")
    -- player 
    screenWidth = love.graphics.getWidth()
    screenHeight = love.graphics.getHeight()
    player = love.graphics.newImage("Assets/player.png")
    imageX = (screenWidth - 16) / 2
    imageY = (screenHeight - 16) / 2
    
end


function love.update()
    xrel = math.floor(X/48 * -1)
    yrel = math.floor(Y/48 * -1)
    if love.keyboard.isDown("w")== true then
        Y = Y + 3
    end
    if love.keyboard.isDown("s")== true then
        Y = Y - 3
    end
    if love.keyboard.isDown("a")== true then
        X = X + 3
    end
    if love.keyboard.isDown("d")== true then
        X = X - 3
    end
        
    if X > 390 then
        X = 390
    end 
end


function love.draw()
    
    love.graphics.draw(map, math.floor(X), math.floor(Y),0,3)
    love.graphics.draw(player, imageX, imageY)
    love.graphics.print(math.floor(X/48 * -1),screenWidth - 100, 9, 0, 1.2)
    love.graphics.print(math.floor(Y/48 * -1),screenWidth - 45, 9, 0, 1.2)
    love.graphics.print(X,screenWidth - 800, 9, 0, 1.2)
    love.graphics.print(Y,screenWidth - 765, 9, 0, 1.2)
end
