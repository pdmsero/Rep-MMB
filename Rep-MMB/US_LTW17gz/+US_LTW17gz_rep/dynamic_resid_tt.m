function T = dynamic_resid_tt(T, y, x, params, steady_state, it_)
% function T = dynamic_resid_tt(T, y, x, params, steady_state, it_)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T             [#temp variables by 1]     double  vector of temporary terms to be filled by function
%   y             [#dynamic variables by 1]  double  vector of endogenous variables in the order stored
%                                                    in M_.lead_lag_incidence; see the Manual
%   x             [nperiods by M_.exo_nbr]   double  matrix of exogenous variables (in declaration order)
%                                                    for all simulation periods
%   steady_state  [M_.endo_nbr by 1]         double  vector of steady state values
%   params        [M_.param_nbr by 1]        double  vector of parameter values in declaration order
%   it_           scalar                     double  time period for exogenous variables for which
%                                                    to evaluate the model
%
% Output:
%   T           [#temp variables by 1]       double  vector of temporary terms
%

assert(length(T) >= 17);

T(1) = (params(78)+params(80))/params(78)*(1-params(4));
T(2) = params(41)/(params(56)-params(41));
T(3) = params(56)/(params(56)-params(41));
T(4) = params(53)/(1+params(53));
T(5) = params(2)*params(54)/params(56);
T(6) = params(42)*params(85)/(params(76)+params(42)*params(85));
T(7) = (1-params(12))/params(12);
T(8) = T(7)*params(52)/(1-params(52));
T(9) = (-1)/((1+params(2))*params(13)*exp(2*params(55)));
T(10) = params(2)/(1+params(2));
T(11) = (1-params(2)*params(22))/(1+params(2));
T(12) = params(50)/params(2);
T(13) = params(79)*params(52)*params(69)/params(92);
T(14) = params(75)*params(51)*params(63)/params(92);
T(15) = params(53)*params(81)/params(92);
T(16) = params(83)/params(92);
T(17) = params(85)/params(92);

end
