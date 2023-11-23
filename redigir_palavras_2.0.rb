puts "Texto para pesquisar: "
text = gets.chomp
text.downcase!

puts "Palavras para redigir: "
redact = gets.chomp
redact.downcase!

palavras = redact.split(" ")

words = text.split(" ") #O method .split divide um string em palavras individuais e retorna um array, entre parenteses disemos para dividir sempre que encontrar um espaço, mas poderia ser outra coisa como virgulas etc...

resultado = words


palavras.each { |palavra|
  i = 0
  words.each do |texto|
    if palavra == texto
      resultado[i] = "REDACTED"
      i += 1
    else
      resultado[i] = texto
      i += 1
    end

  end
}

resultado.each { |cada|
  print " #{cada}"
}