package actionsupportpackage;

import static com.opensymphony.xwork2.Action.INPUT;
import static com.opensymphony.xwork2.Action.SUCCESS;
import com.opensymphony.xwork2.ActionSupport;
import entity.Employee;
import entity.HibernateUtil;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;

public class LoginActionSupport extends ActionSupport {

    String sid;
    String pw;
    String firstname;
    String lastname;

    Session hibernateSession;
    Employee employee;
    List lista1;

    public String execute() throws Exception {
        hibernateSession = HibernateUtil.getSessionFactory().openSession();
        hibernateSession.beginTransaction();
        System.out.println("session get");

        if (sid != null && pw != null && (!sid.equals("")) && (!pw.equals(""))) {
            employee = (Employee) hibernateSession.createQuery("from Employee where sid='" + sid + "'AND pw='" + pw + "'").uniqueResult();
       
        } else {
            addActionError("User Name does not exist");
            return INPUT;
        }
        if (employee == null) {
            addActionError("User Name does not exist");
            return INPUT;
        }

        if (employee.getTipousuario() == 1) {
            addActionMessage("Welcome you logined");
            System.out.println(employee.toString());
            Query consulta = hibernateSession.createQuery("from Employee");
            lista1 = consulta.list();
            return SUCCESS;
        }
        if (employee.getTipousuario() == 2) {
            addActionMessage("Welcome you logined");
            return NONE;
        }
        if (employee.getTipousuario() == 3) {
            addActionMessage("Welcome you logined");
            return LOGIN;
        }
        return INPUT;
    }

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

    public List getLista1() {
        return lista1;
    }

    public void setLista1(List lista1) {
        this.lista1 = lista1;
    }

    public String getFirstname() {
        return firstname;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

}
