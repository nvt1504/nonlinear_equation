function [x, num_steps] = day_cung(f, a, c, epsilon)
    if f(a) * f(c) > 0
        error('f(a) và f(c) phải có dấu trái ngược nhau');
    end

    num_steps = 0;
    while abs(c - a) > epsilon
        x =  (a * f(c) - c * f(a)) / (f(c) - f(a));
        if f(x) == 0
            return;
        elseif f(a) * f(x) < 0
            c = x;
        else
            a = x;
        end
        num_steps = num_steps + 1;
    end
end
