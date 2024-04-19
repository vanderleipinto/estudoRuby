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
  attr_accessor :name, :time
  def initialize(name, time)
    @name = name
    @time = time
  end

  def show
    [@name, @time].to_json
  end
end

palestras = []

list.each do |row|
  time = row.slice!(/\d+/).to_i
  name = (time == 0) ? row : row[0..-5]
  palestras << Palestra.new(name, (time == 0) ? 5 : time)
end

def criar_lista_palestras(list)
  @palestras = []
  list.each do |row|
    time = row.slice!(/\d+/).to_i
    name = (time == 0) ? row : row[0..-5]
    @palestras << Palestra.new(name, (time == 0) ? 5 : time)
  end
end

def soma_tempo(palestras)
  soma = 0
  palestras.each { |palestra| soma += palestra.time }
  soma
end

p soma_time(palestras)
