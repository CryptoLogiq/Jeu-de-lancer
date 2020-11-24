



require("mode")
require("projectiles")

Menu = {}
Menu.image = love.graphics.newImage("image/menu/menu.jpg")



pointeur = {}
pointeur.image = love.graphics.newImage("image/menu/mouse_pointer.png")
pointeur.l = pointeur.image:getWidth()
pointeur.h = pointeur.image:getHeight()
pointeur.x = nil
pointeur.y = nil

slot = {}
slot.image = love.graphics.newImage("image/menu/slot.png")
slot.l = slot.image:getWidth()
slot.h = slot.image:getHeight()

slot.arc = {}
slot.arc.x = nil
slot.arc.y = nil


slot.hache = {}
slot.hache.x = nil
slot.hache.y = nil

slot.couteau = {}
slot.couteau.x = nil
slot.couteau.y = nil

slot.resultat = {}
slot.resultat.x = nil
slot.resultat.y = nil

slot.menu_OK = {}
slot.menu_OK.x = nil
slot.menu_OK.y = nil

selection_arme = false
selection_mode = false
menu_OK = false


function updateMenu(dt)
  
  
  
  pointeur.x = love.mouse.getX()
  pointeur.y = love.mouse.getY()
  
  
  
  
  
  -- Slot de l'arc
  slot.arc.x = (ecran.l / 4) - (slot.l / 2)
  slot.arc.y = ((ecran.h / 5) * 2) - (slot.h / 2)
  -- Slot de la hache 
  slot.hache.x = ((ecran.l / 4) * 2) - (slot.l / 2)
  slot.hache.y = ((ecran.h / 5) * 2) - (slot.h / 2)
  -- Slot du couteau
  slot.couteau.x = ((ecran.l / 4) * 3) - (slot.l / 2)
  slot.couteau.y = ((ecran.h / 5) * 2) - (slot.h / 2)
  -- Slot du choix d'arme
  slot.resultat.x = ((ecran.l / 4) * 3) - (slot.l / 2)
  slot.resultat.y = ((ecran.h / 5) * 4) - (slot.h / 2)
  
  -- Placement des armes dans les slots
  
  if ecran_courant == "Menu" then
    
    Projectile.arc.x =  (slot.arc.x + slot.l / 2) - (Projectile.arc.l / 2)
    Projectile.arc.y =  (slot.arc.y + slot.h / 2) - (Projectile.arc.h / 2)
    Projectile.hache1.x =  (slot.hache.x + slot.l / 2) - (Projectile.hache1.l / 2)
    Projectile.hache1.y = (slot.hache.y + slot.h / 2) - (Projectile.hache1.h / 2)
    Projectile.couteau1.x = (slot.couteau.x + slot.l / 2) - (Projectile.couteau1.l / 2)
    Projectile.couteau1.y = (slot.couteau.y + slot.h / 2) - (Projectile.couteau1.h / 2)
    
    if arme_courant == "Arc" then
      Projectile.arc.x =  (slot.resultat.x + slot.l / 2) - (Projectile.arc.l / 2)
      Projectile.arc.y =  (slot.resultat.y +slot.h / 2) - (Projectile.arc.h / 2)
    elseif arme_courant == "Hache" then
      Projectile.hache1.x =  (slot.resultat.x + slot.l / 2) - (Projectile.hache1.l / 2)
      Projectile.hache1.y = (slot.resultat.y + slot.h / 2) - (Projectile.hache1.h / 2)
    elseif arme_courant == "Couteau" then
      Projectile.couteau1.x = (slot.resultat.x + slot.l / 2) -  (Projectile.couteau1.l / 2)
      Projectile.couteau1.y = (slot.resultat.y + slot.h / 2) - (Projectile.couteau1.h / 2)
    end  
  
  end 
  
  
  
    -- Placement mode facile
    mode.facile.x = (ecran.l / 4) - (mode.facile.l / 2) 
    mode.facile.y = (ecran.h / 5) - (mode.facile.h / 2) 
  
  -- Placement mode moyen
    mode.moyen.x = ((ecran.l / 4) * 2) - (mode.moyen.l / 2) 
    mode.moyen.y = (ecran.h / 5) - (mode.moyen.h / 2)
  
  -- Placement mode hardgore
  mode.hardgore.x = ((ecran.l / 4) * 3) - (mode.hardgore.l / 2)
  mode.hardgore.y = (ecran.h / 5) - (mode.hardgore.h / 2)  
  
  if mode_courant == "Selection" then
    mode.selection.x = ((ecran.l / 4) * 1) - (mode.facile.l / 2)
    mode.selection.y = ((ecran.h / 5) * 4) - (mode.facile.h / 2)
    
    
  elseif mode_courant == "Facile" then
    mode.facile.x = ((ecran.l / 4) * 1) - (mode.facile.l / 2)
    mode.facile.y = ((ecran.h / 5) * 4) - (mode.facile.h / 2)
    
  elseif mode_courant == "Moyen" then
    mode.moyen.x = ((ecran.l / 4) * 1) - (mode.moyen.l / 2)
    mode.moyen.y = ((ecran.h / 5) * 4) - (mode.moyen.h / 2)

  elseif mode_courant == "Hardgore" then
    mode.hardgore.x = ((ecran.l / 4) * 1) - (mode.hardgore.l / 2)
    mode.hardgore.y = ((ecran.h / 5) * 4) - (mode.hardgore.h / 2)
  
  end  
  
  if selection_arme == true and selection_mode == true then
    slot.menu_OK.x = ((ecran.l / 4) * 2) - (slot.l / 2)
    slot.menu_OK.y = ((ecran.h / 5) * 4) - (slot.h / 2)
    menu_OK = true
  end
  
  
end

function drawMenu()

  love.graphics.draw(pointeur.image, pointeur.x, pointeur.y)
  
  love.graphics.draw(Menu.image, 0, 0)
 
  
  if ecran_courant == "Menu" then
    love.graphics.draw(slot.image, slot.resultat.x, slot.resultat.y)
    love.graphics.draw(slot.image, slot.arc.x, slot.arc.y)
    love.graphics.draw(slot.image, slot.hache.x, slot.hache.y)
    love.graphics.draw(slot.image, slot.couteau.x, slot.couteau.y)
  
    love.graphics.draw(Projectile.couteau1.image, Projectile.couteau1.x, Projectile.couteau1.y, math.rad(Projectile.couteau1.angle))
    
    love.graphics.draw(Projectile.hache1.image, Projectile.hache1.x, Projectile.hache1.y,  math.rad(Projectile.hache1.angle))
    
    love.graphics.draw(Projectile.arc.image, Projectile.arc.x, Projectile.arc.y, math.rad(Projectile.arc.angle))
    
    love.graphics.draw(Projectile.fleche1.image, Projectile.fleche1.x, Projectile.fleche1.y, math.rad(Projectile.fleche1.angle))
  
  end
  
  if menu_OK == true then
    love.graphics.draw(slot.image, slot.menu_OK.x, slot.menu_OK.y)
  end  
  love.graphics.draw(mode.selection.image, mode.selection.x, mode.selection.y)
  love.graphics.draw(mode.facile.image, mode.facile.x, mode.facile.y)
  love.graphics.draw(mode.moyen.image, mode.moyen.x, mode.moyen.y)
  love.graphics.draw(mode.hardgore.image, mode.hardgore.x, mode.hardgore.y)
    
end

 function mousepressedMenu(x, y, n)
  
    -- Choix du mode
  if ecran_courant == "Menu" then

    if pointeur.x >= mode.facile.x and pointeur.x <= (mode.facile.x + mode.facile.l) then
      if pointeur.y >= mode.facile.y and pointeur.y <= (mode.facile.y + mode.facile.h) then
        if love.mouse.isDown(1) then
          mode_courant = "Facile"
          selection_mode = true
          print(mode.facile.x,mode.facile.l, mode.facile.y, mode.facile.h)
        end
      end
    elseif pointeur.x >= mode.moyen.x and pointeur.x <= (mode.moyen.x + mode.moyen.l) then
      if pointeur.y >= mode.moyen.y and pointeur.y <= (mode.moyen.y + mode.moyen.h) then
        if love.mouse.isDown(1) then
          mode_courant = "Moyen"
          selection_mode = true
        end
      end
    elseif pointeur.x >= mode.hardgore.x and pointeur.x <= (mode.hardgore.x + mode.hardgore.l) then
      if pointeur.y >= mode.hardgore.y and pointeur.y <= (mode.hardgore.y + mode.hardgore.h) then
        if love.mouse.isDown(1) then
          mode_courant = "Hardgore"
          selection_mode = true
        end
      end
    end
    print(mode_courant)
  end
    
    
    -- Choix de l'arme
    
  if ecran_courant == "Menu" then
    -- Clique sur l'arme
    if pointeur.x >= slot.arc.x and pointeur.x <= (slot.arc.x + slot.l) then
      if pointeur.y >= slot.arc.y and pointeur.y <= (slot.arc.y + slot.h) then
        if love.mouse.isDown(1) then
          arme_courant = "Arc"
          selection_arme = true
        end
      end
    elseif pointeur.x >= slot.hache.x and pointeur.x <= (slot.hache.x + slot.l) then
      if pointeur.y >= slot.hache.y and pointeur.y <= (slot.hache.y + slot.h) then
        if love.mouse.isDown(1) then
          arme_courant = "Hache"
          selection_arme = true
        end
      end
    elseif pointeur.x >= slot.couteau.x and pointeur.x <= (slot.couteau.x + slot.l) then
      if pointeur.y >= slot.couteau.y and pointeur.y <= (slot.couteau.y + slot.h) then
        if love.mouse.isDown(1) then
          arme_courant = "Couteau"
          selection_arme = true
        end
      end
    end
    print(arme_courant)
  end  
  
  if menu_OK == true then
    if pointeur.x >= slot.menu_OK.x and pointeur.x <= (slot.menu_OK.x + slot.l) then
      if pointeur.y >= slot.menu_OK.y and pointeur.y <= (slot.menu_OK.y + slot.h) then
        if love.mouse.isDown(1) then
          ecran_courant = "Game"
        end
      end
    end
  end
end