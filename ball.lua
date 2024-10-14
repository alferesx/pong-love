Ball = Entity:extend()
function Ball:new(x,y,width,height,speed)
	
	Ball.super.new(self,x,y,width,height,speed)
	
	self.x = love.graphics.getWidth() / 2
	
	self.y = love.graphics.getHeight() / 2
	
	self.xSpeed = 300
	
	self.ySpeed = 250
end

function Ball:update(dt)
	
	b.x = b.x - b.xSpeed * dt
	
	b.y = b.y - b.ySpeed * dt

	local hit_position 
	
if b.x + b.width > p.x and b.x < p.x + p.width and 
   b.y + b.height > p.y and b.y < p.y + p.height then
    -- Ball hits the first paddle
    b.xSpeed = -b.xSpeed  -- Reverse horizontal direction

    -- Optional: Adjust vertical speed based on where it hits the paddle
    local hitPos = (b.y + b.height / 2) - (p.y + p.height / 2)
    b.ySpeed = hitPos * 10  -- Adjust this factor as needed
end
	
if b.x + b.width > p2.x and b.x < p2.x + p2.width and 
   b.y + b.height > p2.y and b.y < p2.y + p2.height then
    -- Ball hits the second paddle
    b.xSpeed = -b.xSpeed  -- Reverse horizontal direction

    -- Optional: Adjust vertical speed based on where it hits the paddle
    local hitPos = (b.y + b.height / 2) - (p2.y + p2.height / 2)
    b.ySpeed = hitPos * 10  -- Adjust this factor as needed
end

	if b.y < 0 or b.y + b.height > self.screen_height then
		b.ySpeed = -b.ySpeed
	end

	

end

function Ball:draw()
	Ball.super.draw(self)
end




--[[

When you use both conditions together:

Colliding Side (>): Confirms that the ball is moving towards the paddle.
Receiving Side (<): Ensures that the ball hasn’t completely moved past the paddle yet.
The colliding side will cause the impact.
The receiving side will receive the impact.
3. Collision Detection Logic
Using both > and < effectively creates a comprehensive check for overlap:

If both conditions are true, it confirms a collision has occurred, indicating that the ball is interacting with the paddle.
Summary
So yes, you can think of the > side as representing the edge that will collide (the part that is moving toward the other object), 
and the < side as the edge that will receive the detection (the part that defines the boundary of the object being collided with). 
This duality is essential for accurate collision detection!]]--