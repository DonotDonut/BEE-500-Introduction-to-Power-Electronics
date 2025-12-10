% numerator 
num = 10; 
% denominator 
den = [1 2 0];   %  s^2 + 2s + 0

% Create a transfer function using the numerator and denominator
gh = tf(num, den)

% graph transfer function onto bode plot
bode(gh);

% graph transfer function onto a step response plot
%step(gh)
%xlim([0 6])