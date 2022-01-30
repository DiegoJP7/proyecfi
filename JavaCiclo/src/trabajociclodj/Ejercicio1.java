/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package trabajociclodj;

import java.util.Scanner;

/**
 *
 * @author diegojp
 */
public class Ejercicio1 {
    public static void main(String[] args) {
        Scanner leer = new Scanner(System.in);
        int n, i, conta = 0, num, digito;
        System.out.print("Ingrese el tamaño del vector :");
        n = leer.nextInt();
        int[] A = new int[n];
        //Ingresar datos al vector
        for (i = 0; i < n; i++) {
            System.out.print("Ingrese numero del vector A:");
            A[i] = leer.nextInt();
        }
        //Encontrar el numero 2 y contarlo
        for (i = 0; i < n; i++) {
            num = A[i];
            while (num > 0) {
                digito = num % 10;
                if (digito == 2) {
                    conta++;
                }
                num=num/10;
            }
        }
        System.out.println("El 2 se repite " + conta + " veces");
    }
}


