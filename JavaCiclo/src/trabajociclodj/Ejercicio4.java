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
public class Ejercicio4 {
    public static void main(String[] args) {
        Scanner leer = new Scanner(System.in);
        int n, i, j, k, conta, conta1;
        System.out.print("Ingrese el tamaño de la matriz :");
        n = leer.nextInt();
        int[][] A = new int[n][n];
        int[] vec = new int[n * n];
        int[] aux = new int[n * n];
        for (i = 0; i < n; i++) {
            for (j = 0; j < n; j++) {
                System.out.print("A[" + i + "][" + j + "] :");
                A[i][j] = leer.nextInt();
            }
        }
        System.out.println("La matriz A es:");
        k = 0;
        for (i = 0; i < n; i++) {
            for (j = 0; j < n; j++) {
                System.out.print(A[i][j] + " ");
                vec[k] = A[i][j];
                k++;
            }
            System.out.println("");
        }
        conta1 = 0;
        conta = 0;
        boolean existe;
        for (i = 0; i < vec.length; i++) {
            existe = false;
            for (j = 0; j < i; j++) {
                if (vec[i] == vec[j]) {
                    existe = true;
                }
            }
            if (existe==false) {
                aux[conta1] = vec[i];
                conta1++;
            }
        }
        //Salida
        System.out.println("Elementos que no se repiten ");
        for (i = 0; i < conta1; i++) {
            conta = 0;
            for (j = 0; j < vec.length; j++) {
                if (aux[i] == vec[j]) {
                    conta++;
                }
            }
            if (conta == 1) {
                System.out.print(aux[i] + " , " );
            }
        }
    }
}
