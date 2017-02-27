hero = {}
hero.life = 0
hero.energy = 0

function startGame()
  print("La fonction a été appelée")
  hero.energy = 100
  hero.life = 5
end

print("nombre de vies:",hero.life)
startGame()
print("nombre de vies:",hero.life)
hero.life = hero.life - 1
print("nombre de vies:",hero.life)
startGame()
print("nombre de vies:",hero.life)

print("Terminé")


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