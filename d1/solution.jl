lines = readlines("input.txt")

left_locations = Int[]
right_locations = Int[]

for line in lines
    left, right = parse.(Int, split(line))

    push!(left_locations, left)
    push!(right_locations, right)
end

sort!(left_locations)
sort!(right_locations)

total_distance = 0

for (x, y) in zip(left_locations, right_locations)
    global total_distance
    total_distance += abs(x - y)
end


print(total_distance)
