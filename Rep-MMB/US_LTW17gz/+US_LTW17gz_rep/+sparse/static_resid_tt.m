function [T_order, T] = static_resid_tt(y, x, params, T_order, T)
if T_order >= 0
    return
end
T_order = 0;
if size(T, 1) < 16
    T = [T; NaN(16 - size(T, 1), 1)];
end
T(1) = (params(78)+params(80))/params(78)*(1-params(4));
T(2) = params(41)/(params(56)-params(41));
T(3) = params(53)/(1+params(53));
T(4) = params(42)*params(85)/(params(76)+params(42)*params(85));
T(5) = (1-params(12))/params(12);
T(6) = T(5)*params(52)/(1-params(52));
T(7) = (-1)/((1+params(2))*params(13)*exp(2*params(55)));
T(8) = params(2)/(1+params(2));
T(9) = (1-params(2)*params(22))/(1+params(2));
T(10) = params(49)*params(14)/(1+params(2));
T(11) = params(50)/params(2);
T(12) = params(79)*params(52)*params(69)/params(92);
T(13) = params(75)*params(51)*params(63)/params(92);
T(14) = params(53)*params(81)/params(92);
T(15) = params(83)/params(92);
T(16) = params(85)/params(92);
end
