class User < ActiveRecord::Base
  include Following

  validates :email, presence: true, uniqueness: true
  validates :password_digest, presence: true

end
