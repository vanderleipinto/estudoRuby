def dividir_em_tracks(total)
  tracks = []
  track_atual = []

  total.each do |valor|
    if track_atual.sum + valor <= 180
      track_atual << valor
    else
      tracks << track_atual
      track_atual = [valor]  # Inicia uma nova track com o valor atual
    end
  end

  # Adiciona a última track, se houver
  tracks << track_atual if track_atual.any?

  tracks
end

def organizar(tracks)
  organizada = []
  tracks.each_with_index do |track, index|
    if track.sum == 180 # insere na organizada se soma for 180
      organizada << track.delete(index)
      break

    end
  end

  organizada
end

tracks.each_with_index do |track, index|
  if track.sum == 180
    organizada << tracks.delete_at(index)
    break
  end
  faltante = 180 - track.sum
  p "#{track} falta #{faltante}"
end

def combination(total)
  total.each_with_index do |value, index|
    total.combination(index + 1) do |comb|
      if comb.sum == 180
        @resultado << total - comb
        combination(total)
      end
    end
  end
end
