describe "Matchers" do
	it "asserts on equality" do
		number = 3
		#number.should == 3 (previously)
		expect(number).to eq 3
	end

	it "asserts on mathematical operators"
		number = 5
		expect(number).to_be >= 2
	end

	it "asserts on matching a regular expression"
		email = "abc@gmail.com"
		regular_expression = /\w@\w\.[a-z]{2,4}/
		expect(email).to match regular_expression
	end

	it "asserts on types and classes"
		object = 2.1
		expect(object).to be_an_instance_of Numeric
	end

	it "asserts on truthiness" do
		bool = true
		falsy_bool = false
		nil_value = nil
		object = Class.new 

		expect(falsy_bool).to be_falsey

	end

	it "expects errors" do
		expect do
			raise ArgumentError
		end.to raise_error TypeError
	end

	it "expects throws" do
		expect {
			throw :oops
			}.to throw_symbol :oops
	end

	it "asserts on predicates" do # xit can be used if we want this particular test to be skipped in case of an error (ArgumentError), we can also say skip: true or skip: "pass a comment", say pending or skip at line 47
		class A
			def good?
				A
				#raise ArgumentError
			end
		end

		expect(A.new).to be_good
	end

	it "asserts on collections" do
		list  = [
			:one,
			:two,
			:three
			:four
		]

		expect(list).to include :four
		expect(list).to start_with [ :one ]
		#expect(list).to end_with :four
	end

	it "negates asserts"
		expect(3).not_to be 3
	end
end