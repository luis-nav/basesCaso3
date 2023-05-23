/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Project/Maven2/JavaApp/src/main/java/${packagePath}/${mainClassName}.java to edit this template
 */

package main;
import data.EsenVerDataAccess;
import java.util.ArrayList;
import common.Residuo;
import common.Pantalla;

/**
 *
 * @author vicky
 */
public class App_Escencial_Verde {

    public static void main(String[] args) {
        new Pantalla().setVisible(true);
        
        ArrayList<Residuo> Residuos = EsenVerDataAccess.getInstance().getResiduos("KFC", "San Jose Oeste", "2023-05-24");
		
		for(Residuo residuo : Residuos) {
			System.out.println("Tipo residuo ID: " + residuo.getTipoResiduoID() + " Unidad de medida ID: " + residuo.getUnidadDeMedidaID());
		}
    }
}