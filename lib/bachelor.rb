require "pry"

def get_first_name_of_season_winner(data, season)
  data[season].each do |contestant|
    if contestant["status"] == "Winner"
      return contestant["name"].split[0]
    end
  end
end 

def get_contestant_name(data, occupation)
  # code here
  data.each do |season, contestant|
    contestant.each do |data|
      if data["occupation"] == occupation
        return data["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  counter = 0
  data.each do |season, contestant|
    contestant.each do |contestant_data|
      if contestant_data["hometown"] == hometown
        counter = counter + 1
      end
    end
  end
counter
end

def get_occupation(data, hometown)
  # code here
  data.each do |season, contestant|
    contestant.each do |contestant_data|
      if contestant_data["hometown"] == hometown
        return contestant_data["occupation"]
      end
    end
  end   
end

def get_average_age_for_season(data, season)
  new_array = []
  data[season].each do |contestant|
    new_array << contestant["age"].to_f
  end
    (new_array.inject(0, :+) / new_array.size).round
end

