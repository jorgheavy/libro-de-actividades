import angel.lib.*;
import angel.utl.*;

import java.io.*;
import java.util.*;



class prueba extends Object
{
   public static void main(String args[])
   {
      String str1 = new String("(a (b c) d)");
      String str2 = new String("a");
      
      Predicado p = new Predicado(str1);

      System.out.println("texto             = "+p.leeDesPredicado()+" {"+p.leeDesEstado()+"}");
      //System.out.println("profundidad       = "+p.leeProfundidad());
      //System.out.println("Numero Terminos   = "+p.leeNumeroTerminos());
      //System.out.println("Numero Predicados = "+p.leeNumeroPredicados());
      //System.out.println("Numero Variables  = "+p.leeNumeroVariables());

      for(int i=0;i<p.leeNumeroPredicados();i++)
      {
         System.out.println();
	 System.out.print("Predicado."+i+" ("+p.leeNumeroTerminosPredicado(i)+") = ");
         for(int j=0;j<p.leeNumeroTerminosPredicado(i);j++)
	 {
	    System.out.print("\t");
	    if (p.leeTipoTermino(i,j)==Predicado.TERM_PREDICADO) System.out.print("("+p.leeTermino(i,j)+")");
	    else System.out.print(p.leeTermino(i,j));
	 }
      }
      System.out.println(" ");
      
      Conexion bd = new Conexion(); bd.inicializar("jdbc:odbc:YECBDE","","","");
      Sesion sesion = bd.crearSesion();
      sesion.login("DVARGAS","123456");
      
      Capa1Predicado reg = sesion.crearCapa1Predicado();
      reg.ponPredicado(p);
      //System.out.println("insertar="+reg.insertar());
      System.out.println("registro="+reg.leeCodRegistro());
      System.out.println("buscar="+reg.buscar());
      System.out.println("registro="+reg.leeCodRegistro());
      sesion.logout();
      bd.desconectar();
   }
}