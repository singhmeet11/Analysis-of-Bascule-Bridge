close all; clear all ; clc

%%% we will be solving linear differntial equations using symbolic math toolbox of MATLAB
%dfeining the variables
syms T1 T2 T3 T4 T5 T6 T7 T8 T9 T10 T11 alpha  Ax Ay %beta F1 F F2 theta
%defining the constants
F1 = input('Enter the value of F1(half of the force due to load)\n');
F2 = input('Enter the value of F2(half of the force due to load)\n');
F = input('Enter the value of Force due to leaf\n' );
theta = input('Enter the value of angle at which leaf force will be applied\n' );
beta = input('Enter the value of angle of truss\n' );
%defining the equations
% external forces 
eqn1 = F*cosd(theta) + F1*sind(alpha) +F2*sind(alpha) == Ax;
eqn2 = F1*cosd(alpha) + F2*cosd(alpha) - F*sind(theta) == Ay;
% about pins
% g
eqn3 = T11*cosd(beta) + T10 == 0;
eqn4 = T11*sind(beta) == 0;
% f
eqn5 = T11*cosd(beta) == T9*cosd(beta) +T8;
eqn6 = T11*sind(beta) +T9*sind(beta) ==0;
%e
eqn7 = F2*sind(alpha) + T6 + T7*cosd(beta) == T9*cosd(beta) +T10;
eqn8 = T7*sind(beta) + T9*sind(beta) == F2*cosd(alpha);
%d
eqn9 = T4 + T5*cos(beta) == T8 +T7*cosd(beta);
eqn10 = T5*sind(beta) + T7*sind(beta) == 0;
%c
eqn11 = T3*cosd(beta) + F1*sind(alpha) + T2 == T6 + T5*cosd(beta);
eqn12 = T3*sind(beta) + T5*sind(beta) == F1*cosd(alpha);
%b
eqn13 = T1*cosd(beta) +F*cosd(theta) == T3*cosd(beta) + T4;

% the equatios below wont be needed coz we have 13 variab;es and 13
% equations
% eqn14 = F*sind(theta) == T1*sind(beta) + T3*sind(beta);
% %a
% eqn15 = T1*cosd(beta) +Ax +T2 ==0;
% eqn16 = -T1*sin(beta) ==Ay;

%finally solving the equations we get
sol = solve([eqn1, eqn2, eqn3,eqn4,eqn5,eqn6,eqn7,eqn8,eqn9,eqn10,eqn11,eqn12,eqn13], [T1, T2 ,T3, T4, T5, T6, T7, T8, T9, T10, T11,Ax,Ay])
% as the force in the truss will be opposite to the force on the pin, we
% will be taking the negative sign here
T1 = -sol.T1
T2 = -sol.T2
T3 = -sol.T3
T4 = -sol.T4
T5 = -sol.T5
T6 = -sol.T6
T7 = -sol.T7
T8 = -sol.T8
T9 = -sol.T9
T10 = -sol.T10
T11 = -sol.T11
Ax = -sol.Ax
Ay = -sol.Ay

subplot(4,3,1)
fplot(T1,[0 90])
grid on
ylabel('Tension in beam 1')
xlabel('angle of incliation(deg)')


subplot(4,3,2)
fplot(T2,[0 90])
grid on
ylabel('Tension in beam 2')
xlabel('angle of incliation(deg)')

subplot(4,3,3)
fplot(T3,[0 90])
grid on
ylabel('Tension in beam 3')
xlabel('angle of incliation(deg)')

subplot(4,3,4)
fplot(T4,[0 90])
grid on
ylabel('Tension in beam 4')
xlabel('angle of incliation(deg)')

subplot(4,3,5)
fplot(T5,[0 90])
grid on
ylabel('Tension in beam 5')
xlabel('angle of incliation(deg)')

subplot(4,3,6)
fplot(T6,[0 90])
grid on
ylabel('Tension in beam 6')
xlabel('angle of incliation(deg)')

subplot(4,3,7)
fplot(T7,[0 90])
grid on
ylabel('Tension in beam 7')
xlabel('angle of incliation(deg)')

subplot(4,3,8)
fplot(T8,[0 90])
grid on
ylabel('Tension in beam 8')
xlabel('angle of incliation(deg)')

subplot(4,3,9)
fplot(T9,[0 90])
grid on
ylabel('Tension in beam 9')
xlabel('angle of incliation(deg)')

subplot(4,3,10)
fplot(T10,[0 90])
grid on
ylabel('Tension in beam 10')
xlabel('angle of incliation(deg)')

subplot(4,3,11)
fplot(T11,[0 90])
grid on
ylabel('Tension in beam 11')
xlabel('angle of incliation(deg)')

subplot(4,3,12)
hold on
fplot(Ax,[0 90])
fplot(Ay,[0 90])
A = sqrt(Ax.^2 + Ay.^2);
fplot(A,[0 90])
legend('in horizontal direction','in vertical direction','magnititude')
xlabel('angle of inclination(deg)')
ylabel('Normal force')

grid on






