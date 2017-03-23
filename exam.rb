describe "Composable Matchers" do
	it "works with nested data" do
		class Product
			#def initialize id, name, category
=begindef initialize
				@id = id
				@name = name
				@category = category
			end


=end

     def self.chaithra
     	puts "ishu"
     	array =[]
     	


     end

			def serial_data
				[
				"X-",
				@name[0],
				@category[0],
				@id
				]
			end
		end

		#product = Product.new 2456, "Tomato", "Fruit"
=beginproduct = Product.new
		product.id=1
		product.name="ishu"
		product.category="ruby"
=end
puts serial_data


Product.chaithra

		expect(product.serial_data).to match [
			a_string_starting_with("X-"),
			a_string_starting_with("T"),
			a_string_starting_with("F"),
			a_value < 5000
		] # X-TF2456

		# change
		# contain_exactly
	end
end