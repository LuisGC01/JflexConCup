/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fes.aragon;

import java.io.FileReader;



/**
 *
 * @author LUIS
 */
public class Pruebas {
    public static void main(String[] args) throws Exception {
            JGramatica j = new JGramatica(new JLexico(new FileReader("prueba.txt")));
            j.parse();
    }
}
