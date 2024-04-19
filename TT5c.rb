# transformando funções de string para receber objetos.
listagem = ["Diminuindo tempo de execução de testes em aplicações Rails enterprise 60min",
  "Reinventando a roda em ASP clássico 45min",
  "Apresentando Lua para as massas 30min",
  "Erros de Ruby oriundos de versões erradas de gems 45min",
  "Erros comuns em Ruby 45min",
  "Rails para usuários de Django lightning",
  "Trabalho remoto: prós e cons 60min",
  "Desenvolvimento orientado a gambiarras 45min",
  "Aplicações isomórficas: o futuro (que talvez nunca chegaremos) 30min",
  "Codifique menos, Escreva mais! 30min",
  "Programação em par 45min",
  "A mágica do Rails: como ser mais produtivo 60min",
  "Ruby on Rails: Por que devemos deixá-lo para trás 60min",
  "Clojure engoliu Scala: migrando minha aplicação 45min",
  "Ensinando programação nas grotas de Maceió 30min",
  "Ruby vs. Clojure para desenvolvimento backend 30min",
  "Manutenção de aplicações legadas em Ruby on Rails 60min",
  "Um mundo sem StackOverflow 30min",
  "Otimizando CSS em aplicações Rails 30min"]

class Palestra
  attr_accessor :name, :duration
  def initialize(name, duration)
    @name = name
    @duration = duration
  end

  def show
    [@name, @duration].to_s
  end
end

@palestras = []
def criar_lista_palestras(list)
  @palestras = []
  list.each do |row|
    duration = row.slice!(/\d+/).to_i
    name = (duration == 0) ? row : row[0..-5]
    @palestras << Palestra.new(name, (duration == 0) ? 5 : duration)
  end
end

@resposta = []

def resultado(palestras)  # percorre array populando @resposta com tracks de 180 min
  loop do
    @resposta << comb(palestras)
    break if palestras.sum { |palestra| palestra.duration } < 180
  end
  @resposta << palestras if palestras
end

def comb(palestras) # retornar a combinação cujo resultado da soma 180
  palestras.each_with_index do |value, index|
    palestras.combination(index + 1) do |comb|
      if comb.sum { |palestra| palestra.duration } == 180
        retira(palestras, comb)
        return comb
      end
    end
  end
end

def retira(palestras, combination) # retira da array a combinação passada por parâmetro
  combination.each do |item|
    palestras.delete_at(palestras.index(item)) if palestras.index(item)
  end
end

def distribuir_excedente(tracks)
  return if tracks.last.sum { |palestra| palestra.duration } >= 180 || tracks.length.even? # Verifica se a última sublista é maior ou igual a 180 ou se a quantidade de sublistas é par

  excedente = tracks.pop # Retira a última sublista

  tracks.each_with_index do |track, index|
    next if index.even? || track.sum { |palestra| palestra.duration } == 240 # Pula sublistas de índice par ou sublistas cuja soma já é igual a 240

    # Itera manualmente pelos elementos do excedente e adiciona apenas aqueles que não ultrapassam o limite de 240
    excedente_restante = []
    excedente.each do |elem|
      p excedente.each { |palestra| print "Excedente -> #{palestra.duration}," }
      if track.sum { |palestra| palestra.duration } + elem.time <= 240
        track << elem
      else
        excedente_restante << elem
      end
      puts "\n"
    end

    # Atualiza o excedente com os elementos que não foram adicionados à sublista atual
    excedente = excedente_restante
  end
end

def soma_tempo(palestras)
  soma = 0
  palestras.flatten.each { |palestra| soma += palestra.duration }
  soma
end

criar_lista_palestras(listagem)

tracks = resultado(@palestras)
p soma_tempo(tracks)

distribuir_excedente(tracks)
p soma_tempo(tracks)

tracks.each_with_index do |track, index|
  track.each { |palestra| puts "#{palestra.show}," }
  puts " - Soma - #{track.sum { |palestra| palestra.duration }}\n"
end

turno = "Track A"
tracks.each_with_index do |track, index|
  if index.even?
    puts "#Turno '#{turno}'"
    turno = turno.succ!
    puts "--- Manhã ---"
    track.each { |palestra| puts "#{palestra.name} -- #{palestra.duration}" }
    puts "--- Almoço ---"
  else
    puts "--- Tarde ---"
    track.each { |palestra| puts "#{palestra.name} -- #{palestra.duration}" }
    puts "--- Evento de Network ---"
  end
end
