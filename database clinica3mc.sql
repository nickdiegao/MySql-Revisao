create database clinica3mc3;
use clinica3mc3;

create table pacientes(
	id_paciente int unsigned not null auto_increment,
    nome_paciente varchar(45) not null,
    idade_paciente int(11) not null,
    doenca varchar(45) not null,
    primary key(id_paciente)
);

create table medicos(
	id_medico int unsigned not null auto_increment,
    nome_medico varchar(45) not null,
    crm varchar(45) not null,
    salario float not null,
    idade_medico int(11) not null,
    primary key(id_medico)
);

create table consultas(
	id_medico int unsigned not null,
    id_paciente int unsigned not null,
    data_consulta date,
    foreign key (id_medico) references medicos(id_medico),
    foreign key (id_paciente) references pacientes(id_paciente)
);