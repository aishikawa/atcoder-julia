function solve()
    N = parse(Int, readline())
    sticks = Set{String}()
    for _=1:N
        s = readline()
        rs = reverse(s)
        push!(sticks, min(s, rs))
    end
    length(sticks)
end

println(solve())
