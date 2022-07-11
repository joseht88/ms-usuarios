package upeu.ms.app.usuario.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.data.rest.core.config.RepositoryRestConfiguration;
import org.springframework.data.rest.webmvc.config.RepositoryRestConfigurer;
import org.springframework.web.servlet.config.annotation.CorsRegistry;

import upeu.ms.app.usuario.entity.Role;
import upeu.ms.app.usuario.entity.Usuario;

@Configuration
public class RepositoryConfig implements RepositoryRestConfigurer {
	//para mostrar los ID de los objetos en JSON
	@Override
	public void configureRepositoryRestConfiguration(RepositoryRestConfiguration config, CorsRegistry cors) {
		config.exposeIdsFor(Usuario.class, Role.class);
		//RepositoryRestConfigurer.super.configureRepositoryRestConfiguration(config, cors);
	}

	
}
