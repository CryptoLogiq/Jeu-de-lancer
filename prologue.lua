
Prologue = {}

Prologue.image = love.graphics.newImage("image/prologue.jpg")
sonMachine = love.audio.newSource("son/machine.mp3", "static")
sonMachine : setVolume(1)
histoire = {}



function Inithistoire(pTexte)
 
  histoire.Texte = pTexte
  histoire.Position = 1
  histoire.Timer = 0
  histoire.Vitesse = 0.06

end

function loadPrologue()
 
 font = love.graphics.newFont("PixelMaster.ttf", 50)
 love.graphics.setFont(font)
 
 Inithistoire("Jeu de lancer.         Vous aurez le choix entre 3 armes : L'arc, le couteau, et la hachette. Il y a 3 mode de difficulte. Il y 10 scenes, seul le mode hardgore, et si vous atteignez ??? points, possedent 5 niveau supplementaire. Attention, chaque projectile ont des stats different. ")
 

end 

function updatePrologue(dt)
  
  
  if histoire.Position < string.len(histoire.Texte) then
    love.audio.play(sonMachine)
    histoire.Timer = histoire.Timer + dt
    if histoire.Timer >= histoire.Vitesse then
      histoire.Position = histoire.Position + 1
      histoire.Timer = 0
    end
  elseif histoire.Position >= string.len(histoire.Texte) then
    love.audio.stop(sonMachine)
  end
  
end

function drawHistoire()
  
  local portionTexte = string.sub(histoire.Texte, 1, histoire.Position)
  local color = {0, 0.2, 0}
  local coloredtext = {color, portionTexte}
  
  love.graphics.printf(coloredtext, 300, 25, 400, "center")
  

end


function drawPrologue()
  
  love.graphics.draw(Prologue.image, 0, 0)
  


end