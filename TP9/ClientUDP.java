import java.io.*;
import java.net.*;

public class ClientUDP 
{
    public static void main( String[] args) 
    {
        try
        {
            InetAddress addr = InetAddress.getLocalHost();
            System.out.println("AdresseIP = "+addr.getHostAddress());
            String s="Hello World";
            byte[] data = s.getBytes ( );
            DatagramPacket packet = new DatagramPacket(data, data.length, addr, 1234);
            DatagramSocket sock = new DatagramSocket();
            sock.send(packet);
            
            System.out.println("attente retour");
            DatagramPacket packet2 = new DatagramPacket(new byte[1024], 1024);
            sock.receive(packet2);
            String str2 = new String(packet2.getData());
            System.out.println( "srv return= " + str2);
            sock.close();
        }
        catch (Exception ex)
        {
            System.out.println ( "Erreur !" );
        }
    }
}