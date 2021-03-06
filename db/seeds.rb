# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

state_list = [["Montgomery", "Alabama", 32.361538, -86.279118], ["Juneau", "Alaska", 58.301935, -134.419740], ["Phoenix", "Arizona", 33.448457, -112.073844], ["Little_Rock", "Arkansas", 34.736009, -92.331122], ["Sacramento", "California", 38.555605, -121.468926], ["Denver", "Colorado", 39.7391667, -104.984167], ["Hartford", "Connecticut", 41.767, -72.677], ["Dover", "Delaware", 39.161921, -75.526755], ["Tallahassee", "Florida", 30.4518, -84.27277], ["Atlanta", "Georgia", 33.76, -84.39], ["Honolulu", "Hawaii", 21.30895, -157.826182], ["Boise", "Idaho", 43.613739, -116.237651], ["Springfield", "Illinois", 39.783250, -89.650373], ["Indianapolis", "Indiana", 39.790942, -86.147685], ["Des_Moines", "Iowa", 41.590939, -93.620866], ["Topeka", "Kansas", 39.04, -95.69], ["Frankfort", "Kentucky", 38.197274, -84.86311], ["Baton_Rouge", "Louisiana", 30.45809, -91.140229], ["Augusta", "Maine", 44.323535, -69.765261], ["Annapolis", "Maryland", 38.972945, -76.501157], ["Boston", "Massachusetts", 42.2352, -71.0275], ["Lansing", "Michigan", 42.7335, -84.5467], ["Saint_Paul", "Minnesota", 44.95, -93.094], ["Jackson", "Mississippi", 32.320, -90.207], ["Jefferson_City", "Missouri", 38.572954, -92.189283], ["Helana", "Montana", 46.595805, -112.027031], ["Lincoln", "Nebraska", 40.809868, -96.675345], ["Carson_City", "Nevada", 39.160949, -119.753877], ["Concord", "New_Hampshire", 43.220093, -71.549127], ["Trenton", "New_Jersey", 40.221741, -74.756138], ["Santa_Fe", "New_Mexico", 35.667231, -105.964575], ["Albany", "New_York", 42.659829, -73.781339], ["Raleigh", "North_Carolina", 35.771, -78.638], ["Bismarck", "North_Dakota", 48.813343, -100.779004], ["Columbus", "Ohio", 39.962245, -83.000647], ["Oklahoma_City", "Oklahoma", 35.482309, -97.534994], ["Salem", "Oregon", 44.931109, -123.029159], ["Harrisburg", "Pennsylvania", 40.269789, -76.875613], ["Providence", "Rhode_Island", 41.82355, -71.422132], ["Columbia", "South_Carolina", 34.000, -81.035], ["Pierre", "South_Dakota", 44.367966, -100.336378], ["Nashville", "Tennessee", 36.165, -86.784], ["Austin", "Texas", 30.266667, -97.75], ["Salt_Lake_City", "Utah", 40.7547, -111.892622], ["Montpelier", "Vermont", 44.26639, -72.57194], ["Richmond", "Virginia", 37.54, -77.46], ["Olympia", "Washington", 47.042418, -122.893077], ["Charleston", "West_Virginia", 38.349497, -81.633294], ["Madison", "Wisconsin", 43.074722, -89.384444], ["Cheyenne", "Wyoming", 41.145548, -104.802042]]


state_list.each do | capitol, state, long, lat|

  Distance.create(city_name: capitol, state_abbrev: state, longitude: long, latitude: lat)

end
