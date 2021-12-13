import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.LogManager;


// A simple vulnerable app using log4j
// It will print out the user output with log4j functionalities without security filtering
public class VulnApp {
   static Logger logger = LogManager.getLogger(VulnApp.class);

   public static void main(String... args) {
      System.out.println("'Hello, world.'");
      logger.error(args[0]);
      System.out.println("Exiting.");
   }
}