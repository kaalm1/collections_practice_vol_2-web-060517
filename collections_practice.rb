# your code goes here
def begins_with_r(arr)
  arr.all? { |x| x[0].downcase == 'r'}
end

def contain_a(arr)
  arr.select { |x| x.include?('a')}
end

def first_wa(arr)
  arr.each { |x| return x if x[0..1] == 'wa'}
end

def remove_non_strings(arr)
  arr.select { |x| x.is_a? String}
end

def count_elements(arr)

    newHash = Hash.new(0)
    arr.each { |x| newHash[x] +=1}
    newarr = []
    newHash.each do |key,value|
      key.each do |newkey,newvalue|
        newarr << {newkey =>newvalue, :count => value}
      end
    end
    newarr


end

def merge_data(arr1,arr2)
    newarr = []
    (0...arr1.length).each do |x|
      newHash = {}
      arr1[x].each do |key,value|
        newHash[key] = value
      end
      arr2[0].values[x].each do |key,value|
        newHash[key] = value
      end
      newarr << newHash
    end
    newarr
end

def find_cool(arr)
  newarr =[]
  arr.each do |x|
    newarr << x if x.values.include?('cool')
  end
  newarr
end

def organize_schools(schools)
    newHash = Hash.new([])
    schools.each do |sch,city|
      newHash[city.values[0]].push(sch) if !newHash[city.values[0]].empty?
      newHash[city.values[0]] = [sch] if newHash[city.values[0]].empty?
    end
    newHash
end
