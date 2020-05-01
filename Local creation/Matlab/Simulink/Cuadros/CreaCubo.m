%Esta función crea un cubo
function Cubo= CreaCubo(largo, Color, Ancho)
P1=[largo,-largo,-largo,1]';
Cuadro1=CreaCuadro2(P1,trotzh((180/pi)*pi/2),Color,Ancho);
 
P2=P1;
P2(3)=P2(3)+2*largo;
Cuadro2=CreaCuadro2(P2,trotzh((180/pi)*pi/2),'r',4);
pause(0.2)
for i=1:4
    La=Cuadro1(i);
    Lb=Cuadro2(i);
    Xa=get(La,'xdata'); Xb=get(Lb,'xdata');
    Ya=get(La,'ydata'); Yb=get(Lb,'ydata');
    Za=get(La,'zdata'); Zb=get(Lb,'zdata');
    P1=[Xa(1),Ya(1),Za(1),1]'; P2=[Xb(1),Yb(1),Zb(1),1]';
    Li(i)=CreaLinea(P1,P2,'b',Ancho);
    
end
Cubo=[Cuadro1,Cuadro2,Li'];