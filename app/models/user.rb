class User < ApplicationRecord
  has_secure_password
  validates :username, presence: true, uniqueness: true
  enum role: %i[Admin Editor Viewer]
  after_initialize :set_default_role, if: :new_record?
  def set_default_role
    self.role ||= :user
  end
end
