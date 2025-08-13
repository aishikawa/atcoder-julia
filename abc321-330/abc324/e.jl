function solve()
    N, T = split(readline())
    N = parse(Int, N)
    T = collect(T)
    lenT = length(T)
    pre = zeros(Int, N)
    post = zeros(Int, N)
    for i=1:N
        S = collect(readline())
        lenS = length(S)
        k = 0
        for j=1:lenS            
            if k+1 ≤ lenT && S[j] == T[k+1]
                k += 1
            end
        end
        pre[i] = k
        k = 0
        for j=lenS:-1:1
            if lenT - k ≥ 1  && S[j] == T[lenT-k]
                k += 1
            end
        end
        post[i] = k
    end

    sort!(pre)
    sort!(post, rev=true)

    ans = 0
    j = 0
    for i=1:N
        while j+1 ≤ N && pre[i] + post[j+1] ≥ lenT
            j += 1
        end
        ans += j
    end
    ans
end

println(solve())
