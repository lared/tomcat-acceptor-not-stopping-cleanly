import org.apache.catalina.LifecycleException;
import org.apache.catalina.connector.Connector;
import org.apache.catalina.startup.Tomcat;

class SlowStop {
    public static void main(String[] args) throws LifecycleException {
        var connector = new Connector("org.apache.coyote.http11.Http11NioProtocol");
        connector.setPort(0);

        Tomcat tomcat = new Tomcat();
        tomcat.getService().addConnector(connector);

        tomcat.start();
        tomcat.stop();
    }
}
