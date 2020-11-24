
require("projectiles")

require("mode")

require("cibles")

require("niveaux")

require("menu")

lancer1 = true
lancer2 = false
lancer3 = false

Score_niveau = 0
Score_total = 0


function loadGame()
  
  
  
end

function updateCible(dt)
  
  if Cible.mouv == false then
    Cible.x = 800
    Cible.y = 400
    Cible.mouv = true
  elseif Cible.mouv == true then
    Cible.x = Cible.x + Cible.vx * dt
    Cible.y = Cible.y + Cible.vy * dt
  end
  
  if Cible.x <= 700 then
    Cible.x = 700  
    Cible.vx = Cible.vx * - 1 
  
  elseif  Cible.x >= ecran.l - Cible.l then
    Cible.x = ecran.l - Cible.l
    Cible.vx = Cible.vx * - 1 
  
  elseif Cible.y <= 0 then
    Cible.y = 0 
    Cible.vy = Cible.vy * - 1 
  
  elseif Cible.y >= ecran.h - Cible.h then
    Cible.y = ecran.h - Cible.h
    Cible.vy = Cible.vy * - 1 
  end
   
 end
  
function updateArc(dt)
  
  Projectile.arc.x = ((ecran.l / 10) * 1 ) + Projectile.arc.l / 2
  Projectile.arc.y = ((ecran.h / 5) * 2) + Projectile.arc.h / 2
  lancer1 = true
  
  
  if love.keyboard.isDown("up") then
    Projectile.arc.angle = Projectile.arc.angle + 5 * dt
    Projectile.fleche1.angle = Projectile.fleche1.angle + 5 * dt
    print(Projectile.arc.angle)
    
  elseif love.keyboard.isDown("down") then
    Projectile.arc.angle = Projectile.arc.angle - 5 * dt
    Projectile.fleche1.angle = Projectile.fleche1.angle - 5 * dt
    print(Projectile.arc.angle)
  end  
      
  
end  
  
function updateFleche(dt)
  
  
  
  -- 1er lancement
  if lancer1 == true then
    if Projectile.fleche1.mouv == false then     
      Projectile.fleche1.x = Projectile.arc.x - 5
      Projectile.fleche1.y = (Projectile.arc.y + Projectile.arc.h / 2) - (Projectile.fleche1.h / 2)
      Projectile.fleche2.x = 100
      Projectile.fleche2.y = 100
      Projectile.fleche3.x = 200
      Projectile.fleche3.y = 100
      
    elseif Projectile.fleche1.mouv == true then
      Projectile.fleche1.x = Projectile.fleche1.x + Projectile.fleche1.vx * dt
      Projectile.fleche1.y = Projectile.fleche1.y + Projectile.fleche1.vy * dt
      if Projectile.fleche1.x >= ecran.l - Projectile.fleche1.l then
        Projectile.fleche1.x = ecran.l - Projectile.fleche1.l
        lancer1 = false
        lancer2 = true
          
      elseif Projectile.fleche1.x >= (Cible.x + Projectile.fleche1.l) then
        Projectile.fleche1.x = Cible.x + Projectile.fleche1.l
        if Projectile.fleche1.y >= Cible.y and Projectile.fleche1.y <= (Cible.y + Cible.h) then
          Projectile.fleche1.y = Cible.y and Projectile.fleche1.y <= (Cible.y + Cible.h)
          Projectile.fleche1.mouv = false
         
          lancer1 = false
          lancer2 = true
        end
      end
    end
  end

    
    -- 2ieme lancement
  if lancer2 == true then
    if Projectile.fleche2.mouv == false then 
      Projectile.fleche2.x = Projectile.arc.x - 5
      Projectile.fleche2.y = (Projectile.arc.y + Projectile.arc.h / 2) - (Projectile.fleche1.h / 2)
      Projectile.fleche3.x = 200
      Projectile.fleche3.y = 100
      
    elseif Projectile.fleche1.mouv == true then
      Projectile.fleche2.x = Projectile.fleche2.x + Projectile.fleche2.vx * dt
      Projectile.fleche2.y = Projectile.fleche2.y + Projectile.fleche2.vy * dt
      if Projectile.fleche2.x >= ecran.l + Projectile.fleche2.l then
        Projectile.fleche2.vx = 0
        Projectile.fleche2.vy = 0
        Projectile.fleche1.x = ecran.l + Projectile.fleche2.l
        lancer2 = false
        lancer3 = true
      end
    end
  end
  
    -- 3ieme lancement
  if lancer3 == true then
    if Projectile.fleche3.mouv == false then 
      Projectile.fleche3.x = Projectile.arc.x - 5
      Projectile.fleche3.y = (Projectile.arc.y + Projectile.arc.h / 2) - (Projectile.fleche1.h / 2)
      
    elseif Projectile.fleche3.mouv == true then
      Projectile.fleche3.x = Projectile.fleche3.x + Projectile.fleche3.vx * dt
      Projectile.fleche3.y = Projectile.fleche3.y + Projectile.fleche3.vy * dt
      if Projectile.fleche3.x >= ecran.l then
        Projectile.fleche3.vx = 0
        Projectile.fleche3.vy = 0
        Projectile.fleche3.x = ecran.l - Projectile.fleche3.l
        print(Projectile.fleche3.x)
        lancer3 = false
      end
    print("lancer1", lancer1)
    print("lancer2", lancer2)
    print("lancer3", lancer3)
    end
  
  end
  
end
  
function updateHache(dt)
    
  if Projectile.hache1.mouv == false then     
    Projectile.hache1.x = ((ecran.l / 10) * 1 ) 
    Projectile.hache1.y = ((ecran.h / 5) * 2)
            
  elseif Projectile.hache1.mouv == true then
    Projectile.hache1.x = Projectile.hache1.x + Projectile.hache1.vx * dt
    Projectile.hache1.y = Projectile.hache1.y + Projectile.hache1.vy * dt
    Projectile.hache1.angle = Projectile.hache1.angle + 500 * dt
    print(Projectile.hache1.angle)
  end
end


function updateGame(dt)
  
  if ecran_courant == "Game" then
       
            
    if arme_courant == "Arc" then
        updateCible(dt)
        updateArc(dt)
        updateFleche(dt)
      
      
    elseif arme_courant == "Hache" then
      updateCible(dt)
      updateHache(dt)
     
    elseif arme_courant == "Couteau" then
      updateCible(dt)
      updateCouteau(dt)
    end
  end
end


function drawGame()
  
  -- Dessin de la cible
  love.graphics.draw(Cible.image, Cible.x, Cible.y)
  
  -- Dessin des armes
  if arme_courant == "Arc" then
    love.graphics.draw(Projectile.arc.image, Projectile.arc.x, Projectile.arc.y, math.rad(Projectile.arc.angle))
    love.graphics.draw(Projectile.fleche1.image, Projectile.fleche1.x, Projectile.fleche1.y, math.rad(Projectile.fleche1.angle))
    love.graphics.draw(Projectile.fleche2.image, Projectile.fleche2.x, Projectile.fleche2.y, math.rad(Projectile.fleche2.angle))
    love.graphics.draw(Projectile.fleche3.image, Projectile.fleche3.x, Projectile.fleche3.y, math.rad(Projectile.fleche3.angle))
  elseif arme_courant == "Hache" then
    love.graphics.draw(Projectile.hache1.image, Projectile.hache1.x, Projectile.hache1.y,  math.rad(Projectile.hache1.angle))
  elseif arme_courant == "Couteau" then
    love.graphics.draw(Projectile.couteau1.image, Projectile.couteau1.x, Projectile.couteau1.y, math.rad(Projectile.couteau.angle))
  end      
  
  
end

function keypressedGame(key)
  
  if arme_courant == "Arc" then
    if lancer1 == true then
      if key == ("kpenter") then
        print(key)
        Projectile.fleche1.mouv = true
      end
    end
    if lancer2 == true then
      if key == ("kpenter") then
        print(key)
        Projectile.fleche2.mouv = true
      end
    end
    if lancer3 == true then
      if key == ("kpenter") then
        print(key)
        Projectile.fleche3.mouv = true
      end
    end
  end
  
  if arme_courant == "Hache" then
    if key == ( "kpenter") then
      print(key)
      Projectile.hache1.mouv = true
    end
  end
  
  
end