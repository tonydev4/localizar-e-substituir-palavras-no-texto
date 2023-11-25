puts "Texto para pesquisar: "
text = gets.chomp

puts "Palavras para substituir: "
redact = gets.chomp

puts "Substituir por: "
substituta = gets.chomp

palavras_user = redact.split(" ")

palavras_texto = text.split(" ") #O method .split divide um string em palavras individuais e retorna um array, entre parenteses disemos para dividir sempre que encontrar um espaço, mas poderia ser outra coisa como virgulas etc...

resultado = palavras_texto

# Verificando cada palavra do usuario
palavras_user.each { |palavra|
  i = 0
  palavras_texto.each do |texto|#verificando cada palavra do texto com a palavra do usuario
    if palavra.downcase == texto.downcase
      resultado[i] = substituta
      i += 1
    else
      resultado[i] = texto
      i += 1
    end

  end
}

comeca_com_substituta = false
if resultado[0] == substituta
  comeca_com_substituta = true
end

resultado.each { |cada|  
  if comeca_com_substituta
    print "#{cada}"
    comeca_com_substituta = false
  else
    print " #{cada}"
  end
}