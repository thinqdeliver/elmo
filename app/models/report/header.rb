# models a row/column of headers
class Report::Header
  attr_accessor :cells
  
  def initialize(cell_params = [])
    @cells = cell_params.collect{|cp| Report::HeaderCell.new(cp)}
  end
  
  # looks for a header cell with a matching key and returns its index; returns nil if not found
  def find_key_idx(key)
    @cells.index{|c| c.key == key}
  end
  
  def collect(&block)
    @cells.collect(&block)
  end
  
  def size
    @cells.size
  end
end