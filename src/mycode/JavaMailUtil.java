/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mycode;
import java.util.Properties;  
import javax.mail.*;  
import javax.mail.internet.*;  
  
public class JavaMailUtil {  
 public static void sendMail(String recepient) throws Exception {
         
          
        System.out.println("Preparing to send message...");
        Properties properties = new Properties();
        properties.put("mail.smtp.auth", "true");  //Authentication for mail
        properties.put("mail.smtp.starttls.enable", "true");  //tls encription
        properties.put("mail.smtp.host", "smtp.gmail.com");  //host is gmail in this program
        properties.put("mail.smtp.port", "587");  //This 587 port is for use gmail as the host
        String myAccnt="oopproject98@gmail.com";
        String password="Abc1234#";
        Session session = Session.getInstance(properties, new Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(myAccnt, password);
            }
        });
        Message message = prepareMessage(session, myAccnt, recepient);
        Transport.send(message);
        System.out.println("Message sent successfully.");
    }

    private static Message prepareMessage(Session session, String myAccnt, String recepient) {
        try {
            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress(myAccnt));
            message.setRecipient(Message.RecipientType.TO, new InternetAddress(recepient));
            message.setSubject("Test");
            message.setText("test msg ");
            return message;
        } catch (MessagingException ex) {
           // Logger.getLogger(EmailSend.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
} 