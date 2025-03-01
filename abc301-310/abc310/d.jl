function search(nextmember::Int, nextteam::Int, canjoin::Matrix{Bool}, incompatibles::Matrix{Bool}, N::Int, T::Int)
    if N-nextmember < T-nextteam
        return 0
    elseif nextmember > N 
        return 1
    end

    ret = 0
    for i=1:nextteam-1
        if canjoin[i, nextmember]
            n_canjoin = copy(canjoin)
            for j=1:N
                if incompatibles[nextmember, j]
                    n_canjoin[i, j] = false
                end
            end
            ret += search(nextmember+1, nextteam, n_canjoin, incompatibles, N, T)
        end
    end

    if nextteam ≤ T
        n_canjoin = copy(canjoin)
        for j=1:N
            if incompatibles[nextmember, j]
                n_canjoin[nextteam, j] = false
            end
        end
        ret += search(nextmember+1, nextteam+1, n_canjoin, incompatibles, N, T)
    end

    ret
end

function solve()
    N, T, M = [parse(Int, x) for x in split(readline())]
    incompatibles = zeros(Bool, (N, N))
    for i=1:M
        A, B = [parse(Int, x) for x in split(readline())]
        incompatibles[A, B] = true
        incompatibles[B, A] = true
    end

    canjoin = ones(Bool, (T, N))
    search(1, 1, canjoin, incompatibles, N, T)
end

println(solve())
