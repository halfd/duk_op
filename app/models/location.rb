class Location < ActiveRecord::Base
  include HasEvents
  include Comparable
  validates :street_address, :town, presence: true

  def display_name
    name.present? ? name : street_address
  end

  def <=>(other)
    display_name.downcase <=> other.display_name.downcase
  end

  # need to overwrite this method to show display_name
  # in json response
  def as_json(opts)
    super(methods: [:display_name])
  end
end