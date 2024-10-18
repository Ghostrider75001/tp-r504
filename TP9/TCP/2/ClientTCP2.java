// ClientTC2

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.net.ServerSocket;
import java.net.Socket;

public class ClientTCP2 {
    public static void main( String[] args) 
    {
        try
        {
            Socket socket = new Socket("localhost", 2016);
            DataOutputStream dOut = new DataOutputStream(socket.getOutputStream());
            dOut.writeUTF(args[0]);
            socket.close();
        }
        catch (Exception ex)
        {
            System.out.println ( "Erreur !" );
        }
    }    
}
