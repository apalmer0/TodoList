class Item < ActiveRecord::Base
  # this is a 'model'. Models map to database tables -
  # this is the file that talks to the 'items' database table.
  # most of your item-related logic should live here.

  validates :content, presence: true
  validates :due, presence: true

  enum status: {
    incomplete: 0,
    complete: 1,
  }
end
