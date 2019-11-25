class Art < ApplicationRecord
    belongs_to :root_table, :optional => true

    def to_s
        self.art
     end
end
