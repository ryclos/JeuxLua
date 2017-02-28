hero = {}
hero.life = 0
hero.energy = 0

boss = {}

boss.energy = 0

function startGame()-- Initialise a chaque fois (Test)
  print("La fonction a été appelée")
  hero.energy = 100
  hero.life = 50
  boss.energy = 1000
end

print("nombre de vies:",hero.life)
startGame()
print("nombre de vies:",hero.life)
hero.life = hero.life - 10
print("nombre de vies:",hero.life)
startGame()
print("nombre de vies:",hero.life)

print("Appel de la fonction terminé")

function Touche(personnage, nbPoints)-- Personnage prends les valeur heros et boss
  personnage.energy = personnage.energy - nbPoints
   if personnage.energy < 100 then
      print("Attention tu es bléssé")
    end
end

print("nombre de vies:",hero.energy)
Touche(hero, 5)
print("nombre de vies:",hero.energy)

Touche(boss, 45)
print("Energie du boss", boss.energy)
    

-- Les fonction pour faire apparaitre la fenêtre Love/img/son --

function love.load()
  sound = love.audio.newSource("music/access.ogg")
  love.audio.play(sound)
  whale = love.graphics.newImage("img/whale.png")
  love.mouse.setVisible(false) -- make default mouse invisible
  img = love.graphics.newImage("img/mouse.png") -- load in a custom mouse image
end
--------------------------------------
--function love.update(dt)
  --- A voir plus tard
--end
--------------------------------------
function love.draw()
  love.graphics.print("Hello World!", 200, 50)
  love.graphics.draw(whale, 200, 100)
  local x, y = love.mouse.getPosition() -- get the position of the mouse
  love.graphics.draw(img, x, y) -- draw the custom mouse image
end
--function love.resize(w, h) -- J'essaye de faire les rezize fenêtre lol
  --print(("Window resized to width: %d and height: %d."):format(1200, 900))
--end
