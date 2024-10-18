
// ClientTC1

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.net.ServerSocket;
import java.net.Socket;

public class ClientTCP1 {
    public static void main( String[] args) 
    {
        try
        {
            Socket socket = new Socket("localhost", 2016);
            DataOutputStream dOut = new DataOutputStream(socket.getOutputStream());
            dOut.writeUTF("Message test");
            socket.close();
        }
        catch (Exception ex)
        {
            System.out.println ( "Erreur !" );
        }
    }    
}
