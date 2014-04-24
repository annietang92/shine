class Announcements < ActiveRecord::Base
  validates :date, presence: true
  validates :title, presence: true
  default_scope -> { order('updated_at DESC') }
end
