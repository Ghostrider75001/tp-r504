
import java.io.*;
import java.net.*;

public class ServeurUDP 
{
	public static void main(String[] args)
	{
		while (true) 
		{
			try 
			{
				DatagramSocket sock = new DatagramSocket(1234);
				System.out.println("- Waiting Data");
				DatagramPacket packet = new DatagramPacket(new byte[1024], 1024);
				sock.receive(packet);
				String str = new String(packet.getData());
				System.out.println( "str= " + str);

				sock.send(packet);
				sock.close();
			}
			catch (Exception ex) 
			{
				System.out.println ( "Erreur!" );
			}

		}
	}
}
