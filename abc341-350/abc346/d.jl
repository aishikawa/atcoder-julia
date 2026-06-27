function solve()
    N = parse(Int, readline())
    S = collect(readline())
    C = [parse(Int, x) for x in split(readline())]
    left0, left1, right0, right1 = ntuple(_ -> zeros(Int, N), 4)

    for i=1:N
        if (i % 2 == 0 && S[i] == '0') || (i % 2 == 1 && S[i] == '1')
            left0[i] = C[i]
        end
        if (i % 2 == 0 && S[i] == '1') || (i % 2 == 1 && S[i] == '0')
            left1[i] = C[i]
        end
    end
    left0 = cumsum(left0)
    left1 = cumsum(left1)

    for i=1:N
        if i % 2 == 1
            if S[N-i+1] == '0'
                right1[i] = C[N-i+1]
            else
                right0[i] = C[N-i+1]
            end
        else
            if S[N-i+1] == '0'
                right0[i] = C[N-i+1]
            else
                right1[i] = C[N-i+1]
            end
        end
    end
    right0 = reverse(cumsum(right0))
    right1 = reverse(cumsum(right1))

    ans = 10^15
    if N % 2 == 0
        for i=1:N-1
            ans = min(ans, left0[i] + right0[i+1], left1[i] + right1[i+1])
        end
    else
        for i=1:N-1
            ans = min(ans, left0[i] + right1[i+1], left1[i] + right0[i+1])
        end
    end
    ans
end

println(solve())
