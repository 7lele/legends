_G.love = require("love")


function love.load()
    map = love.graphics.newImage("Assets/map.png")

    --player 
    screenWidth = love.graphics.getWidth()
    screenHeight = love.graphics.getHeight()
    player = love.graphics.newImage("Assets/player.png")
    imageX = (screenWidth - 16) / 2
    imageY = (screenHeight - 16) / 2

end


function love.update()
    
end


function love.draw()
    love.graphics.draw(map, 0, 0)
    love.graphics.draw(player, imageX, imageY)
end