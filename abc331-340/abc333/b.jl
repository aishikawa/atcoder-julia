function solve()
    S = [c - 'A' for c in readline()]
    T = [c - 'A' for c in readline()]

    s = abs(S[1] - S[2])
    s = min(s, 5-s)

    t = abs(T[1] - T[2])
    t = min(t, 5-t)

    s == t ? "Yes" : "No"
end

println(solve())
