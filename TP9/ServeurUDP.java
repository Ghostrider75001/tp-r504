import java.io.*;
import java.net.*;

public class ServeurUDP 
{
    public static void main(String[] args)
    {
        try 
        {
            DatagramSocket sock = new DatagramSocket(1234);
            while (true) 
            {
                System.out.println("- Waiting Data");
                DatagramPacket packet = new DatagramPacket(new byte[1024], 1024);
                sock.receive(packet);
                String str = new String(packet.getData());
                System.out.println( "str= " + str);
                
                byte[] data = str.getBytes ( );
                DatagramPacket packet2 = new DatagramPacket(data, data.length, packet.getAddress(), 1234);
                sock.send(packet2);
            }
        } 
        catch (Exception ex) 
        {
            System.out.println ( "Erreur!" );
        }
        
    }
}