function solve()
    S = collect(readline())
    for i=2:length(S)
        if S[i] ≠ S[i-1]
            if i ≠ 2
                return i
            else
                if S[i] == S[i+1]
                    return 1
                else
                    return 2
                end
            end
        end
    end
end

println(solve())
