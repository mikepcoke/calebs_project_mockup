class SermonAuthorSermonSeries < ActiveRecord::Base
  belongs_to :sermon_series
  belongs_to :sermon_author
end
