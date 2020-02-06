class City < ApplicationRecord
	has_many :dogsitters
	has_many :dog 
	has_many :strolls 
end
