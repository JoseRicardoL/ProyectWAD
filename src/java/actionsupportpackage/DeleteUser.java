package actionsupportpackage;

import static com.opensymphony.xwork2.Action.SUCCESS;
import com.opensymphony.xwork2.ActionSupport;
import entity.Employee;
import entity.HibernateUtil;
import org.hibernate.Session;
import org.hibernate.Transaction;

public class DeleteUser extends ActionSupport {

    private String id;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String execute() throws Exception {
        Session hibernateSession;

        hibernateSession = HibernateUtil.getSessionFactory().openSession();

        Transaction t0 = hibernateSession.beginTransaction();
        Employee user = (Employee) hibernateSession.load(Employee.class, id);
        hibernateSession.delete(user);
        t0.commit();

        return SUCCESS;
    }
}
