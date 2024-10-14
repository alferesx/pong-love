Object = require "classic"

require "entity"

require "player"

require "ball"

require "Player2"


function love.load()
    
    myfont = love.graphics.newFont(24)
    
    love.graphics.setFont(myfont)
    
    p = Player(50,250,20,90,500)
    
    p2 = Player2(750,250,20,90,500)
    
    b = Ball(nil,nil,20,20,100)

    scoreP1 = 0
    
    scoreP2 = 0


end

function love.update(dt)
	
	p:update(dt)
	
	p2:update(dt)
	
	b:update(dt)

    if b.x < 0 then
        
        scoreP2 = scoreP2 + 1
        
        b.x = love.graphics.getWidth() / 2
        
        b.y = love.graphics.getHeight() / 2
        
        b.xSpeed = 300
        
        b.ySpeed = 250
    end

    if b.x + b.width > b.screen_width then
        
        scoreP1 = scoreP1 + 1
        
        b.x = love.graphics.getWidth() / 2
        
        b.y = love.graphics.getHeight() / 2
        
        b.xSpeed = 300
        
        b.ySpeed = 250
    end

end

function love.draw()
    
    p:draw()
    
    p2:draw()
    
    b:draw()

end

--[[function scoreSystem()
    if b.x < 0 then
        
        b.scoreP2 = b.scoreP2 + 1
        
        b.x = love.graphics.getWidth() / 2
        
        b.y = love.graphics.getHeight() / 2
        
        b.xSpeed = 300
        
        b.ySpeed = 250
    end

    if b.x + b.width > b.screen_width then
        
        b.scoreP1 = b.scoreP1 + 1
        
        b.x = love.graphics.getWidth() / 2
        
        b.y = love.graphics.getHeight() / 2
        
        b.xSpeed = 300
        
        b.ySpeed = 250
    end
end]]--