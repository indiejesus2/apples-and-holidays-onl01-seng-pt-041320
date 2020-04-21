require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash.each do |season, holiday_details_hash|
    if season == :summer
      holiday_details_hash.each do |holiday, gear|
        if holiday == :fourth_of_july
          return gear[1]
        end
      end
    end
  end
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash.each do |season, holiday_details_hash|
    if season == :winter
      holiday_details_hash.each do |holiday, gear|
        gear[-1] = supply
      end
    end
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash.each do |season, holiday_details_hash|
    if season == :spring
      holiday_details_hash.each do |holiday, gear|
        if holiday == :memorial_day
          gear[-1] = supply
        end
      end
    end
  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash.each do |seasons, holiday_details_hash|
    if season == seasons
      holiday_hash[seasons][holiday_name] = supply_array
    end
  end
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  supplies = []
  holiday_hash.each do |season, holiday_details_hash|
    if season == :winter
      holiday_details_hash.each do |holiday, gear|
        supplies << gear
      end
    end
  end
  supplies.to_s
end

def all_supplies_in_holidays(holiday_hash)
  supplies = []
  holiday_hash.map do |season, holiday_details_hash|
    puts "#{season.capitalize}:"
    holiday_details_hash.map do |holiday, gear|
      gear = gear.join(", ")
      holiday = holiday.to_s.split("_").map {|capital| capital.capitalize}.join(" ")
      puts ("  #{holiday}: #{gear}")
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  grill = []
  holiday_hash.each do |season, supply_hash|
    supply_hash.each do |holiday, supply|
      if supply.include?("BBQ")
        grill << holiday
      end
    end
  end
  grill
end




# def all_supplies_in_holidays(holiday_hash)
#   supplies = []
#   holiday_hash.map do |season, holiday_details_hash|
#     season = season.to_s
#     season.capitalize!
#     puts "#{season}:"
#     holiday_details_hash.map do |holiday, gear|
#       holiday = holiday.to_s
#       gear = gear.join(", ")
#       if holiday.include?("_") 
#         holiday = holiday.split("_")
#         holiday.map do |capital|
#           capital.capitalize!
#         end
#         holiday = holiday.join(" ")
#       else
#         holiday.capitalize!
#       end
#       puts ("  #{holiday}: #{gear}")
#     end
#   end
# end


