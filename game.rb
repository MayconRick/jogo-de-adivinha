puts "Bem-vindo ao jogo da adivinhacao"
puts "Qual e o seu nome?" 
nome = gets
puts "\n\n\n\n"
puts "Comecaremos o jogo para voce, " + nome
puts "Escolhendo um numero secreto entre 0 e 200..."
numero_secreto = 121
puts "Escolhido... que tal adivinhar hoje o nosso numero secreto?"
puts "\n\n\n"

$initial = 0
$numerotentativa = 3
while $initial < $numerotentativa  do
    puts("Tentativa #$numerotentativa" )
    puts "Entre com o numero"
    chute = gets
    puts "Sera que acertou? Voce chutou " + chute
    puts numero_secreto == chute.to_i
    $initial +=1
 end