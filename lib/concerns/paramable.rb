module Paramable
  
  module InstantMethods
    
    def to_param
      name.downcase.gsub(' ', '-')
    end
    
  end
  
end