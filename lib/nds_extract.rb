$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  list = {}
  nds.each do |director|
    total = 0 
    director[:movies].each do |movie|
      total = total + movie[:worldwide_gross]
    end
      list[director[:name]] = total
  end
  list
end
