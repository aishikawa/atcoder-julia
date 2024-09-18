function solve()
    S = collect(readline())
    for i=1:length(S)÷2
        S[2i-1], S[2i] = S[2i], S[2i-1]
    end
    String(S)
end

println(solve())
