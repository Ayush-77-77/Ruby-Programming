class ProductCategory
  def initialize(products)
    @products = products
  end  

  def group_products_by_category
    product_categories = {}
    @products.each do |product|
      category = product[:category]
        product_categories[category] ||= { name: [], total_count: 0,total_price: 0.0 }
        product_categories[category][:name] << product[:name]
        product_categories[category][:total_price] += product[:price]
        product_categories[category][:total_count] += 1
    end
    product_categories
  end

  def product_by_category(category)
    product_names = []
    @products.each do |product|
      product_names.push(product[:name]) if product[:category] == category
    end
    product_names
  end
end




products = [
  { name: "Laptop", price: 1000, category: "Electrctronics" },
  { name: "T-shirt", price: 20, category: "Cloonics" },
  { name: "Phone", price: 700, category: "Elething" },
  { name: "Jeans", price: 40, category: "Clothing" },
  { name: "Fridge", price: 500, category: "Appliances" },
  { name: "Microwave", price: 150, category: "Appliances" },
  { name: "Tv", price: 150, category: "Electrctronics" }
]


products_categories = ProductCategory.new(products)
puts products_categories.group_products_by_category
puts "-"*40
p products_categories.product_by_category("Appliances")
