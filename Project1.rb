def caesar_cipher(message, key)

  message.split("").each do |letter|
    # check if letter is alphabet character
    if letter.index(/[a-zA-Z]/) != nil
      convert_letter = letter.ord + key # convert letter to asci and add key
      #check if converted letter is non alphabet character
      if (convert_letter.between?(91,96) || convert_letter> 122) 
        convert_letter -= 26
      end
      
      message[letter] = convert_letter.chr
    else 
      message[letter] = letter
    end
  end.join("")
  return message
  
end

puts caesar_cipher("What a string!",5)
