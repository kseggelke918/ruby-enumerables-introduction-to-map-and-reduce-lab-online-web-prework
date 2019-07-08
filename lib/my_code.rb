def map_to_negativize(source_array)
  i = 0 
  new_array = []
  while i < source_array.length do 
    new_array << source_array[i] * -1 
    i += 1 
  end 
  return new_array
end

def map_to_no_change(source_array)
  return source_array
end

def map_to_double(source_array)
  i = 0 
  new_array = []
  while i < source_array.length do  
    new_array << source_array[i] * 2 
  i += 1 
  end
  return new_array
end

def map_to_square(source_array)
  i = 0 
  new_array = []
  while i < source_array.length do 
    new_array << source_array[i] ** 2 
    i += 1 
  end
  return new_array
end

def reduce_to_total(source_array)
  i = 0 
  while i < source_array.length do 
    total = source_array.inject(0) {|sum, i| sum + i}
    i += 1 
  end 
  return total 
end 

def reduce_to_total(source_array, starting_point)
  i = 0 
  while i < source_array.lengh do
    total = source_array.inject(starting_point) {|sum, i| sum + i}
    i += 1 
  end
  return total 
end 




describe "reduce_to_total returns a running total when given a starting point" do
    it "reduces correctly" do
      source_array = [1,2,3]
      starting_point = 100
      expect(reduce_to_total(source_array, starting_point)).to eq(106)
    end
  end