class Carta
  def initialize(pinta, numero)
    @pinta = pinta
    @numero = numero
  end
  def mostrar
    puts "#{@numero} de #{@pinta}"
  end
end

def generar_cartas
  cartas = []
  pintas = ['Corazón','Diamante','Trébol','Pica']
  numeros = [1,2,3,4,5,6,7,8,9,10,'Jota','Reina','Kayser']
  5.times do
    card = Carta.new(pintas.sample,numeros.sample)
    cartas.push(card)
  end
  cartas
end

def menu
  puts 'escriba "jugar" para generar 5 cartas'
  puts 'escriba "mostrar" para mostrar las 5 cartas'
  puts 'escriba "salir" para salir'
  puts 'seleccione una opción'
  opc = gets.chomp
end

pintas = ['Corazón','Diamante','Trébol','Pica']
numeros = [1,2,3,4,5,6,7,8,9,10,'Jota','Reina','Kayser']
cartas = []
continuar = true
while continuar
  opc = menu
  case opc
  when 'jugar'
    cartas = generar_cartas
    puts 'cartas generadas'
  when 'mostrar'
    cartas.each do |carta|
      carta.mostrar
    end
  when 'salir'
    continuar = false
  else
    puts 'escriba una opción valida'
  end
end
puts 'hasta luego...'
