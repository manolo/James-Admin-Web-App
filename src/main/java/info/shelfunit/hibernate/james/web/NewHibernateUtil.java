
package info.shelfunit.hibernate.james.web;


import org.hibernate.cfg.Configuration;
// ORIG:
// import org.hibernate.cfg.AnnotationConfiguration;
import org.hibernate.SessionFactory;

/**
 * Hibernate Utility class with a convenient method to get Session Factory object.
 *
 * @author ericm
 */
public class NewHibernateUtil {
    private static final SessionFactory sessionFactory;

    static {
        try {
            // Create the SessionFactory from standard (hibernate.cfg.xml) 
            // config file.
            sessionFactory = new Configuration().configure().buildSessionFactory();
            // orig:
            // sessionFactory = new AnnotationConfiguration().configure().buildSessionFactory();
        } catch ( Throwable ex ) {
            // Log the exception. 
            System.err.println( "Initial SessionFactory creation failed." + ex );
            throw new ExceptionInInitializerError( ex );
        }
    }

    public static SessionFactory getSessionFactory() {
        return sessionFactory;
    }
}