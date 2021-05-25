package pojos;
/*
<dependency>
    <groupId>com.fasterxml.jackson.core</groupId>
    <artifactId>jackson-databind</artifactId>
    <version>2.9.8</version>
</dependency>
 */

public class Country {
    private int id;
    private String name;
    private String states;
    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    public String getStates() {
        return states;
    }
    public void setStates(String states) {
        this.states = states;
    }
}

