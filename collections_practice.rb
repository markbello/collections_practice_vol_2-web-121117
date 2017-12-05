require "pry"
def begins_with_r(arr)
  test = false
  arr.collect {|word| word.start_with?("r") ? test = true : test = false}
  test
end

def contain_a(arr)
  arr.select{|word|
    word.include?("a")
  }
end

def first_wa(arr)
  arr.find{|word|
    word.to_s.start_with?("wa")
  }
end

def remove_non_strings(arr)
  arr.delete_if{|word|
    word != word.to_s
  }
end

def count_elements(arr)
  arr.group_by(&:itself).map{|k, v| k.merge(count: v.length)}
end

def merge_data(keys,data)
  keys.each {|key1, value1|
    name = key1[:first_name]
    key1.merge!(data[0][name])
  }
end

def find_cool(data)
  result = []
  data.each {|data_hash|
    if data_hash[:temperature] == "cool"
     result.push(data_hash)
    end
  }
  result
end

def organize_schools(schools)
  by_location = {}
  schools.each{|school, data|
    location = data[:location]
    if !by_location[location]
      by_location[location] = []
      by_location[location] << school
    else
      by_location[location].push(school)
    end
  }
  by_location
end
