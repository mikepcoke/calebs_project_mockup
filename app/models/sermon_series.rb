class SermonSeries < ActiveRecord::Base
  has_many :sermon_author_sermon_series
  has_many :sermon_authors, :through => :sermon_author_sermon_series
end
