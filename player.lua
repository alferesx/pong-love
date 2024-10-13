
Player = Entity:extend()

function Player:new(x,y,width,height,speed)

	Player.super.new(self,x,y,width,height,speed)

end

function Player:update(dt)
	
		if self.y > 0 then
			if love.keyboard.isDown("up") then
				self.y = self.y - self.speed * dt
			end
		end
		if self.y + self.height < self.screen_height then
			if love.keyboard.isDown("down") then
				self.y = self.y + self.speed * dt
			end
		end

	

end

function Player:draw()

	Player.super.draw(self)

end

