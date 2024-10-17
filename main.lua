Object = require "classic"

ballSound = love.audio.newSource("hit.ogg","stream")
scoreSound = love.audio.newSource("explosion.ogg", "stream")

require "entity"

require "player"

require "ball"

require "Player2"

gameState = "menu"

function love.load()
    
    love.window.setTitle("Pong Game")
    
    love.window.setMode(800, 600)
    
    myfont = love.graphics.newFont(24)
    
    love.graphics.setFont(myfont)
    
    p = Player(50,250,20,90,500)
    
    p2 = Player2(750,250,20,90,500)
    
    b = Ball(nil,nil,20,20,100)

    scoreP1 = 0
    
    scoreP2 = 0

end

function love.update(dt)

    startGame()
	
    if gameState == "game" then

        p:update(dt)
    
        p2:update(dt)
    
        b:update(dt)

        if b.x < 0 then
        
            scoreP2 = scoreP2 + 1
            love.audio.play(scoreSound)
        
            b.x = love.graphics.getWidth() / 2
        
            b.y = love.graphics.getHeight() / 2
        
            b.xSpeed = 300
        
            b.ySpeed = 250
        end

        if b.x + b.width > b.screen_width then
        
            scoreP1 = scoreP1 + 1
            love.audio.play(scoreSound)
        
            b.x = love.graphics.getWidth() / 2
        
            b.y = love.graphics.getHeight() / 2
        
            b.xSpeed = 300
        
            b.ySpeed = 250
        end
    end

    if gameState == "win" then
    end
end

function love.draw()
    if gameState == "menu" then
        love.graphics.print("PONG GAME", 310, 200)
    end

    if gameState == "game" then

        p:draw()
    
        p2:draw()
    
        b:draw()
    end

    if gameState == "win" and scoreP1 == 5 then
        love.graphics.print("Player 1 win",250,250)
    end

    if gameState == "win" and scoreP2 == 5 then
        love.graphics.print("Player 2 win", 250,250)            
    end


    if gameState == "game" and scoreP1 == 5 or scoreP2 == 5 then
        if scoreP1 == 5 then
            gameState = "win"
        end
        if scoreP2 == 5 then
            gameState = "win"
        end
    end
end

function startGame()
    if love.keyboard.isDown("space") and gameState == "menu" then
        gameState = "game"
    end
end