function residual = dynamic_resid(T, y, x, params, steady_state, it_, T_flag)
% function residual = dynamic_resid(T, y, x, params, steady_state, it_, T_flag)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T             [#temp variables by 1]     double   vector of temporary terms to be filled by function
%   y             [#dynamic variables by 1]  double   vector of endogenous variables in the order stored
%                                                     in M_.lead_lag_incidence; see the Manual
%   x             [nperiods by M_.exo_nbr]   double   matrix of exogenous variables (in declaration order)
%                                                     for all simulation periods
%   steady_state  [M_.endo_nbr by 1]         double   vector of steady state values
%   params        [M_.param_nbr by 1]        double   vector of parameter values in declaration order
%   it_           scalar                     double   time period for exogenous variables for which
%                                                     to evaluate the model
%   T_flag        boolean                    boolean  flag saying whether or not to calculate temporary terms
%
% Output:
%   residual
%

if T_flag
    T = US_LTW17gz_rep.dynamic_resid_tt(T, y, x, params, steady_state, it_);
end
residual = zeros(83, 1);
residual(1) = y(43)-(params(78)+params(80))/params(78)*params(4)*y(40)-T(1)*y(42);
residual(2) = y(40)+y(47)-y(48)-y(42);
residual(3) = y(57)-params(4)*y(47)+y(48)*(params(4)-1);
    residual(4) = (params(48)*y(49)-params(48)*params(2)/(1+params(2)*params(15))*y(123)-y(57)-params(48)*y(84)) - (params(48)*params(15)/(1+params(2)*params(15))*y(6));
    residual(5) = (y(59)+T(2)*y(79)+T(3)*y(61)-y(80)+T(4)*y(54)) - (T(2)*y(15));
residual(6) = y(123)+y(63)+y(60)-T(5)*y(127)-T(5)*y(126);
residual(7) = y(63)+y(60)+y(62);
residual(8) = y(61)-params(76)/(params(76)+params(42)*params(85))*y(36)-T(6)*y(44);
residual(9) = y(123)+y(59)-y(38)-y(125)+y(79)*params(22);
residual(10) = y(47)*T(7)-y(41)-T(8)*y(52);
residual(11) = y(38)+y(46)-y(123)-params(2)*exp((-params(55)))*(1-params(3))*y(120)-(1-params(52))*params(2)*exp((-params(55)))*params(60)*y(121)+params(60)*params(2)*params(52)*exp((-params(55)))*y(124);
    residual(12) = (y(46)*T(9)+y(39)-T(10)*y(119)+y(79)*T(11)-y(82)) - (1/(1+params(2))*y(2));
    residual(13) = (y(79)+y(40)-y(41)) - (y(13));
    residual(14) = (y(58)-y(82)*(1+params(2))*params(13)*exp(2*params(55))*(1-exp((-params(55)))*(1-params(3)))-y(39)*(1-exp((-params(55)))*(1-params(3)))+y(79)*exp((-params(55)))*(1-params(3))) - (y(13)*exp((-params(55)))*(1-params(3)));
    residual(15) = (y(59)+y(48)*(1+params(49))-T(10)*params(49)*y(122)+y(49)*params(49)*(1+params(2)*params(14))/(1+params(2))-y(123)*T(10)*params(49)-y(42)*params(8)+y(79)*params(49)*(1+params(2)*params(14)-params(2)*params(22))/(1+params(2))-params(51)/(1-params(51))*y(53)-params(49)*y(83)-y(80)) - (params(49)/(1+params(2))*y(5)+y(6)*params(49)*params(14)/(1+params(2))+params(49)*params(14)/(1+params(2))*y(17));
    residual(16) = (y(38)-y(49)*(1-params(24))*params(16)-y(43)*(1-params(24))*params(17)-y(81)) - (params(24)*y(1));
residual(17) = params(81)*y(45)+y(39)*params(82)-y(43)*params(78)+y(44)*params(78)*params(93)+y(41)*params(61)*params(79);
residual(18) = (1+params(53))*params(77)*y(37)+y(54)*params(53)*params(77)-y(48)*(1-params(51))*params(63)*params(75)-y(42)*(1-params(51))*params(63)*params(75)+y(53)*params(51)*params(63)*params(75)-params(83)*y(56);
residual(19) = params(81)*y(45)-y(36)*params(76)*(1-params(9))-y(37)*params(77)*params(9);
residual(20) = y(60)+y(38)-y(126)*params(54)*params(59)/(1+params(54)*params(59));
    residual(21) = (params(50)*y(50)-y(44)*params(93)-y(56)*params(83)/params(78)+y(52)*params(52)*params(69)*params(86)+y(47)*params(52)*params(69)*params(86)+y(40)*params(52)*params(69)*params(86)+y(79)*T(12)+y(53)*params(51)*params(63)*params(88)+y(48)*params(51)*params(63)*params(88)+y(42)*params(51)*params(63)*params(88)+y(45)*params(53)*params(87)+y(54)*params(53)*params(87)-y(60)*exp((-params(55)))*params(54)*params(50)+y(49)*T(12)) - (T(12)*y(7)-T(12)*y(14));
    residual(22) = (y(44)-y(77)) - (params(28)*y(3)-(1-params(28))*params(18)*y(8));
    residual(23) = (y(52)) - (y(8)*(1-params(29))*params(19)+params(29)*y(9));
    residual(24) = (y(53)) - (y(8)*(1-params(30))*params(20)+params(30)*y(10));
    residual(25) = (y(54)) - (params(31)*y(11));
    residual(26) = (y(56)-y(78)) - (y(8)*(-(1-params(32)))*params(21)+params(32)*y(12));
residual(27) = y(123)+y(55)-y(38);
residual(28) = y(43)+y(51)-y(50);
residual(29) = y(68)-y(54)-y(45);
residual(30) = y(66)-y(52)-y(47)-y(40);
    residual(31) = (y(49)+y(65)-y(60)*T(5)) - ((-y(14)));
residual(32) = y(64)-y(52)*T(13)-y(47)*T(13)-y(40)*T(13)-y(53)*T(14)-y(48)*T(14)-y(42)*T(14)-y(54)*T(15)-y(45)*T(15)+y(56)*T(16)+y(44)*T(17);
residual(33) = y(67)-y(53)-y(48)-y(42);
    residual(34) = (y(69)-y(45)*100-y(79)*100) - ((-100)*y(4));
    residual(35) = (y(70)-y(39)*100-y(79)*100) - (y(2)*(-100));
    residual(36) = (y(71)-y(44)*100-y(79)*100) - (y(3)*(-100));
    residual(37) = (y(72)-y(48)*100-y(79)*100) - (y(5)*(-100));
    residual(38) = (y(73)-y(50)*100-y(79)*100) - (y(7)*(-100));
residual(39) = y(74)-y(38)*100;
residual(40) = y(75)-y(49)*100;
residual(41) = y(76)-y(42)*100;
    residual(42) = (y(78)) - (params(45)*y(16)+x(it_, 1));
    residual(43) = (y(79)) - (params(22)*y(17)+x(it_, 2));
    residual(44) = (y(80)) - (params(23)*y(18)+x(it_, 3));
    residual(45) = (y(81)) - (params(43)*y(19)+x(it_, 4));
    residual(46) = (y(82)) - (params(25)*y(20)+x(it_, 5));
    residual(47) = (y(83)) - (params(26)*y(21)+x(it_, 6));
    residual(48) = (y(84)) - (params(27)*y(22)+x(it_, 7));
residual(49) = y(91)-(params(78)+params(80))/params(78)*params(4)*y(88)-T(1)*y(90);
residual(50) = y(88)+y(95)-y(96)-y(90);
residual(51) = (params(4)-1)*y(96)-params(4)*y(95);
residual(52) = y(104);
    residual(53) = (T(2)*y(79)+y(106)+T(3)*y(107)-y(80)+T(4)*y(101)) - (T(2)*y(34));
residual(54) = y(107)-params(76)/(params(76)+params(42)*params(85))*y(85)-T(6)*y(92);
residual(55) = y(79)*params(22)+y(106)-y(102)-y(132);
residual(56) = T(7)*y(95)-y(89)-T(8)*y(99);
residual(57) = y(102)+y(94)-params(2)*exp((-params(55)))*(1-params(3))*y(129)-(1-params(52))*params(2)*exp((-params(55)))*params(60)*y(130)+params(60)*params(2)*params(52)*exp((-params(55)))*y(131);
    residual(58) = (y(79)*T(11)+T(9)*y(94)+y(87)-T(10)*y(128)-y(82)) - (1/(1+params(2))*y(23));
    residual(59) = (y(79)+y(88)-y(89)) - (y(33));
    residual(60) = (y(79)*exp((-params(55)))*(1-params(3))+y(105)-y(82)*(1+params(2))*params(13)*exp(2*params(55))*(1-exp((-params(55)))*(1-params(3)))-(1-exp((-params(55)))*(1-params(3)))*y(87)) - (exp((-params(55)))*(1-params(3))*y(33));
residual(61) = y(106)+y(96)-params(8)*y(90)-params(51)/(1-params(51))*y(100)-y(80);
residual(62) = params(81)*y(93)+params(82)*y(87)-params(78)*y(91)+params(78)*params(93)*y(92)+params(61)*params(79)*y(89);
residual(63) = (1+params(53))*params(77)*y(86)+params(53)*params(77)*y(101)-(1-params(51))*params(63)*params(75)*y(96)-(1-params(51))*params(63)*params(75)*y(90)+params(51)*params(63)*params(75)*y(100)-params(83)*y(103);
residual(64) = params(81)*y(93)-params(76)*(1-params(9))*y(85)-params(77)*params(9)*y(86);
    residual(65) = (params(50)*y(97)-params(93)*y(92)-params(83)/params(78)*y(103)+params(52)*params(69)*params(86)*y(99)+params(52)*params(69)*params(86)*y(95)+params(52)*params(69)*params(86)*y(88)+params(51)*params(63)*params(88)*y(100)+params(51)*params(63)*params(88)*y(96)+params(51)*params(63)*params(88)*y(90)+params(53)*params(87)*y(93)+params(53)*params(87)*y(101)) - (T(12)*y(35)+T(12)*y(27)-y(79)*T(12));
    residual(66) = (y(92)-y(77)) - (params(28)*y(24)-(1-params(28))*params(18)*y(28));
    residual(67) = (y(99)) - ((1-params(29))*params(19)*y(28)+params(29)*y(29));
    residual(68) = (y(100)) - ((1-params(30))*params(20)*y(28)+params(30)*y(30));
    residual(69) = (y(101)) - (params(31)*y(31));
    residual(70) = (y(103)-y(78)) - ((-(1-params(32)))*params(21)*y(28)+params(32)*y(32));
residual(71) = y(91)+y(98)-y(97);
residual(72) = y(112)-y(101)-y(93);
residual(73) = y(110)-y(99)-y(95)-y(88);
    residual(74) = (y(109)) - (y(102));
residual(75) = y(108)-T(13)*y(99)-T(13)*y(95)-T(13)*y(88)-T(14)*y(100)-T(14)*y(96)-T(14)*y(90)-T(15)*y(101)-T(15)*y(93)+T(16)*y(103)+T(17)*y(92);
residual(76) = y(111)-y(100)-y(96)-y(90);
    residual(77) = (y(113)-100*y(93)-y(79)*100) - ((-100)*y(25));
    residual(78) = (y(114)-100*y(87)-y(79)*100) - ((-100)*y(23));
    residual(79) = (y(115)-100*y(92)-y(79)*100) - ((-100)*y(24));
    residual(80) = (y(116)-100*y(96)-y(79)*100) - ((-100)*y(26));
    residual(81) = (y(117)-100*y(97)-y(79)*100) - ((-100)*y(27));
residual(82) = y(118)-100*y(90);
    residual(83) = (y(81)) - (params(43)*y(19)+x(it_, 4)*0.25);

end
