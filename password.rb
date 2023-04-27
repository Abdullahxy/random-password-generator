# frozen_string_literal: false

# Takes input the length (fixnum < 20) and options (hash) from user
# hash options: alphabets/numeric/special-characters
# Returns a randomly generated password
def generate_password(len = 10, options = { alphabets: true })
  # Sanity checks to ensure password length is okay
  if len > 20 || len.negative?
    len = 20
  end

  # get_arr returns a skeleton array of length len with
  # positions marked for each option
  arr = get_arr(len, options)

  # array to store passwords
  password = []

  selected = 0

  # Iterating over array and randomly filling each option
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

  # returning password as string
  password.join('')
end

# a method to randomly allocate positions to
# options specified by the user
def get_arr(len, options = {})
  # seeding random function with current time
  srand(Time.now.to_i)

  # array to return
  arr_to_return = []

  # allocating positions to options
  len.times do

    # getting a random number between 0 and 2
    # 0 => alphabets
    # 1 => numeric
    # 2 => special
    option = rand(3)

    # default option is alphabets
    if option.eql? 0
      arr_to_return << option
      next
    elsif option == 1 && options[:numeric]
      arr_to_return << option
      next
    elsif option == 1 && !(options[:numeric])
      arr_to_return << 0
      next
    elsif option == 2 && options[:special]
      arr_to_return << option
      next
    else
      arr_to_return << 0
    end
  end
  arr_to_return
end

# Set password length from here
password_length = 15

# Takes password length and options as input and
# Returns randomly generated password as per user needs
# Options: alphabets, numeric, special
pass = generate_password(password_length, numeric: true, special: true)

# Prints password
puts pass
