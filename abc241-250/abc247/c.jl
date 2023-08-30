function solve()
    n = parse(Int, readline())
    s = "1"

    for i=2:n
        s = "$(s) $(i) $(s)"
    end

    s
end

println(solve())
