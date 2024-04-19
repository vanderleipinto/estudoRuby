def distribuir_excedente(tracks)
  return if tracks.last.sum >= 180 || tracks.length.even? # Verifica se a última sublista é maior ou igual a 180 ou se a quantidade de sublistas é par

  excedente = tracks.pop # Retira a última sublista

  tracks.each_with_index do |track, index|
    next if index.even? || track.sum >= 240 # Pula sublistas de índice par ou sublistas cuja soma já é maior ou igual a 240

    espaco_livre = 240 - track.sum # Calcula quanto espaço livre resta na sublista

    # Distribui o excedente na sublista atual sem exceder 240
    excedente.each do |elem|
      break if track.sum + elem > 240 # Verifica se adicionar o próximo elemento excederá 240
      track << elem # Adiciona o elemento à sublista atual
    end
  end
end

# Array de tracks
tracks = [[60, 60, 60], [60, 60, 30, 30], [45, 45, 45, 45], [45, 45, 30, 30, 30], [30, 30, 5]]

# Chama a função para distribuir o excedente
distribuir_excedente(tracks)

# Mostra o resultado
puts tracks.inspect
