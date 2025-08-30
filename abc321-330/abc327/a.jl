function solve()
    N = parse(Int, readline())
    S = collect(readline())

    for i=1:N-1
        if (S[i] == 'a' && S[i+1] == 'b') || (S[i] == 'b' && S[i+1] == 'a') 
            return "Yes"
        end
    end

    "No"
end

println(solve())
