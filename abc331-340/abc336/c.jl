function solve()
    N = parse(Int, readline())
    N = N - 1
    if N == 0
        "0"
    else
        ans = ""
        while N ≠ 0
            r = N % 5
            if r == 0
                ans = "0" * ans
            elseif r == 1
                ans = "2" * ans
            elseif r == 2
                ans = "4" * ans
            elseif r == 3
                ans = "6" * ans
            elseif r == 4
                ans = "8" * ans
            end
            N = N ÷ 5
        end
        ans
    end
end

println(solve())
