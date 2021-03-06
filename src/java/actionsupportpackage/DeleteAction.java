package actionsupportpackage;

import static com.opensymphony.xwork2.Action.SUCCESS;
import com.opensymphony.xwork2.ActionSupport;
import entity.HibernateUtil;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;

public class DeleteAction extends ActionSupport {

    private List lista;

    public List getLista() {
        return lista;
    }

    public void setLista(List lista) {
        this.lista = lista;
    }

    public String execute() throws Exception {
        Session hibernateSession;

        hibernateSession = HibernateUtil.getSessionFactory().openSession();
        Query consulta = hibernateSession.createQuery("from Employee");
        lista = consulta.list();

        return SUCCESS;
    }
}
