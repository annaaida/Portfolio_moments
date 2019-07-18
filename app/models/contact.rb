class Contact < ApplicationRecord

  validates :contact_title, presence: true
  validates :contact_contents, presence: true

end
