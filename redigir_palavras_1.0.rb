puts "Texto para pesquisar: "
text = gets.chomp
text.downcase!

puts "Palavras para redigir: "
redact = gets.chomp
redact.downcase!

words = text.split(" ") #O method .split divide um string em palavras individuais e retorna um array, entre parenteses disemos para dividir sempre que encontrar um espaço, mas poderia ser outra coisa como virgulas etc...

words.each do |item|
  if item == redact
    print "REDACTED "
  else
    print item + " "
  end
end 