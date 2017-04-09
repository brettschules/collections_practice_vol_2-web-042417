# your code goes here
def begins_with_r(tools)
  count = 0
   tools.each {|x| count += 1 if x.start_with?("r") }
   count == tools.length ? true : false
end

def contain_a(words)
  words.select {|word| letters(word).include?("a")}
end

def letters(word)
  word.split("")
end

def first_wa(words)
  words.find {|word| word[0] == "w" && word[1] == "a"}
end

def remove_non_strings(array)
  array.select {|element| element.is_a?String }
end

def count_elements(array)
  array.group_by(&:itself).map{|k, v| k.merge(count: v.length)}
end

def merge_data(keys, data)
  merged_data = []
  keys.each do |element|
    new_name = element[:first_name]
    data.each do |names|
      if names[new_name]
        merge_name = names[new_name]
        merge_name[:first_name] = new_name
        merged_data << merge_name
      end
    end
  end
  merged_data
end

def find_cool(hashes)
  hashes.map.select { |element| element[:temperature] == "cool" }
end

def organize_schools(schools)
  locations = {}
  schools.each do |names, location|
    location_name = location[:location]
    if locations[location_name]
      locations[location_name] << names
    else
      locations[location_name] = []
      locations[location_name] << names
    end
  end
  locations
end
