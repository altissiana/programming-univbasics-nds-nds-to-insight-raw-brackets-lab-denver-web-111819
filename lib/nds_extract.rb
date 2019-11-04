$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  list = {}
  nds.each do |director|
    name = director[:name]
    total = 0 
    director[:movies].each do |movie|
      total = total + movie[:worldwide_gross]
    end
      list[name] = total
  end
  list
end
