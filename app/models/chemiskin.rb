class Chemiskin < ApplicationRecord
    belongs_to :product
    belongs_to :user

  def self.total
    uniq_products = self.all.uniq
    uniq_products.length

  end

 def self.most_chemiskins
    id = self.group("product_id").order('count(*) DESC').limit(1).pluck(:product_id).first
  end
end
