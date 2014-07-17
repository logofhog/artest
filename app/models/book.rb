class Book < ActiveRecord::Base
  belongs_to :author
  has_many :chapters
  has_many :paragraphs, :through => :chapters
end
