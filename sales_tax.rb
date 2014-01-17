#===================
#     CLASSES
#===================


class Goods
attr_accessor :quantity, :name, :price

def initialize(quantity, name, price)
	@quanitity = quantity
	@price = price
	@name = name
end


def calculate_tax
	@price * 0.1
end


def calculate_total
	@price + calculate_tax
end

end




class ExemptGoods < Goods

#Tax is 0%

end



class ImportedGoods < Goods

#Tax is 15%

end



class ExemptImportedGoods < Goods

#Tax is 5%

end

#===================
#     INPUT 1
#===================

book = ExemptGoods.new(1, "book", 12.49)



#Call each object as an instance of a class?




#receipt lists:
#name of all items and their price including tax 
#total cost of items
#total amount of sales tax paid