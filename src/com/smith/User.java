package com.smith;

/**
 * Created by smith on 12.01.17.
 */
public class User {

    private String name, surname;
    private int age;
    private String quest1, quest2;
    private int quest3;

    public User(String name, String surname, int age, String quest1, String quest2, int quest3) {
        this.name = name;
        this.surname = surname;
        this.age = age;
        this.quest1 = quest1;
        this.quest2 = quest2;
        this.quest3 = quest3;
    }

    public String getName() {
        return name;
    }

    public String getSurname() {
        return surname;
    }

    public int getAge() {
        return age;
    }

    public String getQuest1() {
        return quest1;
    }

    public String getQuest2() {
        return quest2;
    }

    public int getQuest3() {
        return quest3;
    }
}
