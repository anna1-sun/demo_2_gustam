package com.company.springmvc.demo.data;

import org.hibernate.HibernateException;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import java.util.ArrayList;

public class DataRepository {
    private static SessionFactory factory;
    public DataRepository() {
        try {
            factory = new Configuration().
                    configure().
                    addAnnotatedClass(Product.class).
                    buildSessionFactory();
        } catch (Throwable ex) {
            System.err.println("Failed to create sessionFactory object." + ex);
            throw new ExceptionInInitializerError(ex);
        }
    }

    public Iterable<Product> getProducts() {
        var session = factory.openSession();

        try {
            return session.createQuery("FROM Product").list();
        } catch (HibernateException exception) {
            System.err.println(exception);
        } finally {
            session.close();
        }
        return new ArrayList<>();
    }
}
