class Category < ApplicationRecord
  def to_param
    slug
  end
end
