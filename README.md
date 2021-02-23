# Bascule Bridge
A bascule bridge is a movable bridge with a counterweight that continuously
balances a span, or leaf, throughout its upward swing to provide clearance for
boat traffic. It may be single- or double-leafed. They have been in use since
ancient times, but until the adoption of steam power in the 1850s, very long,
heavy spans could not be moved quickly enough for practical application.
## Analysis
We have used MATLAB software to run an analysis on one such bascule bridge(Figure
2). As the angle of inclination increases our program shows how the Tension
in the different members change, this is done by the help of graphs. Firstly
we will be using the method of joints to get all the equations and then these
equations will be solved using the solve(eqns; vars), an inbuilt command of the
Symbolic Math tool box of MATLAB.

**Note**- There are two types of bascule bridges: single leaf bridges and double
leaf bridges. We will be evaluating the single leaf bridge here.
## Equations obtained using method of joints
As there are 11 members of bridge there will be 11 tensions and there will also
be a reaction force present on the joint A as the bridge touches the ground there.Our program asks the user for the value of the forces produced due to the
base structure(F1 and F2) and also asks for the Force applied due to the leaf(the
force which is used to lift the bridge up).
**Equations obtained by method of joints are given below -**
First we will be equating all the external forces-

<img src="https://render.githubusercontent.com/render/math?math=Fcos(\theta)  %2BF_1sin(\alpha) +  %2BF_2sin(\alpha) = A_x">

<img src="https://render.githubusercontent.com/render/math?math=F_1cos(\alpha) +  %2BF_2cos(\alpha) - F = A_y">

**Now, We will be analyzing the pins one by one-**

A

<img src="https://render.githubusercontent.com/render/math?math=T_1cos(\beta) %2BT_2  %2BA_x = 0 ">


<img src="https://render.githubusercontent.com/render/math?math=-T_1sin(\beta) = A_y ">

B

<img src="https://render.githubusercontent.com/render/math?math=%2BT_1cos(\beta) +  %2BFcos(\theta) = T_4 %2BT_2cos(\beta)  ">




