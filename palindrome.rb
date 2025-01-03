
def palindrome (sentence)
    #separar la oracion en palabras y  crear un array palindrome
    divided_sentence = sentence.split(" ")
    palindrome_words = []
    #navegar el array y comparar cada palabra con la palabra.reverse, añadir al array palindrome si es true
    divided_sentence.each do |word|
        # palindrome_words << word if word == word.reverse
        word_length = word.length
        divided_word = word.split('')
        reverse_counter = -1
        divided_word.each_with_index do |c, index|
            #comparar la letra en la que voy (index) con la ultima letra (-1) y si es la misma continuar, si no es la misma break
            break if divided_word[index] != divided_word[reverse_counter]
            reverse_counter -= 1
            #if pase de la mitad, agrego la palabra a palindrome_words y continuo.
            if index > (word_length / 2)
                palindrome_words << divided_word.join
                break
            end
        end
    end
    #regresar el array
    palindrome_words
end

p palindrome("That Honda Civic is a nice racecar and cannot be caught by the speed radar")