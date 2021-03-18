class Zone < ApplicationRecord
    has_many: :divisions
    belongs_to: :conference
end
