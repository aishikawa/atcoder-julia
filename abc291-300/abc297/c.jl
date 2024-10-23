function solve()
    H, W = [parse(Int, x) for x in split(readline())]
    for _=1:H
        S = collect(readline())
        for i=2:W
            if S[i-1] == 'T' && S[i] == 'T'
                S[i-1] = 'P'
                S[i] = 'C'
            end
        end
        println(String(S))
    end
end

solve()
