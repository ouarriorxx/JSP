/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package test;

import dao.IDao;
import entities.Machine;
import entities.Salle;
import services.MachineService;
import services.SalleService;

/**
 *
 * @author oussama
 */
public class Test {

    public static void main(String[] args) {

        IDao<Machine> dao1 = new MachineService();
        IDao<Salle> dao = new SalleService();
        dao.create(new Salle("code1"));
        dao1.create(new Machine("lenovo", "lenovo", 5000, dao.findById(1)));

        for (Machine m : dao1.findAll()) {
            System.out.println(m);
        }
        for(Salle s :dao.findAll()){
            System.out.println(s);
        }

    }
}
