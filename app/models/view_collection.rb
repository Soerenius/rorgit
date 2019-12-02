class ViewCollection < ApplicationRecord
  self.primary_key= :guid
  has_many :view_object_neus, foreign_key: "view_collection_id"
  # this isn't strictly necessary, but it will prevent
  # rails from calling save, which would fail anyway.
  def readonly?
    true
  end
end
