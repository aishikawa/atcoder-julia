readintegers() = [parse(Int, x) for x in split(readline())]

n, m = readintegers()
votes = readintegers()

votes = sort!(votes, rev=true)
threshold = 1/(4m) * sum(votes)
sol = votes[m] >= threshold ? "Yes" : "No"

print(sol)
