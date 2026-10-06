%% Bisection Method
clear all
clc
x_L = 1;
x_R = pi;

x = zeros(1, 100);

for i = 1:1:100
    x_r = (x_L + x_R)/2;
    x(i) = x_r;
    if sin(x_L) * sin(x_r) < 0
        x_R = x_r;
    elseif sin(x_L) * sin(x_r) > 0
        x_L = x_r;
    else
        x = (1:i);
        break;
    end
end

disp("Zero at x = " + num2str(x_r));
plot(1:length(x), x, "r--");

%% Linear Interpolation
clear all;
clc;
a = -(3/2) * pi;
b = 2 * pi;

c = 0;
y = zeros(1, 100);

for i = 1:100
    if sin(a) * sin(b) > 0
        break;
    else
        c = b - sin(b) * (b - a)/(sin(b) - sin(a));
        if sin(a) * sin(c) < 0
            b = c;
        else
            a = c;
        end
    end
    y(i) = c;
end

disp("Zero at x = " + num2str(c));
plot(1:length(y), y, "y")