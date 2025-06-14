function solve()
    N = collect(readline())
    for i=1:length(N)-1
        if N[i] ≤ N[i+1]
            return "No"
        end
    end
    "Yes"
end

println(solve())
