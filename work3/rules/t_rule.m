function [gamma] = t_rule(x, y, g, gamma)
%heuristic_gamma_rule Heuristic rule for gamma.

b = 0.8;
g = g(:, end);
x = [x(end); y(end)];

while f(x(1) - g(1), x(2) - g(2)) > f(x(1), x(2)) - gamma / 2 * ((norm(g))^2);
    gamma = b * gamma;
end

end