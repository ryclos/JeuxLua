hero = {}
hero.life = 0
hero.energy = 0

boss = {}

boss.energy = 0

function startGame()-- Initialise a chaque fois (Test)
  print("La fonction a été appelée")
  hero.energy = 100
  hero.life = 5
  boss.energy = 1000
end

print("nombre de vies:",hero.life)
startGame()
print("nombre de vies:",hero.life)
hero.life = hero.life - 1
print("nombre de vies:",hero.life)
startGame()
print("nombre de vies:",hero.life)

print("Appel de la fonction terminé")

function Touche(personnage, nbPoints)-- Personnage prends les valeur heros et boss
  personnage.energy = personnage.energy - nbPoints
end

print("nombre de vies:",hero.energy)
Touche(hero, 5)
print("nombre de vies:",hero.energy)

Touche(boss, 45)
print("Energie du boss", boss.energy)


-- Les fonction pour faire apparaitre la fenêtre Love/img/son --
--function love.load()
   --love.mouse.setVisible(false) -- make default mouse invisible
   --img = love.graphics.newImage("img/mouse.png") -- load in a custom mouse image
--end
--function love.draw()
   --local x, y = love.mouse.getPosition() -- get the position of the mouse
   --love.graphics.draw(img, x, y) -- draw the custom mouse image
--end
function love.draw()
  love.graphics.print("Hello World!", 400, 300)
end
function love.load()
  whale = love.graphics.newImage("img/whale.png")
end
function love.load() -- love.draw normalement mais ça ne passe pas
  love.graphics.draw(whale, 200, 100)
end
function love.load()
  sound = love.audio.newSource("music/access.ogg")
  love.audio.play(sound)
end
--function love.resize(w, h) -- J'essaye de faire les rezize fenêtre lol
  --print(("Window resized to width: %d and height: %d."):format(1200, 900))
--end
