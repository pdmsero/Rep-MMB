function [lhs, rhs] = dynamic_resid(y, x, params, steady_state)
T = NaN(0, 1);
lhs = NaN(3, 1);
rhs = NaN(3, 1);
lhs(1) = y(6);
rhs(1) = params(6)*y(5)+params(7)*y(4);
lhs(2) = y(4);
rhs(2) = y(7)-1/params(1)*(y(6)-y(8))+x(1);
lhs(3) = y(5);
rhs(3) = y(8)*params(3)+y(4)*params(5)*(params(1)+params(2))+y(6)*params(5);
end
