class Store < ActiveRecord::Base

  has_many :employees

  validates :name, presence: true, length: { minimum: 3 }

  validates :annual_revenue, presence: true, numericality: { greater_than_or_equal_to: 0,  only_integer: true }

  validate :atleast_either_mens_or_womens_apparel

  private

  def atleast_either_mens_or_womens_apparel
    if (womens_apparel != true) && (mens_apparel != true)
      errors.add(:mens_apparel, "Stores must carry at least one of the men's or women's apparel")
      errors.add(:womens_apparel, "Stores must carry at least one of the men's or women's apparel")
    end
  end

end
