package ldap;

import javax.naming.NamingException;
import javax.naming.directory.Attribute;
 
public class main {
 
    public static void main(String[] args) throws NamingException{
        System.out.println("Iniciando Autenticacion");
         
        String server="ldap://localhost:389"; // servidor de LDAP
        String usuario="cn=Manager,dc=prueba,dc=com"; // Usuario de Autenticacion
        String tipoAth="simple";//tipo de autenticacion simple o por SSL
        String clave="secret";        
        String dn = "cn=Pepe,ou=Users,dc=prueba,dc=com";
//        dn = "cn=Paco,ou=Users,dc=prueba,dc=com";
 
        ldapAuth ldapAuth=new ldapAuth(server,dn,tipoAth,usuario,clave);
        
        System.out.println("server: " + server);
        System.out.println("dn: " + dn);
        System.out.println("usuario: " + usuario);
        System.out.println("clave: " + clave);
 
        if(ldapAuth.isAutenticado()){
            System.out.println("\nUsuario "+ldapAuth.getUsuario()+" Autenticado Correctamente");
            
//          obtenemos una Propiedad de la autenticacion
            Attribute atr=ldapAuth.cargarPropiedadConexion("givenName");
            System.out.println("Atr: "+atr);
        }
        else{
            System.out.println("Usuario "+ldapAuth.getUsuario()+" No se Puedo Autenticar");
        }
    }
}