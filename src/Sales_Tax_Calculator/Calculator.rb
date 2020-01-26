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
		
		def 

	end

end