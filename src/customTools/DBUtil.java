package customTools;

import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class DBUtil {
	private static final EntityManagerFactory emf = 
			Persistence.createEntityManagerFactory("forthy2");
	public static EntityManagerFactory getEmFactory() {
		return emf;
	}
}