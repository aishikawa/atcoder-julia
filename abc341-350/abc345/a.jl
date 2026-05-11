function solve()
    S = collect(readline())
    if S[1] == '<' && S[end] == '>' && all(c->c=='=', S[2:end-1])
        "Yes"
    else
        "No"
    end
end

println(solve())
