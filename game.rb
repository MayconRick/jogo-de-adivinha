def getName()
    puts "Qual e o seu nome?" 
    name = gets
    return name
end

def shotOfUser() 
   
    puts("Tentativa #$numerotentativa" )
    puts "Entre com o numero"
    shotUser = gets
end
     
def getRandomNumber()
    puts "Escolhendo um numero secreto entre 1 e 10..."
    puts "Escolhido... que tal adivinhar hoje o nosso numero secreto?"
    rand(1..10)
end 

def newGame()
    puts "Você quer Jogr novamente?\n"
    puts "digite 1 - Sim"
    puts "digite 2 - Não"
    answer = gets

    if answer.to_i == 1
        startGame()
    else
        exitGame()
    end
    
end

def finishGame()
    puts "Prabéns você ganhou...\n\n\n"
    newGame()

end

def exitGame()
    puts "Saindo..."
    exit(true)
end

def startGame() 
    $initial = 0
    $tryNumber = 3
    puts "Bem-vindo ao jogo da adivinhacao"
    
    name = getName()
    puts "Comecaremos o jogo para voce, " + name

    secretNumber = getRandomNumber()
    puts "\n\n\n"

    while $initial < $tryNumber  do

        tryUser = shotOfUser()
        puts "Sera que acertou? Voce chutou " + tryUser

        if tryUser.to_i == secretNumber
            finishGame()
        else
            $initial +=1
        end
    end

    newGame()

end
    

startGame()

