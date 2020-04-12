# How could the unnecessary duplication in 
# this method be removed?

def color_valid(color)
  if color == "blue" || color == "green"
    true
  else
    false
  end
end

# Ruby will automatically evaluate statements,
# so the above method can be significantly 
# simplified by changing it to just:

def color_valid(color)
  color == "blue" || color == "green"
end

# Both of these methods do exactly the
# same thing - but one is much more complex
# to read.