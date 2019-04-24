package cl.model;

import java.util.ArrayList;
import javax.ejb.Singleton;

/**
 *
 * @author profe Hernán
 * 
 */
@Singleton
public class Servicio implements ServicioLocal {

    // Add business logic below. (Right-click in editor and choose
    // "Insert Code > Add Business Method")
    
    private ArrayList<Cliente> lista = new ArrayList<>();

    public Servicio() {
        
        lista.add(new Cliente("1-1","Juan","Cerda"));
        lista.add(new Cliente("1-2","David","Aguirre"));
        lista.add(new Cliente("1-3","Jorge","Caceres"));
        
    }

    @Override
    public void agregarCliente(Cliente cli) {
        
        lista.add(cli);
        
    }

    @Override
    public ArrayList<Cliente> getClientes() {
        return lista;
    }

    @Override
    public Cliente buscar(String rut) {
        for (Cliente c : lista) {
            if (c.getRut().equals(rut)) {
                return c;
            }
        }
        return null;
    }
    
    

  
    
    
    
    
    
    
    
}
