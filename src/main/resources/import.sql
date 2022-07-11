INSERT INTO usuarios (username, password, enabled, nombre, apellido, email ) VALUES ('andres','$2a$10$eQV.fVK9H/i3XT1XVmDKWeN2QA71yOUslb6BexyBoqnblGbb5zxOG',1,'Andres','Guzman','profesor@spring.org');
INSERT INTO usuarios (username, password, enabled, nombre, apellido, email ) VALUES ('joseb','$2a$10$eC1zohqPjx/3KB0pEGliRe8KxwntnN3LZNDqVPNIvvTez081ETpu.',1,'Jose','Bustamante','joseb@upeu.edu.pe');

INSERT INTO roles (nombre) VALUES ('ROLE_USER');
INSERT INTO roles (nombre) VALUES ('ROLE_ADMIN');

INSERT INTO usuarios_roles (usuario_id, roles_id) VALUES (1,1);
INSERT INTO usuarios_roles (usuario_id, roles_id) VALUES (2,2);
INSERT INTO usuarios_roles (usuario_id, roles_id) VALUES (2,1);