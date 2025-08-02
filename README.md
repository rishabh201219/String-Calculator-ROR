# String Calculator TDD Kata (Rails 8 + RSpec)

This project is a **Rails 8** application containing an implementation of the **String Calculator Kata** using **Test‑Driven Development (TDD)** with **RSpec**.

The String Calculator is implemented in the `lib/` directory and is fully tested with RSpec.

---

## 📌 How It Works

The **StringsCalculator** module provides a `.add` method that:

1. Accepts a number string.
2. Detects and handles a **custom delimiter** if present in the form:
//<delimiter>\n<numbers>
3. Splits the numbers using the given delimiter (or by commas/newlines if none is provided).
4. Converts them to integers and sums them.
5. Raises an exception for **negative numbers**, listing all found negatives.

**Example:**
```ruby
StringsCalculator.add("//;\n1;2") # => 3
StringsCalculator.add("1\n2,3")  # => 6
StringsCalculator.add("-1,2,-3") # => raises "negative numbers not allowed -1,-3"


✅ Implementation Checklist
	1.Return 0 for an empty string
	2.Return the number itself for a single number
	3.Sum comma‑separated numbers
	4.Support multiple numbers
	5.Support newlines as delimiters
	6.Support custom delimiters
	7.Raise error for negative numbers with list

🛠 Ruby & Rails Versions
	Ruby: 3.0.0

	Rails: 8.0.2

📂 File Locations
Implementation: lib/strings_calculator.rb

Specs: spec/strings_calculator_spec.rb

🚀 Setup Instructions
1.Clone the repository
	git clone git@github.com:rishabh201219/String-Calculator-ROR.git
	cd String-Calculator-ROR

2.Install dependencies
	bundle install

3.Run the tests
	bundle exec rspec ./spec/strings_calculator_spec.rb

