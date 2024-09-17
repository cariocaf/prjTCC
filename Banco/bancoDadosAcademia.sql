drop schema if exists bancoDadosAcademia;
create schema bancoDadosAcademia;
use bancoDadosAcademia;

create table tipo_usuario 
(
  nm_tipo_usuario varchar(225),
  cd_tipo_usuario int,

  constraint pk_tipo_usuario primary key (cd_tipo_usuario, nm_tipo_usuario)
);

create table turma 

(
  cd_turma int, 
  nm_turma varchar(225),
  hr_aula_turma datetime, 
  dt_aula_turma date, 
  qt_alunos_turma int,

  constraint pk_turma primary key (cd_turma)
);

create table doacao 
(
   cd_doacao int,
   vl_doacao decimal(10,2), 
   dt_doacao date, 
  
   constraint pk_doacao primary key (cd_doacao)
);

create table ranking 
(
   cd_nivel_ranking int, 
   nm_ranking varchar(225), 

   constraint pk_ranking primary key (cd_nivel_ranking)
);

create table tipo_lancamento
(
  cd_tipo_lancamento int, 
  nm_tipo_lancamento varchar(225),

  constraint pk_tipo_lancamento primary key (cd_tipo_lancamento) 
 
);

create table evento
(
  nm_evento varchar(225), 
  dt_evento date,
  ds_evento varchar(225),

  constraint pk_evento primary key (nm_evento)
);

create table plano 
(
   cd_plano int, 
   nm_plano varchar(225),
   vl_plano decimal(10,2),
   dt_inicio_plano date,

  constraint pk_plano primary key(cd_plano)
);

create table tipo_notificacao
(
   cd_tipo_notificacao int, 
   nm_tipo_notificacao varchar(225),
   
   constraint pk_tipo_notificacao primary key (cd_tipo_notificacao)
);

create table equipamento 
(
   cd_equipamento int,
   nm_equipamento varchar(225),
   ic_equipamento_disponivel_sim_nao bool, 

constraint pk_equipamento primary key (cd_equipamento)

);

create table usuario 
(
  cd_cpf_usuario varchar(11),
  nm_usuario varchar(225),
  nm_senha_usuario varchar(225),
  nm_email_usuario varchar(225),
  nm_endereco_usuario varchar(225),
  cd_cep_usuario int,
  cd_telefone_usuario bigint, 
  ds_status_usuario varchar(225),
  ic_sexo_usuario bool,
  cd_tipo_usuario int,
  cd_plano int, 
  cd_turma int, 
  cd_nivel_ranking int,

  constraint pk_usuario primary key (cd_cpf_usuario), 
  constraint fk_usuario_tipo_usuario foreign key (cd_tipo_usuario) references tipo_usuario (cd_tipo_usuario),
  constraint fk_usuario_plano foreign key (cd_plano) references plano (cd_plano),
  constraint fk_usuario_turma foreign key (cd_turma) references turma (cd_turma),
  constraint fk_usuario_ranking  foreign key (cd_nivel_ranking) references ranking (cd_nivel_ranking)
);

create table inscricao 
(
  nm_evento varchar(225),
  cd_cpf_usuario varchar(11), 
  
  constraint pk_inscricao primary key (nm_evento, cd_cpf_usuario), 

  constraint fk_inscricao_evento foreign key (nm_evento) references evento (nm_evento),
  constraint fk_inscricao_usuario foreign key (cd_cpf_usuario) references usuario (cd_cpf_usuario)
);

create table lancamento 
(
   dt_lancamento date, 
   cd_tipo_lancamento int, 
   vl_lancamento decimal(10,2), 

  constraint pk_lancamento primary key (dt_lancamento),
  constraint fk_lancamento_tipo_lancamento foreign key(cd_tipo_lancamento) 
  references tipo_lancamento (cd_tipo_lancamento)
);

create table ocorrencia 
(
  cd_cpf_usuario varchar(11),
  cd_cpf_usuario1 varchar(11),
  cd_ocorrencia int, 
  nm_ocorrencia varchar(225),
  ds_ocorrencia varchar(225),
  dt_ocorrencia date, 

 constraint pk_ocorrencia primary key (cd_cpf_usuario, cd_cpf_usuario1, cd_ocorrencia),
 constraint fk_ocorrencia_usuario foreign key (cd_cpf_usuario) references usuario (cd_cpf_usuario)
);

create table emprestimo
(
  cd_equipamento int, 
  cd_cpf_usuario varchar(11), 
  dt_inicio_emprestimo date,
  dt_termino_emprestimo date,

 constraint pk_emprestimo primary key (cd_cpf_usuario, cd_equipamento),
 constraint fk_emprestimo_usuario foreign key (cd_cpf_usuario) references usuario (cd_cpf_usuario), 
 constraint fk_emprestimo_equipamento foreign key (cd_equipamento) references equipamento (cd_equipamento)
 );

create table pagamento
(
   cd_cpf_usuario varchar(11), 
   dt_vencimento date,
   dt_pagamento date, 
   vl_pagamento decimal(10,2), 
   vl_vencimento decimal(10,2), 
   ic_pagamento_efetuado_sim_nao bool,

   constraint pk_pagamento primary key (cd_cpf_usuario, dt_pagamento),
   constraint fk_pagamento_usuario foreign key (cd_cpf_usuario) references usuario (cd_cpf_usuario)
);

create table frequencia 
(
   cd_cpf_usuario varchar(11),
   ic_veio_sim_nao bool, 
constraint pk_frequencia primary key (cd_cpf_usuario),
constraint fk_frequencia_usuario foreign key (cd_cpf_usuario) references usuario (cd_cpf_usuario)
);  


Create Table recuperacao
(
	cd_cpf_usuario varchar(11),
	cd_recuperacao int,
	constraint pk_recuperacao primary key (cd_cpf_usuario , cd_recuperacao),
	constraint fk_recuperacao_usuario foreign key (cd_cpf_usuario) references usuario (cd_cpf_usuario)
);

/*MASSA DE TESTES*/
-- Dados para tipo_usuario
insert into tipo_usuario (cd_tipo_usuario, nm_tipo_usuario) values
(1, 'Administrador'),
(2, 'Professor'),
(3, 'Aluno');

-- Dados para turma
insert into turma (cd_turma, nm_turma, hr_aula_turma, dt_aula_turma, qt_alunos_turma) values
(1, 'Turma A - Manhã', '05:00:00', '2024-07-30', 14),
(2, 'Turma B - Manha', '07:00:00', '2024-07-30', 14),
(3, 'Turma C - Manha', '09:00:00', '2024-07-30', 12),
(4, 'Turma D - Tarde', '14:00:00', '2024-07-30', 8),
(5, 'Turma E - Tarde', '16:00:00', '2024-07-30', 12),
(6, 'Turma F - Noite', '18:00:00', '2024-07-30', 10),
(7, 'Turma G - Noite', '20:00:00', '2024-07-30', 10);

-- Dados para ranking
insert into ranking (cd_nivel_ranking, nm_ranking) values
(1, 'Faixa Branca'),
(2, 'Faixa Azul'),
(3, 'Faixa Roxa'),
(4, 'Faixa Marrom'),
(5, 'Faixa Preta');

-- Dados para tipo_lancamento
insert into tipo_lancamento (cd_tipo_lancamento, nm_tipo_lancamento) values
(1, 'Mensalidade'),
(2, 'Despesas'),
(3, 'Evento');

-- Dados para evento
insert into evento (nm_evento, dt_evento, ds_evento) values
('Campeonato Estadual', '2024-08-15', 'Campeonato de Jiu-Jitsu Estadual'),
('Seminário de Técnicas', '2024-08-25', 'Seminário sobre técnicas avançadas de Jiu-Jitsu'),
('Campeonato Brasileiro', '2024-08-25', 'Seminário sobre técnicas avançadas de Jiu-Jitsu'),
('Campeonato Sul-americano', '2024-09-15', 'Seminário sobre técnicas avançadas de Jiu-Jitsu'),
('Campeonato Mundial', '2024-10-05', 'Seminário sobre técnicas avançadas de Jiu-Jitsu');

-- Dados para plano
insert into plano (cd_plano, nm_plano, vl_plano, dt_inicio_plano) values
(1, 'Plano Kids', 150.00, '2024-07-01'),
(2, 'Plano Adulto', 800.00, '2024-07-01');

-- Dados para tipo_notificacao
insert into tipo_notificacao (cd_tipo_notificacao, nm_tipo_notificacao) values
(1, 'Aviso Geral'),
(2, 'Mudança de Horário'),
(3, 'Novo Evento');

-- Dados para equipamento
insert into equipamento (cd_equipamento, nm_equipamento, ic_equipamento_disponivel_sim_nao) values
(1, 'Kimono', TRUE),
(2, 'Kimono', TRUE),
(3, 'Kimono', TRUE);

-- Dados para usuário
insert into usuario (cd_cpf_usuario, nm_usuario, nm_senha_usuario, nm_email_usuario, nm_endereco_usuario, cd_telefone_usuario, ds_status_usuario, ic_sexo_usuario, cd_tipo_usuario, cd_plano, cd_turma, cd_nivel_ranking) values
-- Administradores
('12345678906', 'Ana beatriz', 'senha123', 'ana@admin.com', 'Rua 2, Centro', 11987654326, 'Ativo', FALSE, 1, NULL, NULL, NULL),
('12345578906', 'teste', 'senha123', 'teste@admin.com', 'Rua 2222222, Centro', 11987654326, 'Ativo', FALSE, 1, NULL, NULL, NULL),

-- Professores
('12345678902', 'Maria Professor', 'senha123', 'maria@professor.com', 'Rua 3, Centro', 11987654322, 'Ativo', FALSE, 2, NULL, 1, 3),
('12345678907', 'Pedro Professor', 'senha123', 'pedro@professor.com', 'Rua 4, Centro', 11987654327, 'Ativo', TRUE, 2, NULL, 2, 4),
('12345678908', 'Luana Professor', 'senha123', 'luana@professor.com', 'Rua 5, Centro', 11987654328, 'Ativo', FALSE, 2, NULL, 3, 2),

-- Alunos
('12345678903', 'Carlos Aluno', 'senha123', 'carlos@aluno.com', 'Rua 6, Centro', 11987654323, 'Ativo', TRUE, 3, 1, 1, 2),
('12345678904', 'Ana Aluna', 'senha123', 'ana@aluna.com', 'Rua 7, Centro', 11987654324, 'Ativo', FALSE, 3, 2, 2, 1),
('12345678905', 'Lucas Aluno', 'senha123', 'lucas@aluno.com', 'Rua 8, Centro', 11987654325, 'Ativo', TRUE, 3, 2, 1, 4),
('12345678909', 'Roberto Aluno', 'senha123', 'roberto@aluno.com', 'Rua 9, Centro', 11987654329, 'Ativo', TRUE, 3, 1, 1, 3),
('12345678910', 'Fernanda Aluna', 'senha123', 'fernanda@aluna.com', 'Rua 10, Centro', 11987654330, 'Ativo', FALSE, 3, 2, 1, 1),
('12345678911', 'Rafael Aluno', 'senha123', 'rafael@aluno.com', 'Rua 11, Centro', 11987654331, 'Ativo', TRUE, 3, 1, 1, 2),
('12345678912', 'Juliana Aluna', 'senha123', 'juliana@aluna.com', 'Rua 12, Centro', 11987654332, 'Ativo', FALSE, 3, 2, 1, 3),
('12345678913', 'Igor Aluno', 'senha123', 'igor@aluno.com', 'Rua 13, Centro', 11987654333, 'Ativo', TRUE, 3, 1, 1, 4),
('12345678914', 'Mariana Aluna', 'senha123', 'mariana@aluna.com', 'Rua 14, Centro', 11987654334, 'Ativo', FALSE, 3, 2, 1, 1),
('12345678915', 'Mateus Aluno', 'senha123', 'mateus@aluno.com', 'Rua 15, Centro', 11987654335, 'Ativo', TRUE, 3, 1, 1, 2),
('12345678916', 'Tatiane Aluna', 'senha123', 'tatiane@aluna.com', 'Rua 16, Centro', 11987654336, 'Ativo', FALSE, 3, 2, 1, 3),
('12345678917', 'Felipe Aluno', 'senha123', 'felipe@aluno.com', 'Rua 17, Centro', 11987654337, 'Ativo', TRUE, 3, 2, 1, 4),
('12345678918', 'Carla Aluna', 'senha123', 'carla@aluna.com', 'Rua 18, Centro', 11987654338, 'Ativo', FALSE, 3, 1, 1, 1),
('12345678919', 'Eduardo Aluno', 'senha123', 'eduardo@aluno.com', 'Rua 19, Centro', 11987654339, 'Ativo', TRUE, 3, 2, 1, 2),
('12345678920', 'Sofia Aluna', 'senha123', 'sofia@aluna.com', 'Rua 20, Centro', 11987654340, 'Ativo', FALSE, 3, 1, 2, 3),
('12345678921', 'Vinícius Aluno', 'senha123', 'vinicius@aluno.com', 'Rua 21, Centro', 11987654341, 'Ativo', TRUE, 3, 2, 2, 4),
('12345678922', 'Larissa Aluna', 'senha123', 'larissa@aluna.com', 'Rua 22, Centro', 11987654342, 'Ativo', FALSE, 3, 1, 2, 2),
('12345678923', 'Gabriel Aluno', 'senha123', 'gabriel@aluno.com', 'Rua 23, Centro', 11987654343, 'Ativo', TRUE, 3, 2, 2, 1),
('12345678924', 'Isabela Aluna', 'senha123', 'isabela@aluna.com', 'Rua 24, Centro', 11987654344, 'Ativo', FALSE, 3, 1, 2, 3),
('12345678925', 'André Aluno', 'senha123', 'andre@aluno.com', 'Rua 25, Centro', 11987654345, 'Ativo', TRUE, 3, 2, 2, 4),
('12345678926', 'Giovanna Aluna', 'senha123', 'giovanna@aluna.com', 'Rua 26, Centro', 11987654346, 'Ativo', FALSE, 3, 1, 2, 2),
('12345678927', 'Thiago Aluno', 'senha123', 'thiago@aluno.com', 'Rua 27, Centro', 11987654347, 'Ativo', TRUE, 3, 2, 2, 1),
('12345678928', 'Marcos Aluno', 'senha123', 'marcos@aluno.com', 'Rua 28, Centro', 11987654348, 'Ativo', TRUE, 3, 1, 2, 3),
('12345678929', 'Paula Aluna', 'senha123', 'paula@aluna.com', 'Rua 29, Centro', 11987654349, 'Ativo', FALSE, 3, 2, 2, 4),
('12345678930', 'Roberta Aluna', 'senha123', 'roberta@aluna.com', 'Rua 30, Centro', 11987654350, 'Ativo', FALSE, 3, 1, 2, 2),
('12345678931','Eduarda Custódio','senha123','eduardacustodio@aluna.com','Rua 31, AV.epitácio pessoa',11987654351,'Ativo',True,3, 1, 2, 2),
('12345678932', 'Eduardo Ruiz', 'senha123','eduardoruiz@aluno.com','Rua 32, Praia',11987654352,'Ativo', True, 3, 2, 2, 4),
('12345678933', 'Ryan Queiroz','senha123','ryanqueiroz@aluno.com','Rua 33, Quarentenario',11987654353,'Ativo', True, 3, 2, 2, 4), 
('12345678934','Rúbia Andrade','senha123','rubiaandrade@aluna.com','Rua 34, P.Praia',11987654354,'Ativo', True, 3, 1, 3, 2),
('12345678935','Israel Filho','senha123','israelfilho@aluno.com','rua 35, Porto - Santos',11987654354,'Ativo', True, 3, 2, 3, 1),
('12345678936','Rodrigo Garro','senha123','rodrigogarro@aluno.com','rua 36, Zona leste', 11987654355,'Ativo', True, 2, 1, 3, 5),
('12345678937', 'Yuri Alberto','senha123', 'yurialberto@aluno.com','rua 37,itaquera', 11987654356,'Ativo', True, 2, 1, 3, 5),
('12345678981', 'Tatiane Almeida', 'senha123', 'tatiane.almeida@aluno.com', 'Rua 81, Centro', 11987654400, 'Ativo', FALSE, 3, 1, 3, 2),
('12345678982', 'Felipe Araújo', 'senha123', 'felipe.araujo@aluno.com', 'Rua 82, Centro', 11987654401, 'Ativo', TRUE, 3, 2, 3, 3),
('12345678983', 'Mariana Lima', 'senha123', 'mariana.lima@aluno.com', 'Rua 83, Centro', 11987654402, 'Ativo', FALSE, 3, 1, 3, 4),
('12345678984', 'Lucas Costa', 'senha123', 'lucas.costa@aluno.com', 'Rua 84, Centro', 11987654403, 'Ativo', TRUE, 3, 2, 3, 1),
('12345678985', 'Juliana Souza', 'senha123', 'juliana.souza@aluno.com', 'Rua 85, Centro', 11987654404, 'Ativo', FALSE, 3, 1, 3, 2),
('12345678986', 'Eduardo Santos', 'senha123', 'eduardo.santos@aluno.com', 'Rua 86, Centro', 11987654405, 'Ativo', TRUE, 3, 2, 3, 3),
('12345678987', 'Gabriela Lima', 'senha123', 'gabriela.lima@aluno.com', 'Rua 87, Centro', 11987654406, 'Ativo', FALSE, 3, 1, 3, 4),
('12345678988', 'Renan Silva', 'senha123', 'renan.silva@aluno.com', 'Rua 88, Centro', 11987654407, 'Ativo', TRUE, 3, 2, 3, 1),
('12345678989', 'Marcelinha Silva', 'senha123', 'marcelinha.silva@aluno.com', 'Rua 89, Centro', 11987654408, 'Ativo', FALSE, 3, 1, 3, 3), 
('12345678990', 'Amanda Souza', 'senha123', 'amanda.souza@aluno.com', 'Rua 90, Centro', 11987654409, 'Ativo', TRUE, 3, 2, 4, 2),
('12345678991', 'Robson Costa', 'senha123', 'robson.costa@aluno.com', 'Rua 91, Centro', 11987654410, 'Ativo', FALSE, 3, 1, 4, 4),
('12345678992', 'Fernanda Almeida', 'senha123', 'fernanda.almeida@aluno.com', 'Rua 92, Centro', 11987654411, 'Ativo', TRUE, 3, 2, 4, 1),
('12345678993', 'Ricardo Souza', 'senha123', 'ricardo.souza@aluno.com', 'Rua 93, Centro', 11987654412, 'Ativo', FALSE, 3, 1, 4, 3),
('12345678994', 'Sabrina Silva', 'senha123', 'sabrina.silva@aluno.com', 'Rua 94, Centro', 11987654413, 'Ativo', TRUE, 3, 2, 4, 2),
('12345678995', 'Marcos Almeida', 'senha123', 'marcos.almeida@aluno.com', 'Rua 95, Centro', 11987654414, 'Ativo', FALSE, 3, 1, 4, 4),
('12345678996', 'Gabriela Santos', 'senha123', 'gabriela.santos@aluno.com', 'Rua 96, Centro', 11987654415, 'Ativo', TRUE, 3, 2, 4, 1),
('12345678997', 'Tatiane Costa', 'senha123', 'tatiane.costa@aluno.com', 'Rua 97, Centro', 11987654416, 'Ativo', FALSE, 3, 1, 4, 2),
('12345678998', 'Felipe Oliveira', 'senha123', 'felipe.oliveira@aluno.com', 'Rua 98, Centro', 11987654417, 'Ativo', TRUE, 3, 2, 5, 3),
('12345678999', 'Mariana Santos', 'senha123', 'mariana.santos@aluno.com', 'Rua 99, Centro', 11987654418, 'Ativo', FALSE, 3, 1, 5, 4),
('12345679000', 'Lucas Almeida', 'senha123', 'lucas.almeida@aluno.com', 'Rua 100, Centro', 11987654419, 'Ativo', TRUE, 3, 2, 5, 1),
('12345679001', 'Juliana Costa', 'senha123', 'juliana.costa@aluno.com', 'Rua 101, Centro', 11987654420, 'Ativo', FALSE, 3, 1, 5, 2),
('12345679002', 'Eduardo Lima', 'senha123', 'eduardo.lima@aluno.com', 'Rua 102, Centro', 11987654421, 'Ativo', TRUE, 3, 2, 5, 3),
('12345679003', 'Gabriela Almeida', 'senha123', 'gabriela.almeida@aluno.com', 'Rua 103, Centro', 11987654422, 'Ativo', FALSE, 3, 1, 5, 4),
('12345679004', 'Renan Costa', 'senha123', 'renan.costa@aluno.com', 'Rua 104, Centro', 11987654423, 'Ativo', TRUE, 3, 2, 5, 1),
('12345679005', 'Marcelinho Lima', 'senha123', 'marcelinho.lima@aluno.com', 'Rua 105, Centro', 11987654424, 'Ativo', FALSE, 3, 1, 5, 2),
('12345679006', 'Amanda Santos', 'senha123', 'amanda.santos@aluno.com', 'Rua 106, Centro', 11987654425, 'Ativo', TRUE, 3, 2, 5, 3),
('12345679007', 'Robson Almeida', 'senha123', 'robson.almeida@aluno.com', 'Rua 107, Centro', 11987654426, 'Ativo', FALSE, 3, 1, 5, 4),
('12345679008', 'Fernanda Silva', 'senha123', 'fernanda.silva@aluno.com', 'Rua 108, Centro', 11987654427, 'Ativo', TRUE, 3, 2, 5, 1),
('12345679009', 'Ricardo Costa', 'senha123', 'ricardo.costa@aluno.com', 'Rua 109, Centro', 11987654428, 'Ativo', FALSE, 3, 1, 5, 2), 
('12345679010', 'Sabrina Almeida', 'senha123', 'sabrina.almeida@aluno.com', 'Rua 110, Centro', 11987654429, 'Ativo', TRUE, 3, 2, 6, 3),
('12345679011', 'Marcos Souza', 'senha123', 'marcos.souza@aluno.com', 'Rua 111, Centro', 11987654430, 'Ativo', FALSE, 3, 1, 6, 4),
('12345679012', 'Gabriela Costa', 'senha123', 'gabriela.costa@aluno.com', 'Rua 112, Centro', 11987654431, 'Ativo', TRUE, 3, 2, 6, 1),
('12345679013', 'Tatiane Silva', 'senha123', 'tatiane.silva@aluno.com', 'Rua 113, Centro', 11987654432, 'Ativo', FALSE, 3, 1, 6, 2),
('12345679014', 'Felipe Almeida', 'senha123', 'felipe.almeida@aluno.com', 'Rua 114, Centro', 11987654433, 'Ativo', TRUE, 3, 2, 6, 3),
('12345679015', 'Mariana Souza', 'senha123', 'mariana.souza@aluno.com', 'Rua 115, Centro', 11987654434, 'Ativo', FALSE, 3, 1, 6, 4),
('12345679016', 'Lucas Costa', 'senha123', 'lucas.costa@aluno.com', 'Rua 116, Centro', 11987654435, 'Ativo', TRUE, 3, 2, 6, 1),
('12345679017', 'Juliana Almeida', 'senha123', 'juliana.almeida@aluno.com', 'Rua 117, Centro', 11987654436, 'Ativo', FALSE, 3, 1, 6, 2),
('12345679018', 'Eduardo Costa', 'senha123', 'eduardo.costa@aluno.com', 'Rua 118, Centro', 11987654437, 'Ativo', TRUE, 3, 2, 6, 3),
('12345679019', 'Gabriela Silva', 'senha123', 'gabriela.silva@aluno.com', 'Rua 119, Centro', 11987654438, 'Ativo', FALSE, 3, 1, 6, 4),
('12345679020', 'Renan Souza', 'senha123', 'renan.souza@aluno.com', 'Rua 120, Centro', 11987654439, 'Ativo', TRUE, 3, 2, 7, 1),
('12345679021', 'Marcelinho Costa', 'senha123', 'marcelinho.costa@aluno.com', 'Rua 121, Centro', 11987654440, 'Ativo', FALSE, 3, 1, 7, 2),
('12345679022', 'Amanda Almeida', 'senha123', 'amanda.almeida@aluno.com', 'Rua 122, Centro', 11987654441, 'Ativo', TRUE, 3, 2, 7, 3),
('12345679023', 'Robson Silva', 'senha123', 'robson.silva@aluno.com', 'Rua 123, Centro', 11987654442, 'Ativo', FALSE, 3, 1, 7, 4),
('12345679024', 'Fernanda Costa', 'senha123', 'fernanda.costa@aluno.com', 'Rua 124, Centro', 11987654443, 'Ativo', TRUE, 3, 2, 7, 1),
('12345679025', 'Ricardo Almeida', 'senha123', 'ricardo.almeida@aluno.com', 'Rua 125, Centro', 11987654444, 'Ativo', FALSE, 3, 1, 7, 2),
('12345679026', 'Sabrina Costa', 'senha123', 'sabrina.costa@aluno.com', 'Rua 126, Centro', 11987654445, 'Ativo', TRUE, 3, 2, 7, 3),
('12345679027', 'Marcos Silva', 'senha123', 'marcos.silva@aluno.com', 'Rua 127, Centro', 11987654446, 'Ativo', FALSE, 3, 1, 7, 4),
('12345679028', 'Gabriela Almeida', 'senha123', 'gabriela.almeida@aluno.com', 'Rua 128, Centro', 11987654447, 'Ativo', TRUE, 3, 2, 7, 1),
('12345679029', 'Fernaod Almeida', 'senha123', 'f.almeida@aluno.com', 'Rua 129, Centro', 1198754448, 'Ativo', TRUE, 3, 2, 7, 1),
('12345679030', 'Eduardo Gropo Ruiz teste', 'senha123', 'eduardogroporuiz1@gmail.com', 'Rua 139, Centro', 1199754448, 'Ativo', TRUE, 3, 2, 7, 1);
SELECT 
     t.cd_tipo_usuario 
 FROM 
     usuario u
 JOIN 
     tipo_usuario t ON u.cd_tipo_usuario = t.cd_tipo_usuario
 WHERE 
     u.nm_email_usuario = nm_email_usuario AND u.nm_senha_usuario = nm_senha_usuario;
/*SELECT nm_email_usuario, nm_senha_usuario  FROM Usuario WHERE nm_email_usuario = nm_email_usuario AND nm_senha_usuario = nm_senha_usuario;*/
/*SELECT * FROM usuario WHERE cd_tipo_usuario = 1;*/
select nm_email_usuario , nm_senha_usuario from usuario;
-- Dados para inscrição
insert into inscricao (nm_evento, cd_cpf_usuario) values
('Campeonato Estadual', '12345678903'),
('Seminário de Técnicas', '12345678904');

-- Dados para lancamento
insert into lancamento (dt_lancamento, cd_tipo_lancamento, vl_lancamento) values
('2024-07-01', 1, 150.00),
('2024-07-02', 2, 50.00);

-- Dados para ocorrência
insert into ocorrencia (cd_cpf_usuario, cd_cpf_usuario1, cd_ocorrencia, nm_ocorrencia, ds_ocorrencia, dt_ocorrencia) values
('12345678903', '12345678904', 1, 'Discussão', 'Discussão durante a aula', '2024-07-20');

-- Dados para emprestimo
insert into emprestimo (cd_equipamento, cd_cpf_usuario, dt_inicio_emprestimo, dt_termino_emprestimo) values
(1, '12345678903', '2024-07-15', '2024-07-30'),
(2, '12345678904', '2024-07-10', '2024-07-20');

-- Dados para pagamento
insert into pagamento (cd_cpf_usuario, dt_vencimento, dt_pagamento, vl_pagamento, vl_vencimento, ic_pagamento_efetuado_sim_nao) values
('12345679000', '2024-07-01', '2024-07-01', 150.00, 150.00, true),
('12345679021', '2024-07-01', '2024-07-01', 150.00, 150.00, false);

-- Dados para frequencia
insert into frequencia (cd_cpf_usuario, ic_veio_sim_nao) values
('12345678903', TRUE),
('12345678904', TRUE),
('12345678905', FALSE);

INSERT INTO doacao (cd_doacao, vl_doacao, dt_doacao)
VALUES
    (1, 100.00, '2024-07-01'),
    (2, 250.00, '2024-07-02'),
    (3, 50.00, '2024-07-03'),
    (4, 200.00, '2024-07-04'),
    (5, 75.00, '2024-07-05'),
    (6, 300.00, '2024-07-06'),
    (7, 120.00, '2024-07-07'),
    (8, 180.00, '2024-07-08'),
    (9, 90.00, '2024-07-09'),
    (10, 160.00, '2024-07-10');
-- SELECTS
  

/*SELECT 
    t.cd_tipo_usuario 
FROM 
    usuario u
JOIN 
    tipo_usuario t ON u.cd_tipo_usuario = t.cd_tipo_usuario
WHERE 
    u.nm_email_usuario = 'William@admin.com' 
    AND u.nm_senha_usuario = 'senha123';
*/
/*SELECT u.cd_cpf_usuario, u.nm_usuario, tu.nm_tipo_usuario, p.nm_plano
FROM usuario u
JOIN tipo_usuario tu ON u.cd_tipo_usuario = tu.cd_tipo_usuario
JOIN plano p ON u.cd_plano = p.cd_plano;
/*


SELECT e.nm_evento, e.dt_evento, e.ds_evento, i.cd_cpf_usuario
FROM evento e
LEFT JOIN inscricao i ON e.nm_evento = i.nm_evento;

SELECT nm_equipamento, ic_equipamento_disponivel_sim_nao
FROM equipamento;

SELECT u.nm_usuario, f.ic_veio_sim_nao
FROM frequencia f
JOIN usuario u ON f.cd_cpf_usuario = u.cd_cpf_usuario
WHERE u.cd_turma = 1; 

SELECT l.dt_lancamento, l.cd_tipo_lancamento, l.vl_lancamento, tl.nm_tipo_lancamento
FROM lancamento l
JOIN tipo_lancamento tl ON l.cd_tipo_lancamento = tl.cd_tipo_lancamento
WHERE tl.nm_tipo_lancamento IN ('Despesas', 'Evento');

SELECT e.nm_equipamento, u.nm_usuario, emp.dt_inicio_emprestimo, emp.dt_termino_emprestimo
FROM emprestimo emp
JOIN equipamento e ON emp.cd_equipamento = e.cd_equipamento
JOIN usuario u ON emp.cd_cpf_usuario = u.cd_cpf_usuario;

SELECT cd_doacao, vl_doacao, dt_doacao
FROM doacao;

SELECT u.nm_usuario, r.nm_ranking
FROM usuario u
JOIN ranking r ON u.cd_nivel_ranking = r.cd_nivel_ranking;

SELECT p.cd_cpf_usuario, p.dt_vencimento, p.dt_pagamento, p.vl_pagamento,p.ic_pagamento_efetuado_sim_nao
FROM pagamento p;

SELECT o.nm_ocorrencia, o.ds_ocorrencia, o.dt_ocorrencia, u.nm_usuario
FROM ocorrencia o
JOIN usuario u ON o.cd_cpf_usuario = u.cd_cpf_usuario;
*/



