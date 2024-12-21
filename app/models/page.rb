class Page < ApplicationRecord
  # before_validation :make_slug
  before_save :make_slug
  
  belongs_to :user
  validates :title,
            presence: true,
            uniqueness: true
  validates :content,
            presence: true

  private

  def make_slug
    self.slug = title
      .downcase
      .gsub(/[_ ]/, "-")
      .gsub(/[^-a-z0-9+]/, "")
      .gsub(/-{2,}/, "-")
      .gsub(/^-/, "")
      .chomp("-")
  end
end
