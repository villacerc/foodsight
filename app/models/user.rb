class User < ApplicationRecord
  has_secure_password
<<<<<<< HEAD
  has_many :replies
  has_many :subjects

  def full_name
    "#{first_name} #{last_name}"
  end
=======

>>>>>>> origin/integration
end
