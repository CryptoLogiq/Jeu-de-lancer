-- Cette ligne permet d'afficher des traces dans la console pendant l'éxécution
io.stdout:setvbuf('no')

-- Empèche Love de filtrer les contours des images quand elles sont redimentionnées
-- Indispensable pour du pixel art
love.graphics.setDefaultFilter("nearest")

-- Cette ligne permet de déboguer pas à pas dans ZeroBraneStudio
if arg[#arg] == "-debug" then require("mobdebug").start() end


require("prologue")
require("menu")
require("game")
require("fin")

sonPrologue = love.audio.newSource("son/music_prologue.mp3", "static")
sonPrologue : setVolume (0.3)

ecran_courant = ("Prologue")

function love.load()
  
  love.window.setMode(1024,768)
  --love.graphics.setFont(love.graphics.newFont(24))
  ecran = {}
  ecran.l = 1024
  ecran.h = 768
  
  
  
  if  ecran_courant == ("Prologue") then
    loadPrologue()
  end

  
end


function love.update(dt)

  if ecran_courant == "Prologue" then
    updatePrologue(dt)
    love.audio.play(sonPrologue)
    
  elseif ecran_courant == "Menu" then
    
    updateMenu(dt)
    
  elseif ecran_courant == "Game" then
    love.audio.stop(sonPrologue)
    love.audio.stop(sonMachine)
    
    updateGame(dt)
   
    
  elseif ecran_courant == "Fin" then
    
  
  end

end



function love.draw()
  
  if ecran_courant == "Prologue" then
    drawPrologue()
    drawHistoire()
  elseif ecran_courant == "Menu" then
    drawMenu()
  elseif ecran_courant == "Game" then
    
    drawNiveau()
    drawGame()
    
    
  elseif ecran_courant == "Fin" then
    drawFin()
  
  end
  
end


function love.keypressed(key)
  
  if ecran_courant == "Prologue" then
    if key == "space" then
      ecran_courant = "Menu"
    end
  elseif ecran_courant == "Menu" then
    if menu_choisi == true then
      if key == "space" then
        ecran_courant = "Game"
      end
    end
  elseif ecran_courant == "Game" then
    keypressedNiveau(key)
    keypressedGame(key)
  elseif ecran_courant == "Fin" then
    if key == "space" then
      ecran_courant = "Prologue"
    end
  
  end

end

function love.mousepressed(x, y, n)
  
  mousepressedMenu(x, y, n)

end