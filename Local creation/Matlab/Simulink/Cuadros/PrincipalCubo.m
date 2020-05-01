%Este Ejemplo manipula un cubo en 3 dimensiones
%Marzo 2019
clear; close;
largo=4; Color='r'; Ancho=4;
Cubo=CreaCubo(largo,Color,Ancho)
xlabel('x'); ylabel('y'); zlabel('z');
view(3)
grid
v=[-largo,largo,-largo,largo,-largo,largo];
axis(10*v);
hold on
 rango1=1;
mmm=1

while mmm
    r=LimitaRango(rand,rango1)*pi;
    r1=LimitaRango(rand,rango1)*pi;
    r2=LimitaRango(rand,rango1)*pi;
    rx=LimitaRango(rand,rango1)*largo/10;
    ry=LimitaRango(rand,rango1)*largo/10;
    rz=LimitaRango(rand,rango1)*largo/10;
    Pxyz=[rx,ry,rz]; 
    RotaCubo(Cubo,translh(Pxyz)*trotxh(r*pi)*trotyh(r1*180/pi)*trotzh(r2*180/pi));
    pause(0.3)
end

pause
for r=0:pi/6:2*pi
    for r1=0:pi/6:2*pi
        for r2=0:pi/10:2*pi
            RotaCubo(Cubo,trotxh(r*180/pi)*trotyh(r1*180/pi)*trotzh(r2*180/pi));
            pause(0.2)
        end
    end
end
