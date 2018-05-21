package actionsupportpackage;

import static com.opensymphony.xwork2.Action.INPUT;
import static com.opensymphony.xwork2.Action.SUCCESS;
import com.opensymphony.xwork2.ActionSupport;
import entity.Employee;
import entity.HibernateUtil;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.Transaction;

public class Update2 extends ActionSupport 
{

private String id,resu;
private List lista3;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }
    public List getLista3() {
        return lista3;
    }

    public void setLista3(List lista3) {
        this.lista3 = lista3;
    }


    public String execute() throws Exception 
 {
 
 
 Session hibernateSession1;
  
 hibernateSession1=HibernateUtil.getSessionFactory().openSession(); 
 Query consulta1=hibernateSession1.createQuery("from Employee where sid = :sid1");
 consulta1.setParameter("sid1", id);
 lista3=consulta1.list();
 
 return SUCCESS;
 }  
}

