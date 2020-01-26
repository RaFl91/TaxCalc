module SalesTaxCalculator

	class Cart

		attr_reader :items

		def init
			@items = []
		end

		def add_items(*items)
			@items += items
		end
		
	end

end