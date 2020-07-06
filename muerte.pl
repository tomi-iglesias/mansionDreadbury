% Parte 1

viveEnLaMansion(charles).
viveEnLaMansion(tiaAgatha).
viveEnLaMansion(carnicero).

aQuienOdia(tiaAgatha,Persona):-
    viveEnLaMansion(Persona),
    Persona \= carnicero.

% por que no funciona si le saco el viveEnLaMansion(Persona)?
aQuienOdia(charles,Persona):-
    viveEnLaMansion(Persona),
    not(aQuienOdia(tiaAgatha,Persona)).

aQuienOdia(carnicero,Persona):-
    viveEnLaMansion(Persona),
    aQuienOdia(tiaAgatha,Persona).

esMasRicoQue(tiaAgatha,Persona):-
    viveEnLaMansion(Persona),
    not(aQuienOdia(carnicero,Persona)).

quienMataA(Persona,Victima):-
    viveEnLaMansion(Persona),
    aQuienOdia(Persona,Victima),
    not(esMasRicoQue(Victima,Persona)). 

%quienMataA(Persona,tiaAgatha)
%Persona = tiaAgatha;

% Parte 2

/* Agregar los mínimos hechos y reglas necesarios para poder consultar:
 - Si existe alguien que odie a milhouse:
    %No es necesario agregar nada para poder realizar esta consulta
/*    aQuienOdia(Persona,milhouse).?
        false

 - A quién odia charles: 
    No es necesario agregar ninguna regla o hecho
    aQuienOdia(charles,Persona).?
    Persona = carnicero
    false.

 - El nombre de quien odia a agatha.
    No es necesario agregar ninguna regla o hecho
    aQuienOdia(Persona,tiaAgatha).?
    Persona = tiaAgatha ;
    Persona = carnicero.

 - Todos los odiadores y sus odiados:
    No es necesario agregar ninguna regla o hecho
    aQuienOdia(Odiadores,Odiados).
    Odiadores = tiaAgatha,
    Odiados = charles ;
    Odiadores = Odiados, Odiados = tiaAgatha ;
    Odiadores = charles,
    Odiados = carnicero ;
    Odiadores = carnicero,
    Odiados = charles ;
    Odiadores = carnicero,
    Odiados = tiaAgatha ;

 - Si es cierto que el carnicero odia a alguien.
    No es necesario agregar ninguna regla o hecho
    aQuienOdia(carnicero,Persona).
    Persona = charles ;
    Persona = tiaAgatha ;

 Mostrar las consultas utilizadas para conseguir lo anterior, junto con las respuestas obtenidas.*/
