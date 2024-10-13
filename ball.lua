Ball = Entity:extend()



function Ball:new(x,y,width,height,speed)
	
	Ball.super.new(self,x,y,width,height,speed)
	
	self.x = love.graphics.getWidth() / 2
	
	self.y = love.graphics.getHeight() / 2
	
	self.xSpeed = 250
	
	self.ySpeed = 250
end

function Ball:update(dt)
	
	b.x = b.x - b.xSpeed * dt
	
	b.y = b.y - b.ySpeed * dt

	local hit_position 


	
	if p.x + p.width > b.x and b.y < p.y + p.height and b.y + b.height > p.y then
		b.xSpeed = -b.xSpeed
	end

	if b.x + b.width > p2.x  and p2.x < b.x + b.width then
		b.xSpeed = -b.xSpeed
	end

	if b.y < 0 then
		hit_position= (b.y + b.height / 2) - (p.y + p.height)
		b.ySpeed = -b.ySpeed
	end

	if b.y + b.height > self.screen_height then
		hit_position = (b.y + b.height / 2) - (p.y + p.height)
		
		b.ySpeed = -b.ySpeed
	end

	
	

end


function Ball:draw()
	Ball.super.draw(self)
end