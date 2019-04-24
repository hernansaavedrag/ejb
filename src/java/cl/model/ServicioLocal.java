
package cl.model;

import java.util.ArrayList;
import javax.ejb.Local;

/**
 *
 * @author sistemas
 */
@Local
public interface ServicioLocal {

    void agregarCliente(Cliente cli);

    ArrayList<Cliente> getClientes();

    Cliente buscar(String rut);

    String eliminar(String rut);

    String actualizar(String rut, String nombre, String apellido);

    
    
}
