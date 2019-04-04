class Video < ApplicationRecord
  belongs_to :user
  has_one :video_stat, :dependent => :destroy
  before_create :build_default_video_stat
  has_one_attached :video

  private
  def build_default_video_stat
    build_video_stat
    true
  end

end
