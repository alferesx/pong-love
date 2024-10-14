
Player2 = Entity:extend()

function Player2:new(x,y,width,height,speed)

	Player2.super.new(self,x,y,width,height,speed)
	self.keyUp = "up"
	self.keyDown = "down"

end

function Player2:update(dt)
	
		if self.y > 0 then
			if love.keyboard.isDown(self.keyUp) then
				self.y = self.y - self.speed * dt
			end
		end
		if self.y + self.height < self.screen_height then
			if love.keyboard.isDown(self.keyDown) then
				self.y = self.y + self.speed * dt
			end
		end

	

end

function Player2:draw()

	Player2.super.draw(self)

end

