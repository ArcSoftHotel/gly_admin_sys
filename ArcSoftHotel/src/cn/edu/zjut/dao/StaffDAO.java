package cn.edu.zjut.dao;

import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import cn.edu.zjut.po.Staff;

public class StaffDAO {
	private static final Log log = LogFactory.getLog(StaffDAO.class);
	
	public List findAllStaffs() {
		log.debug("finding all staff instances");
		SessionFactory sf = new Configuration().configure().buildSessionFactory();
		Session session = sf.openSession();
		try {
			String queryString = "from Staff";
			Query queryObject = session.createQuery(queryString);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		} finally {
			session.close();
		}
	}
	
	public void add(Staff staff) {
		log.debug("insert a staff instance");
		SessionFactory sf = new Configuration().configure().buildSessionFactory();
		Session session = sf.openSession();
		session.beginTransaction();
		try {
			session.save(staff);
		} catch (RuntimeException re) {
			log.error("add failed", re);
			throw re;
		} finally {
			session.getTransaction().commit();
			session.close();
		}
	}
	
	public void update(Staff staff) {
		log.debug("update a staff instance");
		SessionFactory sf = new Configuration().configure().buildSessionFactory();
		Session session = sf.openSession();
		session.beginTransaction();
		try {
			session.update(staff);
		} catch (RuntimeException re) {
			log.error("update failed", re);
			throw re;
		} finally {
			session.getTransaction().commit();
			session.close();
		}
	}
	
	public void delete(Staff staff) {
		if(staff.getStaffid() == null) {
			System.out.println("Java.Lang.NullPointerException.");
		}
		log.debug("delete a staff instance");
		SessionFactory sf = new Configuration().configure().buildSessionFactory();
		Session session = sf.openSession();
		session.beginTransaction();
		try {
			session.delete(staff);
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		} finally {
			session.getTransaction().commit();
			session.close();
		}
	}
}
