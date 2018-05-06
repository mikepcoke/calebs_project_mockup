class Sermon < ActiveRecord::Base
  belongs_to :sermon_author
  belongs_to :sermon_series
end
