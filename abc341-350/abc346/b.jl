function solve()
    S = collect("wbwbwwbwbwbw")
    w = count(c->(c=='w'), S)
    b = count(c->(c=='b'), S)
    W, B = [parse(Int, x) for x in split(readline())]
    x = min(W ÷ w, B ÷ b)
    W = W - w * x
    B = B - b * x
    S = vcat(S, S)
    l = length(S)
    for i=1:l, j=i:l
        s = S[i:j]
        if W == count(c->(c=='w'), s) && B == count(c->(c=='b'), s)
            return "Yes"
        end
    end
    "No"
end

println(solve())
