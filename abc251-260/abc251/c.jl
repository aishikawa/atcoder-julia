function solve()
    n = parse(Int, readline())
    set = Set{String}()
    maxscore = -1
    maxindex = 0

    for i=1:n
        s, t = split(readline())
        t = parse(Int, t)

        if s ∉ set && t > maxscore
            maxscore = t
            maxindex = i
        end

        push!(set, s)
    end

    maxindex
end

println(solve())
