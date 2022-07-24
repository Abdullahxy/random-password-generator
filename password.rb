# frozen_string_literal: false

# Takes input the length (fixnum < 20) and options (hash) from user
# hash options: alphabets/numeric/special-characters
# Returns a randomly generated password

def generate_password(len = 10, options = { alphabets: true })
  if len > 20 || len.negative?
    len = 20
  end

  arr = get_arr(len,options)
  password = []
  selected = 0

  arr.each do |i|
    case i
    when 0
      selected = rand(97..122)
    when 1
      selected = rand(48..57)
    else
      selected = rand(33..47)
    end
    password << selected.chr
  end
  password.join('')
end

def get_arr(len, options = {})
  srand(Time.now.to_i)
  arr = []
  len.times do
    r = rand(3)
    if r.eql? 0
      arr << r
      next
    elsif r == 1 && options[:numeric]
      arr << r
      next
    elsif r == 1 && !(options[:numeric])
      arr << 0
      next
    elsif r == 2 && options[:special]
      arr << r
      next
    else
      arr << 0
    end
  end
  arr
end

password_length = 15
pass = generate_password(password_length, numeric: true, special: true)
puts pass
