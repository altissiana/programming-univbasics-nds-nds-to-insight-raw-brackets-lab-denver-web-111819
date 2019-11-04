$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  pp directors_database
  {}
  directors_database.each do |director|
    total = 0 
    director[:movies].each do |movie|
      total = total + movie[:worldwide_gross]
    end
    total
    
  end
end
