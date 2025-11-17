def mascara_telefone(numero)
  numero = numero.gsub(/\D/, '')
  numero.gsub(/(\d{2})(\d{5})(\d{4})/, '(\1)\2-\3')
end

def add_contato(contatos)
  nome = ""

  until !nome.empty?
    print "Nome do contato: "
    nome = gets.chomp.strip
  end

  print "Telefone: "
  telefone = gets.chomp.strip

  contatos[nome] = telefone
  puts "Contato adicionado!"
end

def listar_contatos(contatos)
  contatos.each do |nome, telefone|
    puts "#{nome} - #{mascara_telefone(telefone)}"
  end
end

def buscar_contato(contatos)
  print "Nome do contato: "
  nome = gets.chomp.strip

  telefone = contatos[nome]

  if telefone
    puts "Nome: #{nome} - Telefone: #{mascara_telefone(telefone)}"
  else
    puts "Contato nao encontrado!"
  end
end