function ispalindrome(s::String)::Bool
    n = length(s)
    for i=1:n÷2
        if s[i] ≠ s[n-i+1]
            return false
        end
    end
    true
end

function solve()
    N = parse(Int, readline())
    S = [readline() for _=1:N]

    for i=1:N, j=i+1:N
        if ispalindrome(S[i] * S[j]) || ispalindrome(S[j] * S[i])
            return "Yes"
        end
    end
    "No"
end

println(solve())
