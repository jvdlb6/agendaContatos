# 📒 Agenda de Contatos em Ruby

Este projeto é uma **agenda de contatos simples**, criada em Ruby, com
opções para:

- ➕ **Adicionar contatos**
- 📄 **Listar contatos cadastrados**
- 🔍 **Buscar um contato pelo nome**
- 📞 **Exibir telefone formatado** no padrão **(xx)xxxxx-xxxx**
- 🚪 **Sair da aplicação**

## 🛠️ Funcionalidades

### ✔️ 1. Adicionar contato

Pede o **nome** e **telefone**, garantindo que o nome não seja vazio.

### ✔️ 2. Listar contatos

Exibe todos os contatos no formato:

    Nome - (62)98765-4321

### ✔️ 3. Buscar contato

Permite procurar um contato pelo nome.

### ✔️ 4. Sair

Encerra o programa.

---

## 🔢 Máscara de Telefone

A função `mascara_telefone` aplica a máscara:

    (\d{2})(\d{5})(\d{4}) → (xx)xxxxx-xxxx

---

## 📁 Estrutura do Projeto

    /
    ├── main.rb
    └── contatos.rb

---

## ▶️ Como Executar

```bash
ruby main.rb
```

---

## 📘 Código Utilizado

```ruby
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

require_relative "contatos"

contatos = {
  "João Victor" => "12347654366",
  "Heitor" => "56785678544"
}

opcao = ""

begin
  puts "\n=== AGENDA ==="
  puts "Adicionar"
  puts "Listar"
  puts "Buscar"
  puts "Sair"
  print "Escolha uma opção: "

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
```

---

## 📘 Licença

Uso livre para estudos.
