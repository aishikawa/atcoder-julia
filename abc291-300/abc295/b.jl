function solve()
    R, C = [parse(Int, x) for x in split(readline())]
    ans = fill('#', R, C)
    for r=1:R
        line = collect(readline())
        for (c, b) in enumerate(line)
            if b == '.'
                ans[r, c] = '.'
            elseif '1' ≤ b ≤ '9'
                ans[r, c] = '.'
                n = parse(Int, b)
                for d=1:n
                    for i=0:d-1
                        if 1 ≤ r-d+i ≤ R && 1 ≤ c-i ≤ C
                            ans[r-d+i, c-i] = '.'
                        end
                        if 1 ≤ r+i ≤ R && 1 ≤ c-d+i ≤ C
                            ans[r+i, c-d+i] = '.'
                        end
                        if 1 ≤ r+d-i ≤ R && 1 ≤ c+i ≤ C
                            ans[r+d-i, c+i] = '.'
                        end
                        if 1 ≤ r-i ≤ R && 1 ≤ c+d-i ≤ C
                            ans[r-i, c+d-i] = '.'
                        end
                    end
                end
            end
        end
    end
    for r=1:R
        println(String(ans[r, :]))
    end
end

solve()
