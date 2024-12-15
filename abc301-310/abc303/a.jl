function solve()
    N = parse(Int, readline())
    S = collect(readline())
    T = collect(readline())

    for i=1:N
        if ! (S[i] == T[i] || (S[i] == '1' && T[i] == 'l') || (S[i] == 'l' && T[i] == '1') || (S[i] == '0' && T[i] == 'o') || (S[i] == 'o' && T[i] == '0'))
            return "No"
        end
    end
    "Yes"
end

println(solve())
