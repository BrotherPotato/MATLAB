function dy = mp3Funk(t,y)

dy = [y(2); t * y(2) - y(1)^2];

[m,mDeriv] = mass(t);

%xBiss = -c/m * sqrt(xPrim^2 + yPrim^2) * xPrim + mDeriv/m * Ux
%xBiss = -c/m * sqrt(xPrim^2 + yPrim^2) * yPrim + mDeriv/m * Uy - g

end