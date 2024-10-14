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


end

function love.update(dt)
	
	p:update(dt)
	
	p2:update(dt)
	
	b:update(dt)  
end

function love.draw()
    
    p:draw()
    
    p2:draw()
    
    b:draw()

end