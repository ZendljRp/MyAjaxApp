package com.demoajax;

/**
 * Created by Luis on 26/05/2016.
 */
public class Person {
    private String name;
    private String lastname;
    private String years;

    public Person(){

    }

    public Person(String name, String lastname, String years){
        super();
        this.name = name;
        this.lastname = lastname;
        this.years = years;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public String getYears() {
        return years;
    }

    public void setYears(String years) {
        this.years = years;
    }
}
