function [value,isterminal, direction] = eventsODE(t,y)

value = y(1) - 825;

isterminal = 1;
% first time we approach the goal
direction = 0;

end