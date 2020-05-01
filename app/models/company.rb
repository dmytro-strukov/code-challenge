class Company < ApplicationRecord
  has_rich_text :description

  validates :email, allow_blank: true, corporate_email: true
end
