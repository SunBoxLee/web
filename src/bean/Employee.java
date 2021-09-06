package bean;

public class Employee {
    private String name;
    private String phone;
    private String department;
    private int salary;
    private String username;

    public Employee() {
    }

    public Employee(String name, String phone, String department, int salary, String username) {
        this.name = name;
        this.phone = phone;
        this.department = department;
        this.salary = salary;
        this.username=username;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }

    public int getSalary() {
        return salary;
    }

    public void setSalary(int salary) {
        this.salary = salary;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    @Override
    public String toString() {
        return "Empolyee{" +
                "name='" + name + '\'' +
                ", phone='" + phone + '\'' +
                ", department='" + department + '\'' +
                ", salary=" + salary +
                ", username=" + username +
                '}';
    }
}
