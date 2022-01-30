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
public class Ejercicio3 {
    public static void main(String[] args) {
        Scanner leer = new Scanner(System.in);
        int n, i, j;
        //Ingrese los elementos de la matriz
        int[][] A = new int[3][4];
        for (i = 0; i < 3; i++) {
            for (j = 0; j < 4; j++) {
                System.out.print("A[" + i + "][" + j + "] :");
                A[i][j] = leer.nextInt();
            }
        }
        System.out.println("La matriz A es:");
        for (i = 0; i < 3; i++) {
            for (j = 0; j < 4; j++) {
                System.out.print(A[i][j] + " ");
            }
            System.out.println("");
        }
        System.out.println("Resultado :" + contar(A));
        
        
    }
    public static boolean esPrimo(int num) {
        int k = 2;
        boolean primo = true;
        while (k <= num / 2) {
            if (num % k == 0) {
                primo = false;
            }
            k++;
        }
        return primo;
    }
    public static int contar(int[][] B) {
        int i, j, conta = 0;
        int mayor = 0;
        for (i = 0; i < 3; i++) {
            for (j = 0; j < 4; j++) {
                if (esPrimo(B[i][j])) {
                    if (B[i][j] > mayor) {
                        mayor = B[i][j];
                    }
                }
            }
        }
        System.out.println("Mayor numero primo es " + mayor);
        for (i = 0; i < 3; i++) {
            for (j = 0; j < 4; j++) {
                if (B[i][j]==mayor) {
                    conta++;
                }
            }
        }
        return conta;
    }
}
