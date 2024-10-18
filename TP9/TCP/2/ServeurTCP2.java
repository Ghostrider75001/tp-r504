import java.io.*;
import java.net.*;

public class ServeurTCP2 {
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
                System.out.println("Message: " + dIn.readUTF());
                socket.close();
            }

        }
        catch (Exception ex)
        {
            System.out.println ( "Erreur !" );
        }
    }    
}
