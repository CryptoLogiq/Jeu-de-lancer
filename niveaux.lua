


Niveau = {}
  -- Image de fond
Niveau_1 = love.graphics.newImage("image/backgrounds/background_0.png")
Niveau_2 = love.graphics.newImage("image/backgrounds/background_1.png")
Niveau_3 = love.graphics.newImage("image/backgrounds/background_2.png")
Niveau_4 = love.graphics.newImage("image/backgrounds/background_3.png")
Niveau_5 = love.graphics.newImage("image/backgrounds/background_4.png")
Niveau_6 = love.graphics.newImage("image/backgrounds/background_5.jpg")
Niveau_7 = love.graphics.newImage("image/backgrounds/background_6.png")
Niveau_8 = love.graphics.newImage("image/backgrounds/background_7.png")
Niveau_9 = love.graphics.newImage("image/backgrounds/background_8.png")
Niveau_10 = love.graphics.newImage("image/backgrounds/background_9.jpg")

niveau_current = "Niveau_1"

function updateNiveau()
  
  
  
end

function drawNiveau()
  
  if niveau_current == "Niveau_1" then
    love.graphics.draw(Niveau_1, 0, 0)
  elseif niveau_current == "Niveau_2" then
    love.graphics.draw(Niveau_2, 0, 0)
  elseif niveau_current == "Niveau_3" then
    love.graphics.draw(Niveau_3, 0, 0)
  elseif niveau_current == "Niveau_4" then
    love.graphics.draw(Niveau_4, 0, 0)
  elseif niveau_current == "Niveau_5" then
    love.graphics.draw(Niveau_5, 0, 0)
  elseif niveau_current == "Niveau_6" then
    love.graphics.draw(Niveau_6, 0, 0)
  elseif niveau_current == "Niveau_7" then
    love.graphics.draw(Niveau_7, 0, 0)
  elseif niveau_current == "Niveau_8" then
    love.graphics.draw(Niveau_8, 0, 0)
  elseif niveau_current == "Niveau_9" then
    love.graphics.draw(Niveau_9, 0, 0)
  elseif niveau_current == "Niveau_10" then
    love.graphics.draw(Niveau_10, 0, 0)
    
  end
  
end

function keypressedNiveau(key)

if niveau_current == "Niveau_1" then 
    if key == "space" then
      niveau_current = "Niveau_2"
    end
  
  elseif niveau_current == "Niveau_2" then
    if key == "space" then
      niveau_current = "Niveau_3"
    end
    
  elseif niveau_current == "Niveau_3" then
    if key == "space" then
      niveau_current = "Niveau_4"
    end
    
  elseif niveau_current == "Niveau_4" then
    if key == "space" then
      niveau_current = "Niveau_5"
    end
    
  elseif niveau_current == "Niveau_5" then
    if key == "space" then
      niveau_current = "Niveau_6"
    end
    
  elseif niveau_current == "Niveau_6" then
    if key == "space" then
      niveau_current = "Niveau_7"
    end
  
  elseif niveau_current == "Niveau_7" then
    if key == "space" then
      niveau_current = "Niveau_8"
    end
    
  elseif niveau_current == "Niveau_8" then
    if key == "space" then
      niveau_current = "Niveau_9"
    end
    
  elseif niveau_current == "Niveau_9" then
    if key == "space" then
      niveau_current = "Niveau_10"
    end
    
  elseif niveau_current == "Niveau_10" then
    if key == "space" then
      ecran_courant = "Fin"
    end
  
  end

end