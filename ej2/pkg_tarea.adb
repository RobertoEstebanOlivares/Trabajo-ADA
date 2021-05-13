with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

package body pkg_tarea is

	task body tarea_t is
		NumeroPar:Integer:=0;
		NumeroImpar:Integer:=0;
	begin
		loop
			accept EstadoConsultas do
			   Put("La cantidad de numeros pares metidos es: ");
			   Put(Integer(NumeroPar));
			   New_Line;
			   Put("La cantidad de numeros impares metido es: ");
			   Put(Integer(NumeroImpar));
			   New_Line;
			end EstadoConsultas;

			accept EsPar(N:in Integer) do
                          if N mod 2 =0 then
                             NumeroPar:=NumeroPar +1;
                             Put("El numero "); 
			     Put(Integer'image(N)); Put(" es Par");
                          else
                             NumeroImpar:=NumeroImpar+1;
                             Put("El numero ");
			     Put(Integer'image(N)); Put(" es Impar");
                          end if;
                        end EsPar;

		end loop;
	end tarea_t;
end pkg_tarea;
