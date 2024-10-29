class User < ApplicationRecord
  audited
  has_secure_password
  validates :username, presence: true, uniqueness: true
  enum role: %i[User Admin Editor Viewer]
  after_initialize :set_default_role, if: :new_record?
  def set_default_role
    self.role ||= :user
  end
end
