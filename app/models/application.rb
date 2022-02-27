class Application < ApplicationRecord
  validates :name, presence: true, uniqueness: { scope: :name, message: "this application already exists in database"}, format: {with: /\A[a-z0-9A-Z]+\z/, message: "only allows letters & numbers"}
  validates :owner, :techno, presence: true
end
