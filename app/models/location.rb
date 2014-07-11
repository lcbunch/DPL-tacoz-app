class Location < ActiveRecord::Base

  # since we don't have an address field we need to make an address method to create address
  geocoded_by :address
  # ActiveRecord callback
  after_validation :geocode

  def address
    # 1234 Some St. Apt 4, Salt Lake City, UT 84123, US
    "#{street_address} #{street_address2}, #{city}, #{state} #{zip}, US"
  end

end
