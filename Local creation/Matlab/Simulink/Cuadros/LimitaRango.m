function dato = LimitaRango(dato,rango)
a=abs(dato);
b=sign(dato);
if a>rango
    dato=rango;
end
dato=dato*b;
