module SalesTaxCalculator

	class Calculator

		basic_tax = 0.10
		import_tax = 0.05

		attr_reader :quantity, :product, :price

		def init(quantity, product, price)
			@quantity, @product, @price = quantity, product, price
		end

		def sales_amount
			amount = 0

			amount += basic_tax if !exempt?
			amount += import_tax if imported?

			(amount * 20).ceil/20.0
		end

		private
		
		def tax_basic
			basic_tax * total
		end

		def tax_import
			(basic_tax + import_tax) * total
		end

		def total
			quantity * price 
		end

		def exempt?
			book? || food? || medical_product?
		end

		def book?
			product.include? 'book'
		end

		def food?
			product.include? 'food'
		end

		def medical_product?
			product.include? 'pill'
		end

		def imported?
			product.include? 'imported'
		end

	end

end