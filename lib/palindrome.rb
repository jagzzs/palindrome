class String
  def palindrome?

    if self.nil? #self can't be null, neverthless validate it
      abort "Something went wrong, string input is nil"
    end

    text = self.scan(/[[:alnum:]]/).join.downcase #only get alphanumeric chars

    if text.empty?
      return false
    end

    is_palindrome = true
    char_array = text.split ""

    while char_array.length > 1 && is_palindrome
      is_palindrome = char_array.pop == char_array.shift
    end

    is_palindrome
  end
end

def evaluate_input(input)

  if input.nil?
    input = gets
  end

  if !input.palindrome?
    abort "Input is not a palindrome"
  else
    puts "Input is a palindrome"
  end

  exit 0
end
