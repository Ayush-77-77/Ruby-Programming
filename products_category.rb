
def group_products_by_category(products)
  
  
  product_by_category = {}
  category = {
      name: [],
      total_count: 1,
      total_price: products[0][:price]
    }
  products.each do |value|
    category = value[:category]
    
    if product_by_category.key?category
        product_by_category[category][:name] << value[:name]
        product_by_category[category][:total_price] += value[:price]
        product_by_category[category][:total_count] += 1
    else
      raw_data = {
        name: [value[:name]],
        total_count: 1,
        total_price: value[:price],
      }

    product_by_category[category] = raw_data
    end
  end 
  

  product_by_category.each do |category|
    puts category
    puts 
  end
end



products = [
    { name: "Laptop", price: 1000, category: "Electrctronics" },
    { name: "Laptop", price: 1000, category: "Electrctronics" },
    { name: "T-shirt", price: 20, category: "Cloonics" },
    { name: "Phone", price: 700, category: "Elething" },
    { name: "Jeans", price: 40, category: "Clothing" },
    { name: "Fridge", price: 500, category: "Appliances" },
    { name: "Microwave", price: 150, category: "Appliances" },
    { name: "Tv", price: 150, category: "Electrctronics" }
  ]

group_products_by_category(products)

