$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  pp directors_database
  {}
  total = 0 
  directors_database.each do |director|
    director[:movies][:worldwide_gross] + total
    total
    
  end
end
