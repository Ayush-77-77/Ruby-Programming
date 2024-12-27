module ProductCategoryModule
   # Method to group products by category with aggregate data (name, total_count, total_price)
   def group_products_by_category
    category_summary = {}
    
    @products.each do |product|
      category = product[:category]
      # Initialize the category if not already present
      category_summary[category] ||= { names: [], total_count: 0, total_price: 0.0 }
      
      # inserting product details into the category
      category_summary[category][:names] << product[:name]
      category_summary[category][:total_price] += product[:price]
      category_summary[category][:total_count] += 1
    end

    category_summary
   end
end

class ProductCategory
  include ProductCategoryModule
  def initialize(products)
    @products = products
    @category_summary = group_products_by_category
  end  

  

  # Method to get all products by a specific category (names of products)
  def products_by_category(category)
    @category_summary[category] ? @category_summary[category][:names] : []
  end

  # full category summary
  def full_category_summary
    @category_summary
  end
end

products = [
  { name: "Laptop", price: 1000, category: "Electronics" },
  { name: "T-shirt", price: 20, category: "Clothing" },
  { name: "Phone", price: 700, category: "Electronics" },
  { name: "Jeans", price: 40, category: "Clothing" },
  { name: "Fridge", price: 500, category: "Appliances" },
  { name: "Microwave", price: 150, category: "Appliances" },
  { name: "TV", price: 150, category: "Electronics" }
]

# Creating an instance of ProductCategory
product_categories = ProductCategory.new(products)

# Displaying the grouped products by category with aggregate data
puts "Category Summary:"
puts product_categories.full_category_summary
puts "-" * 40

# Fetching and displaying product names for a specific category
puts "Products in 'Appliances' category:"
p product_categories.products_by_category("Appliances")
