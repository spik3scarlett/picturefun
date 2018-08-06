puts "podaj subprajma:"
subprajm = gets.chomp
kwadrat = (subprajm.to_i**0.5).floor
roznica = subprajm.to_i - kwadrat**2
pion = kwadrat

until roznica % pion == 0
  pion.even? ? roznica += kwadrat : roznica += 2*kwadrat
  pion.even? ? pion -= 1 : pion -= 2
end

puts pion
puts subprajm.to_i/pion
