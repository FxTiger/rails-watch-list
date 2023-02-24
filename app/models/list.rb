class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks
  has_many :reviews

  validates :name, presence: true, uniqueness: true

  def destroy
    self.movies.destroy_all
  end

end
