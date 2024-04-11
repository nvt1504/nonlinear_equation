function [x, error, iterations] = newton_method(f, f_prime, x0, epsilon)
    iterations = 0;
    while abs(f(x0)) > epsilon
        iterations = iterations + 1;
        x0 = x0 - f(x0) / f_prime(x0);
    end
    x = x0;
    error = abs(f(x0));
end
