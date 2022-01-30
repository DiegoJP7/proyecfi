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
public class Ejercicio2 {
    public static void main(String[] args) {
        Scanner leer = new Scanner(System.in);
        int i, j;
        int conta, a, b, c, sw;
        int[][] A = new int[4][6];
        //Ingrese los elementos de la matriz
        for (i = 0; i < 4; i++) {
            for (j = 0; j < 6; j++) {
                System.out.print("A["+i+"]["+j+"] :");
                A[i][j] = leer.nextInt();
            }
        }
        System.out.println("La matriz A es:");
        for (i = 0; i < 4; i++) {
            for (j = 0; j < 6; j++) {
                System.out.print(A[i][j] + " ");
            }
            System.out.println("");
        }
        //Verifica si pertenece a la serie fibonacci
        conta = 0;
        for (i = 0; i < 4; i++) {
            for (j = 0; j < 6; j++) {
                a = 0;
                b = 1;
                sw = 0;
                do {
                    c = a + b;
                    if (A[i][j] <= 3) {
                        sw = 1;
                    }
                    else{
                        if (c == A[i][j]) {
                            sw = 1;
                        }
                    }
                    a = b;
                    b = c;
                }while (c < A[i][j] && sw == 0);
                if(sw == 1){
                    conta++;
                }
            }
        }
        System.out.println("Total encontrados " + conta);
    }
}
