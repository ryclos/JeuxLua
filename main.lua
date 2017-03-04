require('test')
---------------
-- Parametre --
---------------

io.stdout:setvbuf('no') -- Cette ligne permet d'afficher des traces dans la console pendant l'éxécution

-- Empèche Love de Filtrer les contours des images quand elles sont redimensionnées
-- Indispensable pour du pixel art (Le moteur graphique PyxelArt )
love.graphics.setDefaultFilter("nearest")

---------------
-- Code Main --
---------------

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

love.graphics.setBackgroundColor( 80, 50, 20 , 50 ) -- R, G, B, A
-- r, g, b, a = love.graphics.getBackgroundColor( )
-- couleur = Color.new(255, 255, 255) -- R, G, B


--
------ Les fonction pour faire apparaitre la fenêtre Love/img/son ------
--
function love.keyreleased( haut, bas, droite) -- parametre en variable
  if haut == "up"
  then -- Si j'appuie flèche haut
    love.event.quit( "restart" ) -- la fenêtre quitte et se relance
  elseif haut == "down" 
  then
    love.audio.play(sound)
  end
end
-------------------------------------
function love.load()
  sound = love.audio.newSource("music/access.ogg")
  -- if key then
  -- love.audio.play(sound)
  -- end
  whale = love.graphics.newImage("img/whale.png")
  love.mouse.setVisible(false) -- make default mouse invisible
  img = love.graphics.newImage("img/cursorTriangle.png") -- load in a custom mouse image
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
