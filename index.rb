print "Digite a sua String: "
frase = gets.chomp

vetorFrase = Array.new()

frase.strip().split("").each do |char|
  numeroASCI = char.ord + 3

  if char.ord < 97
    if numeroASCI.ord < 90
      charNovo = numeroASCI.chr

    elsif char.ord == 88
      charNovo = 65.chr

    elsif char.ord == 89
      charNovo = 66.chr

    elsif char.ord == 90
      charNovo = 67.chr
    end

  else
    if char.ord < 120
      charNovo = numeroASCI.chr

    elsif char.ord == 120
      charNovo = 97.chr

    elsif char.ord == 121
      charNovo = 98.chr

    elsif char.ord == 122
      charNovo = 99.chr
    end
  end

  vetorFrase.push(charNovo)
end

puts vetorFrase.join()
