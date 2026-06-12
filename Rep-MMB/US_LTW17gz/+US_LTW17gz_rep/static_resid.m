function residual = static_resid(T, y, x, params, T_flag)
% function residual = static_resid(T, y, x, params, T_flag)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T         [#temp variables by 1]  double   vector of temporary terms to be filled by function
%   y         [M_.endo_nbr by 1]      double   vector of endogenous variables in declaration order
%   x         [M_.exo_nbr by 1]       double   vector of exogenous variables in declaration order
%   params    [M_.param_nbr by 1]     double   vector of parameter values in declaration order
%                                              to evaluate the model
%   T_flag    boolean                 boolean  flag saying whether or not to calculate temporary terms
%
% Output:
%   residual
%

if T_flag
    T = US_LTW17gz_rep.static_resid_tt(T, y, x, params);
end
residual = zeros(83, 1);
residual(1) = y(8)-(params(78)+params(80))/params(78)*params(4)*y(5)-T(1)*y(7);
residual(2) = y(5)+y(12)-y(13)-y(7);
residual(3) = y(22)-params(4)*y(12)+y(13)*(params(4)-1);
    residual(4) = (params(48)*y(14)-y(14)*params(48)*params(2)/(1+params(2)*params(15))-y(22)-params(48)*y(49)) - (y(14)*params(48)*params(15)/(1+params(2)*params(15)));
    residual(5) = (y(24)+T(2)*y(44)+params(56)/(params(56)-params(41))*y(26)-y(45)+T(3)*y(19)) - (T(2)*y(26));
residual(6) = y(14)+y(28)+y(25)-y(28)*params(2)*params(54)/params(56)-y(25)*params(2)*params(54)/params(56);
residual(7) = y(28)+y(25)+y(27);
residual(8) = y(26)-params(76)/(params(76)+params(42)*params(85))*y(1)-T(4)*y(9);
residual(9) = y(14)+y(24)-y(3)-y(24)+y(44)*params(22);
residual(10) = y(12)*T(5)-y(6)-T(6)*y(17);
residual(11) = y(3)+y(11)-y(14)-y(11)*params(2)*exp((-params(55)))*(1-params(3))-y(12)*(1-params(52))*params(2)*exp((-params(55)))*params(60)+y(17)*params(60)*params(2)*params(52)*exp((-params(55)));
    residual(12) = (y(11)*T(7)+y(4)-y(4)*T(8)+y(44)*T(9)-y(47)) - (y(4)*1/(1+params(2)));
    residual(13) = (y(44)+y(5)-y(6)) - (y(23));
    residual(14) = (y(23)-y(47)*(1+params(2))*params(13)*exp(2*params(55))*(1-exp((-params(55)))*(1-params(3)))-y(4)*(1-exp((-params(55)))*(1-params(3)))+y(44)*exp((-params(55)))*(1-params(3))) - (y(23)*exp((-params(55)))*(1-params(3)));
    residual(15) = (y(24)+y(13)*(1+params(49))-y(13)*T(8)*params(49)+y(14)*params(49)*(1+params(2)*params(14))/(1+params(2))-y(14)*T(8)*params(49)-y(7)*params(8)+y(44)*params(49)*(1+params(2)*params(14)-params(2)*params(22))/(1+params(2))-params(51)/(1-params(51))*y(18)-params(49)*y(48)-y(45)) - (y(13)*params(49)/(1+params(2))+y(14)*T(10)+y(44)*T(10));
    residual(16) = (y(3)-y(14)*(1-params(24))*params(16)-y(8)*(1-params(24))*params(17)-y(46)) - (y(3)*params(24));
residual(17) = params(81)*y(10)+y(4)*params(82)-y(8)*params(78)+y(9)*params(78)*params(93)+y(6)*params(61)*params(79);
residual(18) = (1+params(53))*params(77)*y(2)+y(19)*params(53)*params(77)-y(13)*(1-params(51))*params(63)*params(75)-y(7)*(1-params(51))*params(63)*params(75)+y(18)*params(51)*params(63)*params(75)-params(83)*y(21);
residual(19) = params(81)*y(10)-y(1)*params(76)*(1-params(9))-y(2)*params(77)*params(9);
residual(20) = y(25)+y(3)-y(25)*params(54)*params(59)/(1+params(54)*params(59));
    residual(21) = (params(50)*y(15)-y(9)*params(93)-y(21)*params(83)/params(78)+y(17)*params(52)*params(69)*params(86)+y(12)*params(52)*params(69)*params(86)+y(5)*params(52)*params(69)*params(86)+y(44)*T(11)+y(18)*params(51)*params(63)*params(88)+y(13)*params(51)*params(63)*params(88)+y(7)*params(51)*params(63)*params(88)+y(10)*params(53)*params(87)+y(19)*params(53)*params(87)-y(25)*exp((-params(55)))*params(54)*params(50)+y(14)*T(11)) - (y(15)*T(11)-y(25)*T(11));
    residual(22) = (y(9)-y(42)) - (y(9)*params(28)-(1-params(28))*params(18)*y(16));
    residual(23) = (y(17)) - (y(16)*(1-params(29))*params(19)+y(17)*params(29));
    residual(24) = (y(18)) - (y(16)*(1-params(30))*params(20)+y(18)*params(30));
    residual(25) = (y(19)) - (y(19)*params(31));
    residual(26) = (y(21)-y(43)) - (y(16)*(-(1-params(32)))*params(21)+y(21)*params(32));
residual(27) = y(14)+y(20)-y(3);
residual(28) = y(8)+y(16)-y(15);
residual(29) = y(33)-y(19)-y(10);
residual(30) = y(31)-y(17)-y(12)-y(5);
    residual(31) = (y(14)+y(30)-y(25)*params(2)*params(54)/params(56)) - ((-y(25)));
residual(32) = y(29)-y(17)*T(12)-y(12)*T(12)-y(5)*T(12)-y(18)*T(13)-y(13)*T(13)-y(7)*T(13)-y(19)*T(14)-y(10)*T(14)+y(21)*T(15)+y(9)*T(16);
residual(33) = y(32)-y(18)-y(13)-y(7);
    residual(34) = (y(34)-y(10)*100-y(44)*100) - (y(10)*(-100));
    residual(35) = (y(35)-y(4)*100-y(44)*100) - (y(4)*(-100));
    residual(36) = (y(36)-y(9)*100-y(44)*100) - (y(9)*(-100));
    residual(37) = (y(37)-y(13)*100-y(44)*100) - (y(13)*(-100));
    residual(38) = (y(38)-y(15)*100-y(44)*100) - (y(15)*(-100));
residual(39) = y(39)-y(3)*100;
residual(40) = y(40)-y(14)*100;
residual(41) = y(41)-y(7)*100;
    residual(42) = (y(43)) - (y(43)*params(45)+x(1));
    residual(43) = (y(44)) - (y(44)*params(22)+x(2));
    residual(44) = (y(45)) - (y(45)*params(23)+x(3));
    residual(45) = (y(46)) - (y(46)*params(43)+x(4));
    residual(46) = (y(47)) - (y(47)*params(25)+x(5));
    residual(47) = (y(48)) - (y(48)*params(26)+x(6));
    residual(48) = (y(49)) - (y(49)*params(27)+x(7));
residual(49) = y(56)-(params(78)+params(80))/params(78)*params(4)*y(53)-T(1)*y(55);
residual(50) = y(53)+y(60)-y(61)-y(55);
residual(51) = (params(4)-1)*y(61)-params(4)*y(60);
residual(52) = y(69);
    residual(53) = (T(2)*y(44)+y(71)+params(56)/(params(56)-params(41))*y(72)-y(45)+T(3)*y(66)) - (T(2)*y(72));
residual(54) = y(72)-params(76)/(params(76)+params(42)*params(85))*y(50)-T(4)*y(57);
residual(55) = y(44)*params(22)+y(71)-y(67)-y(71);
residual(56) = T(5)*y(60)-y(54)-T(6)*y(64);
residual(57) = y(67)+y(59)-params(2)*exp((-params(55)))*(1-params(3))*y(59)-(1-params(52))*params(2)*exp((-params(55)))*params(60)*y(60)+params(60)*params(2)*params(52)*exp((-params(55)))*y(64);
    residual(58) = (y(44)*T(9)+T(7)*y(59)+y(52)-T(8)*y(52)-y(47)) - (1/(1+params(2))*y(52));
    residual(59) = (y(44)+y(53)-y(54)) - (y(70));
    residual(60) = (y(44)*exp((-params(55)))*(1-params(3))+y(70)-y(47)*(1+params(2))*params(13)*exp(2*params(55))*(1-exp((-params(55)))*(1-params(3)))-(1-exp((-params(55)))*(1-params(3)))*y(52)) - (exp((-params(55)))*(1-params(3))*y(70));
residual(61) = y(71)+y(61)-params(8)*y(55)-params(51)/(1-params(51))*y(65)-y(45);
residual(62) = params(81)*y(58)+params(82)*y(52)-params(78)*y(56)+params(78)*params(93)*y(57)+params(61)*params(79)*y(54);
residual(63) = (1+params(53))*params(77)*y(51)+params(53)*params(77)*y(66)-(1-params(51))*params(63)*params(75)*y(61)-(1-params(51))*params(63)*params(75)*y(55)+params(51)*params(63)*params(75)*y(65)-params(83)*y(68);
residual(64) = params(81)*y(58)-params(76)*(1-params(9))*y(50)-params(77)*params(9)*y(51);
    residual(65) = (params(50)*y(62)-params(93)*y(57)-params(83)/params(78)*y(68)+params(52)*params(69)*params(86)*y(64)+params(52)*params(69)*params(86)*y(60)+params(52)*params(69)*params(86)*y(53)+params(51)*params(63)*params(88)*y(65)+params(51)*params(63)*params(88)*y(61)+params(51)*params(63)*params(88)*y(55)+params(53)*params(87)*y(58)+params(53)*params(87)*y(66)) - (T(11)*y(74)+T(11)*y(62)-y(44)*T(11));
    residual(66) = (y(57)-y(42)) - (params(28)*y(57)-(1-params(28))*params(18)*y(63));
    residual(67) = (y(64)) - ((1-params(29))*params(19)*y(63)+params(29)*y(64));
    residual(68) = (y(65)) - ((1-params(30))*params(20)*y(63)+params(30)*y(65));
    residual(69) = (y(66)) - (params(31)*y(66));
    residual(70) = (y(68)-y(43)) - ((-(1-params(32)))*params(21)*y(63)+params(32)*y(68));
residual(71) = y(56)+y(63)-y(62);
residual(72) = y(77)-y(66)-y(58);
residual(73) = y(75)-y(64)-y(60)-y(53);
    residual(74) = (y(74)) - (y(67));
residual(75) = y(73)-T(12)*y(64)-T(12)*y(60)-T(12)*y(53)-T(13)*y(65)-T(13)*y(61)-T(13)*y(55)-T(14)*y(66)-T(14)*y(58)+T(15)*y(68)+T(16)*y(57);
residual(76) = y(76)-y(65)-y(61)-y(55);
    residual(77) = (y(78)-100*y(58)-y(44)*100) - ((-100)*y(58));
    residual(78) = (y(79)-100*y(52)-y(44)*100) - ((-100)*y(52));
    residual(79) = (y(80)-100*y(57)-y(44)*100) - ((-100)*y(57));
    residual(80) = (y(81)-100*y(61)-y(44)*100) - ((-100)*y(61));
    residual(81) = (y(82)-100*y(62)-y(44)*100) - ((-100)*y(62));
residual(82) = y(83)-100*y(55);
    residual(83) = (y(46)) - (y(46)*params(43)+x(4)*0.25);

end
