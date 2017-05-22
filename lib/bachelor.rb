
def get_first_name_of_season_winner(data, season)

data.each do |the_season,array|
    if the_season.to_s === season
      array.each do |info|
        if info["status"] == "Winner"
          return info["name"].split(" ")[0]
      end
    end
  end
end
  end



def get_contestant_name(data, occupation)

data.each do |season,array|
  array.each do |info|
    if info["occupation"] == occupation
      return info["name"]

end
end
end
end

def count_contestants_by_hometown(data, hometown)

  counter = 0

  data.each do |season,array|
    array.each do |info|
      if info["hometown"] == hometown
        counter +=1

  end
  end
  end
  counter
  end

def get_occupation(data, hometown)

data.each do |season,array|
  array.each do |info|
    if info["hometown"] == hometown
      return info["occupation"]
end
end
end
end

def get_average_age_for_season(data, season)

sum = 0
counter = 0

final = nil

data.each do |the_season,array|
  if the_season.to_s == season
   array.each do |info|
sum += info["age"].to_i
counter +=1
      end
    end
  end
      final = (sum/counter.to_f).round
end
