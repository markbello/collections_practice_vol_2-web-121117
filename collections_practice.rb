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
  data.map {|data_hash, idx|
    if data_hash[:temperature] = "cool"
      binding.pry
      return data_hash
    end
  }
end
