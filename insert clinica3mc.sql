use clinica3mc3;

insert into pacientes(id_paciente, nome_paciente, idade_paciente, doenca) values (1,"Nicholas Diego", 20, "Gripe");
insert into pacientes(id_paciente, nome_paciente, idade_paciente, doenca) values (2,"Willams Viana", 20, "Dor no joelho");
insert into pacientes(id_paciente, nome_paciente, idade_paciente, doenca) values (3,"Luan Guilherme", 19, "Dor de barriga");
insert into pacientes(id_paciente, nome_paciente, idade_paciente, doenca) values (4,"Carolline Lima", 27, "Gripe");

insert into medicos(id_medico, nome_medico, crm, salario, idade_medico) values (1, "Cristiano Ronaldo", "07", 1234567890.0, 39);
insert into medicos(id_medico, nome_medico, crm, salario, idade_medico) values (2, "Lionel Messi", "10", 0987654321.0, 37);
insert into medicos(id_medico, nome_medico, crm, salario, idade_medico) values (3, "Neymar JR", "11", 88.0, 32);

insert into consultas(id_medico,id_paciente,data_consulta) values (1,1, curdate());
insert into consultas(id_medico,id_paciente) values (2,2);
insert into consultas(id_medico,id_paciente,data_consulta) values (3,3, curdate());


