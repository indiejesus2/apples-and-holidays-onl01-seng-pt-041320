require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash.each {|season, holiday_details_hash| 
    holiday_details_hash.each {|holiday, gear| return gear[1] if holiday == :fourth_of_july}
  }  
end                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash.each {|season, holiday_details_hash| 
    holiday_details_hash.each {|holiday, gear| gear << supply if season == :winter}
  }                         
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash.each {|season, holiday_details_hash| 
    holiday_details_hash.each {|holiday, gear| gear << supply if holiday == :memorial_day}
  }
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash.each {|seasons, holiday_details_hash| 
  holiday_hash[seasons][holiday_name] = supply_array if season == seasons}
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  supplies = []
  holiday_hash.each {|season, holiday_details_hash|
    holiday_details_hash.each {|holiday, gear| supplies << gear if season == :winter}
  }
  supplies.to_s
end

def all_supplies_in_holidays(holiday_hash)                        
  holiday_hash.map {|season, holiday_details_hash|
    puts "#{season.capitalize}:"
    holiday_details_hash.map {|holiday, gear|
      gear = gear.join(", ")
      holiday = holiday.to_s.split("_").map {|capital| capital.capitalize}.join(" ")
      puts ("  #{holiday}: #{gear}")
    }
  }
end

def all_holidays_with_bbq(holiday_hash)
  grill = []
  holiday_hash.each {|season, supply_hash|
    supply_hash.each {|holiday, supply| grill << holiday if supply.include?("BBQ")
    }
  }
  grill
end