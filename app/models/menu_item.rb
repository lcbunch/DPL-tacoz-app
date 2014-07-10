class MenuItem < ActiveRecord::Base
  mount_uploader :picture, MenuItemPictureUploader

  def to_param
    "#{id}-#{name.parameterize}"
  end

  def self.vegetarian
    # scoped to class method on itself to return on only vegetarian items
    where(vegetarian: true)
  end

end
