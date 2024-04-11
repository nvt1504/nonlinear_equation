function [x, error, iterations] = phuong_phap_cat_tuyen(f, x0, x1, epsilon)
    iterations = 0;
    while abs(f(x1)) > epsilon
        iterations = iterations + 1;
        a = (f(x1) - f(x0)) / (x1 - x0);
        x_tiep_theo = x1 - f(x1) / a;
        x0 = x1;
        x1 = x_tiep_theo;
    end
    x = x_tiep_theo;
    error = abs(f(x));
end

