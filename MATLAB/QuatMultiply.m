%           George Terzakis, 2017
%
%         University of Portsmouth
%
%      Matlab Code based on the contents of:
%
% "Modified Rodrigues Parameters: An Efficient Reprepsentation of
% Orientation in 3D Vision and Graphics"
% G. Terzakis, M. Lourakis and D. Ait-Boudaoud

% Quaternion multiplication
function [ps, pv] = QuatMultiply(s1, v1, s2, v2)
% s1 : Scalar part of left quaternion.   
% v1 : Vector part of left quaternion.
% s2 : Scalar part of right quaternion.
% v2 : Vector part of right quaternion.


Q = [s1 -v1(1)   -v1(2)  -v1(3);
     v1(1)  s1   -v1(3)   v1(2);
     v1(2)  v1(3)  s1    -v1(1);
     v1(3) -v1(2)  v1(1)   s1  ];
 
 p = Q*[s2; v2(1); v2(2); v2(3)];
 ps = p(1); pv = [p(2); p(3); p(4)];