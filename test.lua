-- c'est les première ligne de test

hero = "MyAss"
print ("what is your name traveler")
print ("welcome " .. hero .. " to the path of death")

print("-----------------------------")

function addition ( a, b ) --
  resultat = a + b    -- 
  	return resultat -- 
end

addition (15, 16)
print("La somme est :", resultat)
print("La somme est :", addition (20, 20))

print("-----------------------------")

couleurs = {}
couleurs[1] = "rouge"
couleurs[2] = "vert"
table.insert(couleurs, "bleu")

for n = 1, #couleurs do
  print(couleurs[n])
end

print("-----------------------------")

table.remove(couleurs, 2)

for n = 1, #couleurs do
  print(couleurs[n])
end

print("-----------------------------")

couleurs.nom = "Table des couleurs"

for n, c in pairs(couleurs) do -- fonction paire
  print(n, c)
end

print("-----------------------------")


for n, c in ipairs(couleurs) do -- fonction impaire
  print(n, c)
end

