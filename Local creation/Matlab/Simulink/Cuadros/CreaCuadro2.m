function Cuadro = CreaCuadro2(P1,Transfor,Color,Ancho)
P2=Transfor*P1;
L1=CreaLinea(P1,P2,Color,Ancho);
P1=P2;
P2=Transfor*P1;
L2=CreaLinea(P1,P2,Color,Ancho);
P1=P2;
P2=Transfor*P1;
L3=CreaLinea(P1,P2,Color,Ancho);
P1=P2;
P2=Transfor*P1;
L4=CreaLinea(P1,P2,Color,Ancho);
 
Cuadro=[L1;L2;L3;L4];

