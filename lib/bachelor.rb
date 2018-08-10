def get_first_name_of_season_winner(data, season)
  contestants = data[season] 
  contestants.select do |person|
  	if person["status"] == "Winner"
  		return person["name"].split(" ")[0]
  	end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, contestants|
  	contestants.each do |person|
  		if person["occupation"] == occupation
  			return person["name"]
  		end
  	end
  end
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |season, contestants|
  	contestants.each do |person|
  		if person["hometown"] == hometown
  			count += 1
  		end
  	end
  end
  count
end

def get_occupation(data, hometown)
  data.each do |season, contestants|
  	contestants.each do |person|
  		if person["hometown"] == hometown
  			return person["occupation"]
  		end
  	end
  end
end

def get_average_age_for_season(data, season)
  sum = 0
  contestants = data[season]
  contestants.each do |person|
  	sum += person["age"].to_f
  end
  (sum / contestants.length).round
end
