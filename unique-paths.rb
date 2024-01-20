#62
# @param {Integer} m
# @param {Integer} n
# @return {Integer}

def unique_paths(m, n)
  @grid = Hash.new
  find_path(0,0,m,n)
  @grid[[0,0]] || 1
end

def find_path(y,x,m,n)
  down = 0
  right = 0
  return @grid[[y,x]] if !@grid[[y,x]].nil?
  if (y == m-1 and x == n-1)
    return 1
  end
  down = find_path(y+1,x,m,n) if y<m-1
  right = find_path(y,x+1,m,n) if x<n-1
  @grid[[y,x]] = down + right 
  return @grid[[y,x]]
end
