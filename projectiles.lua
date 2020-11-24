



Projectile = {}
Projectile.mouv = false
  -- Arc
Projectile.arc = {}
Projectile.arc.image = love.graphics.newImage("image/projectiles/arc.png")
Projectile.arc.l = Projectile.arc.image:getWidth()
Projectile.arc.h = Projectile.arc.image:getHeight()
Projectile.arc.x = nil
Projectile.arc.y = nil 
Projectile.arc.angle = 0


  -- Fleche1
Projectile.fleche1 = {}
Projectile.fleche1.image = love.graphics.newImage("image/projectiles/fleche.png")
Projectile.fleche1.l = Projectile.fleche1.image:getWidth()
Projectile.fleche1.h = Projectile.fleche1.image:getHeight()
Projectile.fleche1.x = nil
Projectile.fleche1.y = nil
Projectile.fleche1.vx = 500
Projectile.fleche1.vy = 10
Projectile.fleche1.angle = 0
Projectile.fleche1.mouv = false

Projectile.fleche2 = {}
Projectile.fleche2.image = love.graphics.newImage("image/projectiles/fleche.png")
Projectile.fleche2.l = Projectile.fleche2.image:getWidth()
Projectile.fleche2.h = Projectile.fleche2.image:getHeight()
Projectile.fleche2.x = nil
Projectile.fleche2.y = nil
Projectile.fleche2.vx = 500
Projectile.fleche2.vy = 10
Projectile.fleche2.angle = 0
Projectile.fleche2.mouv = false


Projectile.fleche3 = {}
Projectile.fleche3.image = love.graphics.newImage("image/projectiles/fleche.png")
Projectile.fleche3.l = Projectile.fleche3.image:getWidth()
Projectile.fleche3.h = Projectile.fleche3.image:getHeight()
Projectile.fleche3.x = nil
Projectile.fleche3.y = nil
Projectile.fleche3.vx = 500
Projectile.fleche3.vy = 20
Projectile.fleche3.angle = 0
Projectile.fleche3.mouv = false

  -- Hache
Projectile.hache1 = {}
Projectile.hache1.image = love.graphics.newImage("image/projectiles/hache.png")
Projectile.hache1.l = Projectile.hache1.image:getWidth()
Projectile.hache1.h = Projectile.hache1.image:getHeight()
Projectile.hache1.x = nil
Projectile.hache1.y = nil
Projectile.hache1.vx = 500
Projectile.hache1.vy = 50
Projectile.hache1.angle = 0
Projectile.hache1.mouv = false

Projectile.hache2 = {}
Projectile.hache2.image = love.graphics.newImage("image/projectiles/hache.png")
Projectile.hache2.l = Projectile.hache2.image:getWidth()
Projectile.hache2.h = Projectile.hache2.image:getHeight()
Projectile.hache2.x = nil
Projectile.hache2.y = nil
Projectile.hache2.vx = 10
Projectile.hache2.vy = 20
Projectile.hache2.angle = 0

Projectile.hache3 = {}
Projectile.hache3.image = love.graphics.newImage("image/projectiles/hache.png")
Projectile.hache3.l = Projectile.hache3.image:getWidth()
Projectile.hache3.h = Projectile.hache3.image:getHeight()
Projectile.hache3.x = nil
Projectile.hache3.y = nil
Projectile.hache3.vx = 10
Projectile.hache3.vy = 20
Projectile.hache3.angle = 0

  -- Couteau
Projectile.couteau1 = {}
Projectile.couteau1.image = love.graphics.newImage("image/projectiles/couteau.png")
Projectile.couteau1.l = Projectile.couteau1.image:getWidth()
Projectile.couteau1.h = Projectile.couteau1.image:getHeight()
Projectile.couteau1.x = nil
Projectile.couteau1.y = nil
Projectile.couteau1.vx = 10
Projectile.couteau1.vy = 10
Projectile.couteau1.angle = 0

Projectile.couteau2 = {}
Projectile.couteau2.image = love.graphics.newImage("image/projectiles/couteau.png")
Projectile.couteau2.l = Projectile.couteau2.image:getWidth()
Projectile.couteau2.h = Projectile.couteau2.image:getHeight()
Projectile.couteau2.x = nil
Projectile.couteau2.y = nil
Projectile.couteau2.vx = 10
Projectile.couteau2.vy = 10
Projectile.couteau2.angle = 0

Projectile.couteau3 = {}
Projectile.couteau3.image = love.graphics.newImage("image/projectiles/couteau.png")
Projectile.couteau3.l = Projectile.couteau3.image:getWidth()
Projectile.couteau3.h = Projectile.couteau3.image:getHeight()
Projectile.couteau3.x = nil
Projectile.couteau3.y = nil
Projectile.couteau3.vx = 10
Projectile.couteau3.vy = 10
Projectile.couteau3.angle = 0

arme_courant = "Vide"

