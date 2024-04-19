@resposta = []

total = [60, 45, 30, 45, 45, 5, 60, 45, 30, 30, 45, 60, 60, 45, 30, 30, 60, 30, 30].shuffle!

def resultado(total)  # percorre array populando @resposta com tracks de 180 min
  time = 180
  loop do
    # time = (time == 180) ? 240 : 180
    p time
    @resposta << comb(total)
    p @resposta
    p total.sum

    break if total.sum < 180
  end
  @resposta << total if total
end

def retira(palestras, combination) # retira da array a combinação passada por parâmetro
  combination.each do |item|
    palestras.delete_at(palestras.index(item)) if palestras.index(item)
  end
end

def comb(total) # retornar a combinação cujo resultado da soma 180
  total.each_with_index do |value, index|
    total.combination(index + 1) do |comb|
      if comb.sum == 180
        retira(total, comb)
        return comb
      end
    end
  end
end

# verificar o exedente e distribuir para as tracks de modo que possam ter 180 min de manhá e 240 min a tarde.
# para isso, separar a ultima track e percorrer a array remanescente verificando a possibilidade de adicionar nos elementos impares

# def distribuir_excedente(tracks)
#   return if tracks.last.sum == 180 && tracks.length.even? # no length even é o evento da MANHÃ
#   excedente = tracks.pop # retira a ultima track
#   p excedente
#   excedente.each do |exced|
#     tracks.each_with_index do |track, track_index|
#       if track_index.odd? && track.sum < 240 && track.sum + exced <= 240   # se for o turno da tarde, tiver espaço e caber a primeira palestra
#         track << excedente.shift
#         p "excedente.last = #{excedente.last}"
#       end
#     end
#   end
# end

def distribuir_excedente(tracks)
  return if tracks.last.sum >= 180 || tracks.length.even? # Verifica se a última sublista é maior ou igual a 180 ou se a quantidade de sublistas é par

  excedente = tracks.pop # Retira a última sublista

  tracks.each_with_index do |track, index|
    next if index.even? || track.sum >= 240 # Pula sublistas de índice par ou sublistas cuja soma já é maior ou igual a 240

    # Itera manualmente pelos elementos do excedente e adiciona apenas aqueles que não ultrapassam o limite de 240
    excedente_restante = []
    excedente.each do |elem|
      if track.sum + elem <= 240
        track << elem
      else
        excedente_restante << elem
      end
    end

    # Atualiza o excedente com os elementos que não foram adicionados à sublista atual
    excedente = excedente_restante
  end
end

resultado(total)

distribuir_excedente(@resposta)

print @resposta

@resposta.each { |res| p res.sum }
