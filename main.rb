require_relative "contatos"

contatos = {
  "João Victor" => "12347654366",
  "Heitor" => "56785678544"
}

opcao = ""

begin
  puts "\n=== AGENDA === \n\n"
  puts "Adicionar"
  puts "Listar"
  puts "Buscar"
  puts "Sair \n\n"
  print "Escolha uma opção: \n\n"
  print ">"

  opcao = gets.chomp.downcase

  case opcao
  when "adicionar"
    add_contato(contatos)
  when "listar"
    listar_contatos(contatos)
  when "buscar"
    buscar_contato(contatos)
  when "sair"
    puts "Fechando a agenda !! Obrigado por usar !!"
  else
    puts "Opção inválida, tente novamente."
  end
end while opcao != "sair"
