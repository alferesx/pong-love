Entity = Object:extend()


function Entity:new(x,y,width,height,speed)
	
	self.x = x
	
	self.y = y
	
	self.width = width
	
	self.height = height
	
	self.speed = speed
	
	self.screen_height = love.graphics.getHeight()
	
	self.screen_width = love.graphics.getWidth()
	

	
end

function Entity:update(dt)
	
end

function Entity:draw()
	
	love.graphics.rectangle("fill", self.x, self.y, self.width, self.height)
	
	love.graphics.print(scoreP1,100,100)

	love.graphics.print(scoreP2,600,100)

end

