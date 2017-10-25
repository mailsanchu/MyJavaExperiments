package com.att.automation.obj;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * Created by svarkey on 25/10/17.
 */
public class Sanchu {
    private static String A = "variable \"vpc_backend_bucket\" {\n" +
            " description = \"The name of the s3 bucket used to store the vpc backend tfstate. MUST BE SET BY INPUT\"\n" +
            " default = \"automation-api\"\n" +
            "}".replace("\n", "").replace("\r", "");

    public static void main(String[] args) {

        String regex = "(?<=variable)(.*)\"([^\"]*)\" ";
        //String regex = "(?<=variable)(.*)(\".*\")(.[\\s\\S]*)";
        //Pattern p = Pattern.compile(regex);//. represents single character

/*
        Pattern p = Pattern.compile("\"([^\"]*)\"");
        Matcher m = p.matcher(A);
        System.out.println(m.matches());
        while ( m.find() ) {
            String s = m.group(1); // " that is awesome"
            System.out.println(s);
        }


*/
        Pattern p = Pattern.compile("variable \"([^\"]*)\"");
        Matcher m = p.matcher(A);
        while (m.find()) {
            System.out.println(m.group(1));
        }

        Pattern p1 = Pattern.compile("description(\\s*)=(\\s*)\"([^\"]*)\"");
        Matcher m1 = p1.matcher(A);
        while (m1.find()) {
            System.out.println((m1.group(3)));
        }

        Pattern p2 = Pattern.compile("default(\\s*)=(\\s*)\"([^\"]*)\"");
        Matcher m2 = p2.matcher(A);
        while (m2.find()) {
            System.out.println(m2.group(3));
        }
    }
}
