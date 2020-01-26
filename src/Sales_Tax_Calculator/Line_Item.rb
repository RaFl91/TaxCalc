module SalesTaxCalculator

	class LineItem

		attr_reader :quantity, :product, :price

		def init(quantity, product, price)
			@quantity, @product, @price = quantity, product, price
		end

		def item
			LineItem.new(quantity, product, price)
		end

	end
	
end