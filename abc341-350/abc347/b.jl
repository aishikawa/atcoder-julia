function solve()
    S = readline()
    l = length(S)
    set = Set{SubString}()
    for i=1:l, j=i:l
        push!(set, S[i:j])
    end
    length(set)
end

println(solve())
