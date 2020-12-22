package cn.edu.zjut.dao;

import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import cn.edu.zjut.po.Room;

public class RoomDAO {
	private static final Log log = LogFactory.getLog(RoomDAO.class);

	public List findAllRooms() {
		log.debug("finding all Room instances");
		SessionFactory sf = new Configuration().configure().buildSessionFactory();
		Session session = sf.openSession();
		try {
			String queryString = "from Room";
			Query queryObject = session.createQuery(queryString);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		} finally {
			session.close();
		}
	}
	
	public void add(Room room) {
		log.debug("insert a room instance");
		SessionFactory sf = new Configuration().configure().buildSessionFactory();
		Session session = sf.openSession();
		session.beginTransaction();
		try {
			session.save(room);
		} catch (RuntimeException re) {
			log.error("add failed", re);
			throw re;
		} finally {
			session.getTransaction().commit();
			session.close();
		}
	}
	
	public void update(Room room) {
		log.debug("update a room instance");
		SessionFactory sf = new Configuration().configure().buildSessionFactory();
		Session session = sf.openSession();
		session.beginTransaction();
		try {
			session.update(room);
		} catch (RuntimeException re) {
			log.error("update failed", re);
			throw re;
		} finally {
			session.getTransaction().commit();
			session.close();
		}
	}
	
	public void delete(Room room) {
		if(room.getRoomid() == null) {
			System.out.println("Java.Lang.NullPointerException.");
		}
		log.debug("delete a room instance");
		SessionFactory sf = new Configuration().configure().buildSessionFactory();
		Session session = sf.openSession();
		session.beginTransaction();
		try {
			session.delete(room);
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		} finally {
			session.getTransaction().commit();
			session.close();
		}
	}
}
