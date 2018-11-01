package net.sf.jsptest.acceptance.jsp;

import junit.framework.AssertionFailedError;
import net.sf.jsptest.HtmlTestCase;

public class BasicJspTest extends HtmlTestCase {

    protected String getWebRoot() {
        return "src/main/webapp";
    }

    public void testRenderingTrivialJsp() throws Exception {
        get("/index.jsp");
        output().shouldContain("Schogini");
    }

    public void testOutputAssertion() throws Exception {
        get("/index.jsp");
        try {
            output().shouldContain("Good Morning");
            throw new RuntimeException("Assertion should've failed");
        } catch (AssertionFailedError expected) {
        }
    }

}
