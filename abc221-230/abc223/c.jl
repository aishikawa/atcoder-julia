function solve()
    n = parse(Int, readline())
    doukasen = []
    for i=1:n
        d = [parse(Int, x) for x in split(readline())]
        push!(doukasen, d)
    end

    lengths = zeros(n+1)
    times = zeros(n+1)
    for i=1:n
        a, b = doukasen[i]
        lengths[i+1] = lengths[i] + a
        times[i+1] = times[i] + a / b
    end
    half= times[end] / 2
    index = searchsortedlast(times, half)

    lengths[index] + (half-times[index]) * doukasen[index][2]
end

println(solve())
