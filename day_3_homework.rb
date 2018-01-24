# ==============================================
# A.
# ==============================================

stops = [ "Croy", "Cumbernauld", "Falkirk High", "Linlithgow", "Livingston", "Haymarket"]

# ==============================================


# 1
stops.push("Edinburgh Waverly")

# 2
stops.unshift("Glasgow Queen Street")

# 3
stops.insert(4, "Polmont")


# 4
p stops.index("Linlithgow")


# 5
stops.delete("Livingston")


# 6
stops.delete_at(2)

# 7 How many stops are in the array?
p stops.length
# Answer 7

# 8 How many ways can return falkirk high from the array?

p stops[2]
p stops [-5]

# 9 Reverse the position of the stops in the array

p stops.reverse


# 10 Print out all the stops with a for loop

for stop in stops
  p stop
end

p stops



# ==============================================
# B.
# ==============================================

users = {
  "Jonathan" => {
    :twitter => "jonnyt",
    :favourite_numbers => [12, 42, 75, 12, 5],
    :home_town => "Stirling",
    :pets => {
      "fluffy" => :cat,
      "fido" => :dog,
      "spike" => :dog
    }
  },
  "Erik" => {
    :twitter => "eriksf",
    :favourite_numbers => [8, 12, 24],
    :home_town => "Linlithgow",
    :pets => {
      "nemo" => :fish,
      "kevin" => :fish,
      "spike" => :dog,
      "rupert" => :parrot
    }
  },
  "Avril" => {
    :twitter => "bridgpally",
    :favourite_numbers => [12, 14, 85, 88],
    :home_town => "Dunbar",
    :pets => {
      "colin" => :snake
    }
  },
}

# ==============================================


# 1
p users["Jonathan"][:twitter]


# 2
p users["Erik"][:home_town]


# 3
p users["Erik"][:favourite_numbers]

# 4
p users["Avril"][:pets]["colin"]
# Maybe you'd prefer a string rather than a symbol?
p users["Avril"][:pets]["colin"].to_s

# 5
# Just in case the numbers aren't already in order
p users["Erik"][:favourite_numbers].sort.first

# 6
# I did the line below first:
# p users["Erik"][:favourite_numbers] << 7
# Then changed it to this to keep it in order
p (users["Erik"][:favourite_numbers] << 7).sort

# 7
users["Erik"][:home_town] = "Edinburgh"
p users["Erik"]

# 8
users["Erik"][:pets]["Fluffy"] = :dog
p users["Erik"]

#9

users["Meself"] = {
    :twitter => "quiteenoughweesniderontheinternet",
    :favourite_numbers => [1, 2, 3, 4],
    :home_town => "trongate",
    :pets => {
      "cecil" => :bat,
      "egbert" => :humpback_whale
    }
  }

p users



# ==============================================
# C.
# ==============================================

united_kingdom = [
  {
    name: "Scotland",
    population: 5295000,
    capital: "Edinburgh"
  }, {
    name: "Wales",
    population: 3063000,
    capital: "Swansea"
  }, {
    name: "England",
    population: 53010000,
    capital: "London"
  }
]

# ==============================================


#1
united_kingdom[1][:capital] = "Cardiff"
p united_kingdom[1][:capital]

#2
united_kingdom <<
  {
    name: "Northern Ireland",
    population: 1811000,
    capital: "Belfast"
  }

p united_kingdom

#3

for country in united_kingdom
  p country[:name]
end


#4
total_population = 0
for country in united_kingdom
  total_population = total_population + country[:population]
end
p total_population
