package entity;

public class Employee implements java.io.Serializable {

    private String sid;
    private String pw;
    private int tipousuario;
    private String firstname;
    private String lastname;

    public Employee() {
    }

    public Employee(String sid) {
        this.sid = sid;
    }

    public Employee(String sid, String pw, int tipousuario) {
        this.sid = sid;
        this.pw = pw;
        this.tipousuario = tipousuario;
    }

    public Employee(String sid, String pw, int tipousuario, String firstname, String lastname) {
        this.sid = sid;
        this.pw = pw;
        this.tipousuario = tipousuario;
        this.firstname = firstname;
        this.lastname = lastname;
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

    @Override
    public String toString() {
        return "Employee{" + "sid=" + sid + ", pw=" + pw + ", tipousuario=" + tipousuario + ", firstname=" + firstname + ", lastname=" + lastname + '}';
    }

}
