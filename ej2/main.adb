with Ada.Text_IO,pkg_tarea,pkg_procedure;

procedure main is
  N:Integer;
  T:pkg_tarea.tarea_t;
begin
  loop
     T.EstadoConsultas;
     pkg_procedure.Leer_Entero(N);
     if N=0 then
	Abort T;
	Ada.Text_IO.Put("Fin");
	exit;
     else
	T.EsPar(N);
     end if;
  end loop;
end main;
