function compute_pi(n)
    local pi = 4.0
    for i = 3, n+2, 2 do
        pi = pi * (i-1)/i * (i+1)/i
    end
    return pi
end

local n = 1
while n <= 10000000 do
    print(n, "\t", compute_pi(n))
    n = n * 2
end
