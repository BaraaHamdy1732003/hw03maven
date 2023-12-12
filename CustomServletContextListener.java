package sm.litstener;


import org.springframework.jdbc.datasource.DriverManagerDataSource;
import sm.repository.*;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

@WebListener
public class CustomServletContextListener implements ServletContextListener {
    private static final String DB_USER = "postgres";
    private static final String DB_PASSWORD = "171070";
    private static final String DB_URL = "jdbc:postgresql://localhost:5432/postgres";
    private static final String DB_DRIVER = "org.postgresql.Driver";

    @Override
    public void contextInitialized(ServletContextEvent servletContextEvent) {


        DriverManagerDataSource dataSource = new DriverManagerDataSource();
        dataSource.setDriverClassName(DB_DRIVER);
        dataSource.setUsername(DB_USER);
        dataSource.setPassword(DB_PASSWORD);
        dataSource.setUrl(DB_URL);


        ServletContext servletContext = servletContextEvent.getServletContext();

        UsersRepository usersRepository = new UsersRepositoryJdbcImpl(dataSource);
        servletContext.setAttribute("usersRep", usersRepository);

        UsersRepository usersRepository1 = new UsersRepositoryJdbcImpl(dataSource);
        servletContext.setAttribute("users", usersRepository1);

        FilesRepository filesRepository = new FilesRepositoryJdbcImpl(dataSource);
        servletContext.setAttribute("filesRepository", filesRepository);

        FileService fileService = new FileServiceImpl(filesRepository);
        servletContext.setAttribute("filesUploadService",fileService);
        servletContext.setAttribute("fileService", fileService);


    }

    @Override
    public void contextDestroyed(ServletContextEvent servletContextEvent) {

    }
}