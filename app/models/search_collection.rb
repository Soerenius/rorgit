class SearchCollection < ActiveRecord::Base
  self.primary_key= :guid
  has_many :view_object_ids
  # this isn't strictly necessary, but it will prevent
  # rails from calling save, which would fail anyway.
  def readonly?
    true
  end
end