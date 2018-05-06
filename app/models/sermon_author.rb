class SermonAuthor < ActiveRecord::Base
  has_many :sermon_author_sermon_series
  has_many :sermon_series, :through => :sermon_author_sermon_series
  has_many :sermons

  def single_sermons
    single_sermons = []
    sermons.each do |sermon|
      single_sermon = sermon if sermon.sermon_series_id.nil?
    end
    return single_sermons
  end
end
