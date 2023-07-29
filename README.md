# Password Generator

Welcome to the Password Generator repository! This project is a Ruby script that generates a random and secure password based on user-specified options. The generator allows you to customize the length of the password and include alphabets, numeric characters, and special characters in the generated password.

## How to Use

1. Clone the repository to your local machine:

```bash
git clone https://github.com/your-username/random-password-generator.git
cd random-password-generator
```

2. Open the `password_generator.rb` file in a text editor.

3. Modify the `password_length` variable to set the desired length for your password. By default, it is set to 15 characters.

4. Customize the password options by updating the `pass` variable in the script. The generator supports the following options:

   - `alphabets: true` (Default: Included) - Include lowercase alphabets (a-z) in the password.
   - `numeric: true` (Default: Excluded) - Include numeric characters (0-9) in the password.
   - `special: true` (Default: Excluded) - Include special characters (e.g., !, @, #) in the password.

   Adjust the options to suit your password requirements. For example, to generate a password with alphabets and special characters but without numeric characters, use:

   ```ruby
   pass = generate_password(password_length, alphabets: true, special: true)
   ```

5. Run the script:

```bash
ruby password_generator.rb
```

6. The script will generate a random password based on your specifications and display it in the console.

## How it Works

The random Password Generator follows these steps to create a random password:

1. Input Validation: The script takes user input for the desired password length and options (alphabets, numeric, special characters) for password generation.

2. Length Check: If the user-specified password length is greater than 20 or negative, the generator limits the length to 20 characters to ensure a reasonable password length.

3. Password Generation: The generator creates a skeleton array of length `len`, where each position corresponds to an option (alphabets, numeric, special). It then randomly fills each position based on the user's specified options.

4. Randomization: To ensure the randomness of the password, the generator seeds the random number generator with the current time.

5. Password Output: The generated password is displayed in the console and can be used as needed.

## Security Considerations

The random Password Generator creates random passwords, which can enhance security. However, it is essential to use strong and unique passwords for each account and service. Additionally, consider using a password manager to store and manage your passwords securely.

## Contributing

Contributions to the random Password Generator are welcome! If you find any bugs, have suggestions, or want to add new features, feel free to open an issue or submit a pull request.

## Credits

The random Password Generator is created and maintained by [Abdullah](https://github.com/Abdullahxz). Special thanks to the Ruby community for providing a robust and versatile programming language.

---

Thank you for checking out the random Password Generator! Create strong and secure passwords effortlessly with this script.

Happy password generating! 🛡️
