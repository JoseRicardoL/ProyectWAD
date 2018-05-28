package actionsupportpackage;

import static com.opensymphony.xwork2.Action.SUCCESS;
import com.opensymphony.xwork2.ActionSupport;
import entity.Employee;
import entity.HibernateUtil;
import org.hibernate.Session;
import org.hibernate.Transaction;

public class InsertActionSupport extends ActionSupport {

    String sid;
    String pw;
    int tipousuario;
    String firstname;
    String lastname;
    Session hibernateSession;
    Employee employee;

    public String getSid() {
        return this.sid;
    }

    public void setSid(String sid) {
        this.sid = sid;
    }

    public String getPw() {
        return this.pw;
    }

    public void setPw(String pw) {
        this.pw = pw;
    }

    public int getTipousuario() {
        return this.tipousuario;
    }

    public void setTipousuario(int tipousuario) {
        this.tipousuario = tipousuario;
    }

    public String getFirstname() {
        return this.firstname;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    public String getLastname() {
        return this.lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public Session getHibernateSession() {
        return hibernateSession;
    }

    public void setHibernateSession(Session hibernateSession) {
        this.hibernateSession = hibernateSession;
    }

    public Employee getLogin() {
        return employee;
    }

    public void setLogin(Employee login) {
        this.employee = login;
    }

    public String execute() throws Exception {
        hibernateSession = HibernateUtil.getSessionFactory().openSession();

        Transaction t0 = hibernateSession.beginTransaction();
        Employee user0 = new Employee();
        user0.setSid(sid);
        user0.setPw(pw);
        user0.setTipousuario(tipousuario);
        user0.setFirstname(firstname);
        user0.setLastname(lastname);
        hibernateSession.save(user0);
        t0.commit();
        return SUCCESS;
    }
}
