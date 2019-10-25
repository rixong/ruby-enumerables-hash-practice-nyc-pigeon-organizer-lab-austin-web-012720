def nyc_pigeon_organizer(data)
    pigeon_list = {}
    # iterate over gender hash to collect names, and create empty hashes (color, lives keys)
    data[:gender].each_pair do |(key, value)|
       data[:gender][key].map {|name| pigeon_list[name] = {:color => [], :gender => [], :lives => []}}
    end
    
    # iterate through other attributes to fill in data

    data.each_pair do |(key1, value1)|
      data[key1].each_pair do |(key,value)|
        data[key1][key].map {|name| pigeon_list[name][key1].push(key.to_s)}
      end
    end
    return pigeon_list 
end
