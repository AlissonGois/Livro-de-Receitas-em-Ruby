#--------------- Definindo Constantes ---------------

CADASTRAR = 1
LISTAR = 2
SAIR = 0
#--------------- Fim Constantes ---------------


#--------------- Definindo Funções a serem usadas no programa ---------------

#Definindo uma função para mostrar a mensagem de bem-vindo
def bem_vindo()
    puts
    puts "Bem-vindo ao Cookbook, sua rede social de receitas"
    puts
end

#Definição de uma função do menu principal
def menu()
    puts
    puts "############### MENU OPÇÕES ###############"
    puts
    puts "[#{CADASTRAR}] - Cadastrar Receita"
    puts "[#{LISTAR}] - Listar Receitas"
    puts "[#{SAIR}] - Sair"
    puts
    print "Escolha uma opção: "
      return gets.to_i()
    puts
end

#Definindo uma função para cadastrar uma receita
def cad_receita()
    puts "Digite o nome da receita:"
    nome = gets.chomp()
    puts
    puts "Digite o tipo da receita:"
    tipo = gets.chomp()
    puts
    puts "Receita #{nome} cadastrada com Sucesso!"
    return {nome: nome, tipo: tipo} 
end

#Definindo uma função para a exibição das receitas cadastradas
def listar_receita(rec)
    puts
    puts "--------------- Receitas Cadastradas ---------------"
    puts
    
    rec.each do |receita|
        puts "#{receita[:nome]} - #{receita[:tipo]}"

    end
  
    if rec.empty?
        puts "============================================================"
        puts  
        puts "               NENHUMA RECEITA CADASTRADA!                  "
        puts
        puts "============================================================"
     end
  
end

def fim()
    puts
    puts"Saindo... "
    puts
    puts "Obrigado por usar o Cookboook, até logo!"
    puts
end
#--------------- Fim Funções ---------------


#--------------- Iniciando o programa ---------------
#Início do programa de Receitas

#Chamando a função de boas vindas.
bem_vindo()

#Declarando o array para guardar as receitas
ListaReceitas = []

#Chamando a função menu
opcao = menu()

loop do
  if(opcao == CADASTRAR)
    puts
    ListaReceitas << cad_receita()

  elsif(opcao == LISTAR)
    puts
    opcao = listar_receita(ListaReceitas) 

  elsif(opcao == SAIR)
    break

  else
    puts
    puts "Opção não encontrada, tente novamente!"
    puts

  end

  #Chamando a função menu
  opcao = menu()

end

#Chamando a função que mostra a frase de encerramento do programa
fim()
#--------------- Fim do Programa ---------------