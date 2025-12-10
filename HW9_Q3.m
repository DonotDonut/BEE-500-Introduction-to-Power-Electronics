% uncompensated system 
% numerator 
num = 20; 
% denominator 
den = [1 2 1];   %  s^2 + 2s + 1

% Create a transfer function using the numerator and denominator
g = tf(num, den) % open loop transfer function 

% graph transfer function of the uncompensated system onto bode plot
figure(1);
bode(g);
title('Uncompensated System')


% PD (Proportional-Derivative)
gc_num = [0.73 12.37];
gc_den = 1;
% Create a transfer function for the compensator
gc = tf(gc_num, gc_den) % compensator transfer function

% plotting compensated system 
figure(2);
bode(gc*g)
title('Compensated System')


% Comparing uncompenstated System and compensated system 
figure(3);
bode(g, gc*g)
legend('uncompensated', 'compenstated');
title('Uncompenstaed vs. Compensated System Comparison')


% comparing bandwidths 
% closed feedback loop
f1 = feedback(g,1); % uncompensated system
f2 = feedback(gc*g,1); % compensated system

bw1 = bandwidth(f1); % bandwidth of uncompensated system
bw2 = bandwidth(f2); % uncompensated system

fprintf('Bandwidth of uncompensated system: %.4f rad/s\n', bw1);
fprintf('Bandwidth of compensated system:   %.4f rad/s\n', bw2);




