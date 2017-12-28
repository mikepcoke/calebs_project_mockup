class SermonAuthor < ActiveRecord::Base
  has_many :sermon_author_sermon_series
  has_many :sermon_series, :through => :sermon_author_sermon_series
  has_many :sermons
end
