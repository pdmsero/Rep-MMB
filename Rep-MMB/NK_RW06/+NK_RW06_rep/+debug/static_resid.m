function [lhs, rhs] = static_resid(y, x, params)
T = NaN(0, 1);
lhs = NaN(3, 1);
rhs = NaN(3, 1);
lhs(1) = y(3);
rhs(1) = params(6)*y(2)+params(7)*y(1);
lhs(2) = y(1);
rhs(2) = y(1)-1/params(1)*(y(3)-y(2))+x(1);
lhs(3) = y(2);
rhs(3) = y(2)*params(3)+y(1)*params(5)*(params(1)+params(2))+y(3)*params(5);
end
