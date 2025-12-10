 
% numerator 
num = 20; 
% denominator 
den = [1 2 1];   %  s^2 + 2s + 1

% Create a transfer function using the numerator and denominator
g = tf(num, den); % open loop transfer function 

% graph transfer function onto bode plot
bode(g) 

