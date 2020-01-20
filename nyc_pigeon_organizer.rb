def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data[:gender].each_pair { | k, v |
  v.map { |name| pigeon_list[name] = {} }
  }
  # color 
  
  # data.each_key { | key | 
  #   data[key].each_pair { | k,v| 
  #   v.each { |name| pigeon_list[name][key].push(k.to_s)
  #     }
  #   }
  # }

  
  return pigeon_list
end
