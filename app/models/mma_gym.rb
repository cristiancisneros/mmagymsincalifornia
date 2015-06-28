class MmaGym < ActiveRecord::Base
  extend FriendlyId
  friendly_id :slug_candidates, use: :slugged
  
   def slug_candidates
      [:name, :city]  
  end
  
end