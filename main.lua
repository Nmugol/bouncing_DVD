function love.load()

    x = love.graphics.getWidth()/2
    y = love.graphics.getHeight()/2
    
    wight = 200
    hight = 88

    r = love.math.random(0,255)/255
    g = love.math.random(0,255)/255
    b = love.math.random(0,255)/255

    speed = 200

    speed_x = speed
    speed_y = speed

    image = love.graphics.newImage("dvd.png")
end

function love.update(dt)
    x = x + speed_x * dt
    y = y + speed_y * dt

    if x + wight/2 > love.graphics.getWidth()-1 or x < 1+wight/2 then
        speed_x = -speed_x
        r = love.math.random(0,255)/255
        g = love.math.random(0,255)/255
        b = love.math.random(0,255)/255
    end

    if y + hight/2 > love.graphics.getHeight()-1 or y < 1+hight/2 then
        speed_y = -speed_y
        r = love.math.random(0,255)/255
        g = love.math.random(0,255)/255
        b = love.math.random(0,255)/255
    end
end

function love.draw()
    love.graphics.setColor(r,g,b)
    love.graphics.rectangle("fill", x-wight/2, y-hight/2 , wight, hight)
    love.graphics.draw(image, x-wight/2, y-hight/2)
end