N, A, X, Y = [parse(Int, x) for x in split(readline())]
memo = Dict{Int, Float64}()

function f(x)
    if x == 0
        0
    elseif x in keys(memo)
        memo[x]
    else
        y = min(X+f(x÷A), (6Y+f(x÷2)+f(x÷3)+f(x÷4)+f(x÷5)+f(x÷6))/5)
        memo[x] = y
    end
end

println(f(N))
