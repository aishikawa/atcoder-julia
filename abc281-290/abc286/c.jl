function solve()
    N, A, B = [parse(Int, x) for x in split(readline())]
    S = collect(readline())

    ans = N*(A+B)
    for r=0:N-1
        c = r*A
        for i=1:N÷2
            if S[mod(i+r-1, N)+1] != S[mod(N-i+r, N)+1]
                c += B
            end
        end
        ans = min(ans, c)
    end
    ans
end

println(solve())
