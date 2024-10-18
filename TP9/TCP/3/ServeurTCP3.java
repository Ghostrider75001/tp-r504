import java.io.*;
import java.net.*;

public class ServeurTCP3 {
    public static void main( String[] args) 
    {
        try
        {
            ServerSocket socketsever = new ServerSocket( 2016 );
            System.out.println("Serveur en attente");
            while (true) 
            {
                
                Socket socket =socketsever.accept();
                System.out.println("connection d'un client : ");
                DataInputStream dIn = new DataInputStream(socket.getInputStream());
                String msg = dIn.readUTF();
                System.out.println("Message: " + msg);

                String rev = new StringBuilder(msg).reverse().toString();
                System.out.println("Message reverse: " + rev + " Send");
                DataOutputStream dOut = new DataOutputStream(socket.getOutputStream());
                dOut.writeUTF(rev);
                socket.close();
            }

        }
        catch (Exception ex)
        {
            System.out.println ( "Erreur !" );
        }
    }    
}
