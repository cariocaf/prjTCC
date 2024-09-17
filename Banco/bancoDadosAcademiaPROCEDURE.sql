use bancoDadosAcademia;


/*PROCEDURES*/

/*usuario aluno */

DELIMITER $$

CREATE PROCEDURE AdicionarAluno(
    IN p_cd_cpf_usuario VARCHAR(11),
    IN p_nm_usuario VARCHAR(225),
    IN p_nm_senha_usuario VARCHAR(225),
    IN p_nm_email_usuario VARCHAR(225),
    IN p_nm_endereco_usuario VARCHAR(225),
    IN p_cd_telefone_usuario BIGINT,
    IN p_ds_status_usuario VARCHAR(225),
    IN p_ic_sexo_usuario BOOL,
    IN p_cd_tipo_usuario INT,
    IN p_cd_plano INT,
    IN p_cd_turma INT,
    IN p_cd_nivel_ranking INT
)
BEGIN
   
    IF EXISTS (SELECT 1 FROM usuario WHERE cd_cpf_usuario = p_cd_cpf_usuario) THEN
        SELECT 'Erro: CPF já existe.' AS Mensagem;
    ELSE
     
        INSERT INTO usuario (
            cd_cpf_usuario, nm_usuario, nm_senha_usuario, nm_email_usuario,
            nm_endereco_usuario, cd_telefone_usuario, ds_status_usuario, ic_sexo_usuario,
            cd_tipo_usuario, cd_plano, cd_turma, cd_nivel_ranking
        )
        VALUES (
            p_cd_cpf_usuario, p_nm_usuario, p_nm_senha_usuario, p_nm_email_usuario,
            p_nm_endereco_usuario, p_cd_telefone_usuario, p_ds_status_usuario, p_ic_sexo_usuario,
            p_cd_tipo_usuario, p_cd_plano, p_cd_turma, p_cd_nivel_ranking
        );
        
        -- Confirma a inserção
        SELECT 'Aluno inserido com sucesso.' AS Mensagem;
    END IF;
END$$

DELIMITER ;

CALL AdicionarAluno(
    '99995678984', 'João Aluno', 'senha123', 'joao@aluno.com', 
    'Rua 38, Centro', 11987654346, 'Ativo', TRUE, 3, 2, 1, 2
);

/*TESTE SE O CPF JA EXISTE DO ALUNO
CALL AdicionarAluno(
    '12345679019', 'Gabriela Silva', 'senha123', 'gabriela.silva@aluno.com', 'Rua 119, Centro', 11987654438, 'Ativo', FALSE, 3, 1, 6, 4
);*/


/*SELECT * FROM usuario
WHERE cd_cpf_usuario = '99995678984';*/

/*Professor*/


DELIMITER //

CREATE PROCEDURE AdicionarProfessor(
    IN p_cpf_usuario VARCHAR(11),
    IN p_nm_usuario VARCHAR(225),
    IN p_nm_senha_usuario VARCHAR(225),
    IN p_nm_email_usuario VARCHAR(225),
    IN p_nm_endereco_usuario VARCHAR(225),
    IN p_cd_telefone_usuario BIGINT,
    IN p_ds_status_usuario VARCHAR(225),
    IN p_ic_sexo_usuario BOOL,
    IN p_cd_tipo_usuario INT,
    IN p_cd_plano INT,
    IN p_cd_turma INT,
    IN p_cd_nivel_ranking INT
)
BEGIN
    DECLARE v_count INT;

  
    SELECT COUNT(*)
    INTO v_count
    FROM usuario
    WHERE cd_cpf_usuario = p_cpf_usuario;

    IF v_count > 0 THEN

        SELECT 'CPF já existente' AS Mensagem;
    ELSE
        
        INSERT INTO usuario (
            cd_cpf_usuario, nm_usuario, nm_senha_usuario, nm_email_usuario, 
            nm_endereco_usuario, cd_telefone_usuario, ds_status_usuario, 
            ic_sexo_usuario, cd_tipo_usuario, cd_plano, cd_turma, cd_nivel_ranking
        ) VALUES (
            p_cpf_usuario, p_nm_usuario, p_nm_senha_usuario, p_nm_email_usuario, 
            p_nm_endereco_usuario, p_cd_telefone_usuario, p_ds_status_usuario, 
            p_ic_sexo_usuario, p_cd_tipo_usuario, p_cd_plano, p_cd_turma, p_cd_nivel_ranking
        );

        
        SELECT 'Professor adicionado com sucesso' AS Mensagem;
    END IF;
END //

DELIMITER ;

CALL AdicionarProfessor(
    '12349999999', 'Elisangela Professora', 'senha123', 'eli@professor.com',
    'Rua Novo, Centro', 10987654345, 'Ativo', TRUE, 2, NULL, 1, 3
);



/*SELECT * FROM usuario
WHERE cd_cpf_usuario = '12349999999';*/


/*TESTAR SE O CPF PROFESSOR JA EXISTE

CALL AdicionarProfessor(
    '12345678902', 'Maria Professor', 'senha123', 'maria@professor.com', 'Rua 3, Centro', 11987654322, 'Ativo', FALSE, 2, NULL, 1, 3
);

SELECT * FROM usuario
WHERE cd_cpf_usuario = '12345678902';
*/

/*
SELECT
    cd_cpf_usuario AS CPF,
    nm_usuario AS Nome,
    nm_email_usuario AS Email,
    nm_endereco_usuario AS Endereço,
    cd_telefone_usuario AS Telefone,
    cd_turma AS Turma,
    cd_nivel_ranking AS Ranking
FROM
    usuario
WHERE
    cd_tipo_usuario = 2;  -- 2 corresponde ao tipo "Professor"
*/


/* ADICIONAR TURMA*/

DELIMITER //

CREATE PROCEDURE AdicionarTurma(
    IN p_cd_turma INT,
    IN p_nm_turma VARCHAR(225),
    IN p_hr_aula_turma DATETIME,
    IN p_dt_aula_turma DATE,
    IN p_qt_alunos_turma INT
)
BEGIN
    
    IF EXISTS (SELECT 1 FROM turma WHERE cd_turma = p_cd_turma) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'A turma com este código já existe.';
    ELSE
        
        IF TIME(p_hr_aula_turma) NOT BETWEEN '00:00:00' AND '23:59:59' THEN
            SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Horário da aula inválido.';
        ELSE
           
            IF p_dt_aula_turma IS NULL OR p_dt_aula_turma < CURDATE() THEN
                SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Data da aula inválida. Deve ser uma data futura.';
            ELSE
               
                INSERT INTO turma (cd_turma, nm_turma, hr_aula_turma, dt_aula_turma, qt_alunos_turma)
                VALUES (p_cd_turma, p_nm_turma, p_hr_aula_turma, p_dt_aula_turma, p_qt_alunos_turma);
                
                SELECT 'Turma adicionada com sucesso!' AS Mensagem;
            END IF;
        END IF;
    END IF;
END //

DELIMITER ;

CALL AdicionarTurma(8, 'Turma H - Noite', '23:00:00', '2024-12-18', 15);




/*SELECT 
    cd_turma AS 'Código da Turma',
    nm_turma AS 'Nome da Turma',
    hr_aula_turma AS 'Hora da Aula',
    dt_aula_turma AS 'Data da Aula',
    qt_alunos_turma AS 'Quantidade de Alunos'
FROM 
    turma
ORDER BY 
    dt_aula_turma, hr_aula_turma;
*/


/*ADICIONAR EVENTO*/


DELIMITER //

CREATE PROCEDURE AdicionarEvento(
    IN p_nm_evento VARCHAR(225),
    IN p_dt_evento DATE,
    IN p_ds_evento VARCHAR(225)
)
BEGIN
   
    IF EXISTS (SELECT 1 FROM evento WHERE nm_evento = p_nm_evento) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Evento já existe.';
    ELSE
        
        INSERT INTO evento (nm_evento, dt_evento, ds_evento)
        VALUES (p_nm_evento, p_dt_evento, p_ds_evento);
    END IF;


    SELECT 'Evento adicionado com sucesso.' AS mensagem;
END //

DELIMITER ;

CALL AdicionarEvento('Workshop de Técnicas', '2024-08-20', 'Workshop sobre técnicas específicas de Jiu-Jitsu.');

/*SELECT * 
FROM evento;
*/


/* UPDATE DADOS USUARIO*/

DELIMITER //

CREATE PROCEDURE AtualizarUsuario(
    IN p_cd_cpf_usuario VARCHAR(11),
    IN p_nm_usuario VARCHAR(225),
    IN p_nm_senha_usuario VARCHAR(225),
    IN p_nm_email_usuario VARCHAR(225),
    IN p_nm_endereco_usuario VARCHAR(225),
    IN p_cd_telefone_usuario BIGINT,
    IN p_ds_status_usuario VARCHAR(225),
    IN p_ic_sexo_usuario BOOL,
    IN p_cd_tipo_usuario INT,
    IN p_cd_plano INT,
    IN p_cd_turma INT,
    IN p_cd_nivel_ranking INT
)
BEGIN
   
    UPDATE usuario
    SET
        nm_usuario = p_nm_usuario,
        nm_senha_usuario = p_nm_senha_usuario,
        nm_email_usuario = p_nm_email_usuario,
        nm_endereco_usuario = p_nm_endereco_usuario,
        cd_telefone_usuario = p_cd_telefone_usuario,
        ds_status_usuario = p_ds_status_usuario,
        ic_sexo_usuario = p_ic_sexo_usuario,
        cd_tipo_usuario = p_cd_tipo_usuario,
        cd_plano = p_cd_plano,
        cd_turma = p_cd_turma,
        cd_nivel_ranking = p_cd_nivel_ranking
    WHERE cd_cpf_usuario = p_cd_cpf_usuario;

   
    SELECT 'Dados atualizados' AS Mensagem;
END //

DELIMITER ;


CALL AtualizarUsuario(
    '12345678901',         
    'William Paraguai',       
    'nova_senha',          
    'William@exemplo.com', 
    'Ubatuba',       
    11999999999,          
    'Inativo',             
    FALSE,                 
    1,                     
    1,                    
    2,                     
    3                      
);

/*SELECT * FROM usuario
WHERE cd_cpf_usuario = '12345678901';*/


/* ADICIONAR INSCRIÇÃO EM EVENTO  */

DELIMITER //

CREATE PROCEDURE AdicionarInscricao(
    IN p_nm_evento VARCHAR(225),
    IN p_cd_cpf_usuario VARCHAR(11)
)
BEGIN
    
    IF NOT EXISTS (SELECT 1 FROM evento WHERE nm_evento = p_nm_evento) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Evento não encontrado.';
    END IF;

   
    IF NOT EXISTS (SELECT 1 FROM usuario WHERE cd_cpf_usuario = p_cd_cpf_usuario) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Usuário não encontrado.';
    END IF;

    
    INSERT INTO inscricao (nm_evento, cd_cpf_usuario)
    VALUES (p_nm_evento, p_cd_cpf_usuario);
    
    
    SELECT 'Inscrição adicionada com sucesso.' AS mensagem;
END //

DELIMITER ;

CALL AdicionarInscricao('Campeonato Estadual', '12345678904');

select *from inscricao;



DELIMITER //

CREATE PROCEDURE adicionar_lancamento(
    IN p_dt_lancamento DATE,
    IN p_cd_tipo_lancamento INT,
    IN p_vl_lancamento DECIMAL(10,2)
)
BEGIN
 
    IF NOT EXISTS (SELECT 1 FROM tipo_lancamento WHERE cd_tipo_lancamento = p_cd_tipo_lancamento) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Tipo de lançamento não existe.';
    END IF;
    
    
    INSERT INTO lancamento (dt_lancamento, cd_tipo_lancamento, vl_lancamento)
    VALUES (p_dt_lancamento, p_cd_tipo_lancamento, p_vl_lancamento);
    
END //

DELIMITER ;


CALL adicionar_lancamento('2024-08-10', 1, 5550.00);

select * from lancamento;

/*adicionar ocorrencia*/

DELIMITER $$

CREATE PROCEDURE AddOcorrencia(
    IN p_cd_cpf_usuario VARCHAR(11),
    IN p_cd_cpf_usuario1 VARCHAR(11),
    IN p_cd_ocorrencia INT,
    IN p_nm_ocorrencia VARCHAR(225),
    IN p_ds_ocorrencia VARCHAR(225),
    IN p_dt_ocorrencia DATE
)
BEGIN
    
    IF EXISTS (SELECT 1 FROM usuario WHERE cd_cpf_usuario = p_cd_cpf_usuario) THEN

        INSERT INTO ocorrencia (cd_cpf_usuario, cd_cpf_usuario1, cd_ocorrencia, nm_ocorrencia, ds_ocorrencia, dt_ocorrencia)
        VALUES (p_cd_cpf_usuario, p_cd_cpf_usuario1, p_cd_ocorrencia, p_nm_ocorrencia, p_ds_ocorrencia, p_dt_ocorrencia);
    ELSE

        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Usuário não encontrado.';
    END IF;
END $$

DELIMITER ;

/*CALL AddOcorrencia('12345678901', '12345679000', 2, 'Ocorrência Exemplo', 'Descrição da Ocorrência', '2024-08-11');
*/
/*select *from ocorrencia;*/

/*ACESSAR SISTEMA*/
Delimiter $$

Create Procedure acessar(pLogin varchar(11), pSenha varchar(225))
begin
  Select cd_cpf_usuario from usuario
	where cd_cpf_usuario = pLogin and nm_senha_usuario = (pSenha);
end$$
delimiter ; 


/*BUSCAR USUARIO*/
delimiter $$

Create Procedure buscarUsuario(pLogin varchar(225))
begin
	Select nm_email_usuario from usuario
		where nm_email_usuario  = pLogin;
end$$

delimiter ;
call buscarUsuario('eduardogroporuiz1@gmail.com');

/*ALTERAR SENHA*/
delimiter $$
  Create Procedure alterarSenha(pLogin varchar(225), pSenha varchar(225))
begin
	Update usuario set nm_senha_usuario = (pSenha)
		where nm_email_usuario =pLogin;
end$$
    
delimiter ; 

/*LISTAR USUARIOS*/
delimiter $$
  Create Procedure listarUsuarios()
begin
	select cd_cpf_usuario , nm_usuario, nm_senha_usuario from usuario;
end$$
delimiter ; 


/*Guardar email recuperacao*/
delimiter $$
  Create Procedure guardarEmailRecuperarSenha(pLogin varchar(11), pCodigo int)
begin
	insert into recuperacao values (pLogin, pCodigo);
end$$

delimiter ;

/*Excluir pedido recuperacao */
delimiter $$
 Create Procedure excluirPedidoRecuperacao(pLogin varchar(200))
begin
	delete from recuperacao where cd_cpf_usuario = pLogin;
end$$
delimiter ;

/*QUANTIDADE DE ALUNOS*/
delimiter $$
CREATE FUNCTION buscarQuantidadeAlunos() RETURNS INT
begin
	declare qtd int default 0;
	Select count(*) into qtd from usuario;
	return qtd;
end$$
delimiter ;