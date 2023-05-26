/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package data;

import java.util.ArrayList;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import common.Residuo;

/**
 *
 * @author vicky
 */

public class EsenVerDataAccess implements IDataConstants {
	
	private static EsenVerDataAccess instance;
	private Connection conexion; 
	
	private EsenVerDataAccess() {
		try {
			conexion = DriverManager.getConnection(CONN_STRING);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}

	public synchronized static EsenVerDataAccess getInstance() {
		if (instance==null) {
			instance = new EsenVerDataAccess();
		}
		return instance;
	}
	
	public ArrayList<Residuo> getResiduos(String NombreProductor, String NombreRegion, String Fecha) {
		ArrayList<Residuo> result = new ArrayList<>();
		try {		    
			PreparedStatement  spRetornarResiduos = conexion.prepareStatement("{call dbo.SP_RetornarResiduos(?,?,?)}");
			spRetornarResiduos.setString(1, NombreProductor);  
                        spRetornarResiduos.setString(2, NombreRegion);
                        spRetornarResiduos.setString(3, Fecha);
                        Boolean rsB = spRetornarResiduos.execute();
                        
                        if (rsB){
                            ResultSet rs = spRetornarResiduos.executeQuery();
                            
                            while (rs.next()) {
                                Residuo newResiduo = new Residuo();
                                newResiduo.setNombre(rs.getString("Nombre"));
                                newResiduo.setVolumen(rs.getInt("Volumen"));
                                newResiduo.setTipo(rs.getString("Tipo"));
                                newResiduo.setUnidad(rs.getString("Unidad"));
                                result.add(newResiduo);
                            }
                        }
                        else{
                            return null;
                        }
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return result;
	}
}