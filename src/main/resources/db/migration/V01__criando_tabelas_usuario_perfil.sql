create table perfil (id bigint NOT NULL AUTO_INCREMENT , nome varchar(255), primary key (id));
create table usuario (atualizado_em TIMESTAMP  , criado_em TIMESTAMP  , id bigint NOT NULL AUTO_INCREMENT, email varchar(255), nome varchar(255), senha varchar(255), telefone varchar(255), primary key (id));
create table usuario_perfil (id_perfil bigint not null, id_usuario bigint not null, primary key (id_perfil, id_usuario));
alter table usuario_perfil add constraint FKskwwrm4i1ds1ekvp3vf6jj9h4 foreign key (id_perfil) references perfil(id);
alter table usuario_perfil add constraint FKb82f4fopikpqy2ucxk7osn6y8 foreign key (id_usuario) references usuario(id);


insert into perfil (nome) values ('ROLE_ADMINISTRADOR');
insert into perfil (nome) values ('ROLE_PROFESSOR');
insert into perfil (nome) values ('ROLE_ALUNO');


insert into usuario (nome, telefone, email, senha,criado_em) values ('bruno', '3799122-2222','bruno.ferreira@ifmg.edu.br','$2a$10$TOsG1PVqvStv5wbHNH6aue2qoKmH/4eWnqyP.isX0Iy1V76708dgu',NOW());
insert into usuario (nome, telefone, email, senha,criado_em) values ('maria', '373322-2222','maria@gmail.com','$2a$10$TOsG1PVqvStv5wbHNH6aue2qoKmH/4eWnqyP.isX0Iy1V76708dgu',NOW());


insert into usuario_perfil (id_usuario, id_perfil) values (1, 1);
insert into usuario_perfil (id_usuario, id_perfil) values (1, 2);
insert into usuario_perfil (id_usuario, id_perfil) values (1, 3);
insert into usuario_perfil (id_usuario, id_perfil) values (2, 3);