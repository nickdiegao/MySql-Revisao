use clinica3mc3;

create view listaDePacientesSemDoenca as
select p.id_paciente, p.nome_paciente, p.idade_paciente
from pacientes as p
order by p.nome_paciente ASC;

create view ordernarPorDataAtual as
select c.data_consulta, p.*, m.*
from consultas as c 
left join pacientes as p
on p.id_paciente = c.id_paciente
left join medicos as m 
on m.id_medico = c.id_medico
order by DATE(c.data_consulta) = curdate();

create view medicosSemConsulta as
select m.*, c.data_consulta
from medicos as m
left join consultas as c
on m.id_medico = c.id_medico
where c.data_consulta is null;

create view contadorDeDoencas as
select count(*) as contador, p.doenca
from pacientes as p
group by p.doenca;

create view listagemMedicosDESC as
select m.*
from medicos as m
order by m.salario DESC;


