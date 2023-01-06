package com.project.cuoiky.ltw.utils;

import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.util.HashMap;
import java.util.Properties;

public class SendMailUtil {

    public static void send(String toEmail, String subject, HashMap<String, String> hashMapContent) {
        try {
            final String fromEmail = "quangthinh0222@gmail.com";
            final String password = "qxuajdnvmutihzay";

            Properties props = new Properties();
            props.put("mail.smtp.host", "smtp.gmail.com"); //SMTP Host
            props.put("mail.smtp.port", "587"); //TLS Port
            props.put("mail.smtp.auth", "true"); //enable authentication
            props.put("mail.smtp.starttls.enable", "true"); //enable STARTTLS

            Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
                protected PasswordAuthentication getPasswordAuthentication() {
                    return new PasswordAuthentication(fromEmail, password);
                }
            });

            MimeMessage message = new MimeMessage(session);
            message.setFrom(new InternetAddress(fromEmail));
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(toEmail, false));
            message.setSubject(subject);

            // tai noi dung html
            String htmlContent = replaceHtmlContent(hashMapContent);

            message.setContent(htmlContent, "text/html; charset=UTF-8");

            // gui mail
            Transport.send(message);

            System.out.println("Gui mail thanh cong");
        } catch (Exception ex) {
            System.out.println("Gui mail that bai");
        }
    }

    public static void main(String[] args) {
        HashMap<String, String> hashMapContent = new HashMap<>();
        hashMapContent.put("TITLE", "Test Mail");
        hashMapContent.put("CONTENT", "Hello world");
        hashMapContent.put("BUTTON", "Click here");
        hashMapContent.put("LINK", "www.google.com");

        send("quangthinh0222@gmail.com", "Test Mail", hashMapContent);
    }

    private static String replaceHtmlContent(HashMap<String, String> hashMapContent) {
        String title = hashMapContent.containsKey("TITLE") ? hashMapContent.get("TITLE") : "";
        String content = hashMapContent.containsKey("CONTENT") ? hashMapContent.get("CONTENT") : "";
        String button = hashMapContent.containsKey("BUTTON") ? hashMapContent.get("BUTTON") : "";
        String link = hashMapContent.containsKey("LINK") ? hashMapContent.get("LINK") : "";

        // https://github.com/konsav/email-templates/blob/master/promotional.html
        String templateMail = "<html xmlns=\"http://www.w3.org/1999/xhtml\">\n" +
                "<head>\n" +
                "\t<meta http-equiv=\"content-type\" content=\"text/html; charset=utf-8\">\n" +
                "  \t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0;\">\n" +
                " \t<meta name=\"format-detection\" content=\"telephone=no\"/>\n" +
                "\n" +
                "\t<!-- Responsive Mobile-First Email Template by Konstantin Savchenko, 2015.\n" +
                "\thttps://github.com/konsav/email-templates/  -->\n" +
                "\n" +
                "\t<style>\n" +
                "/* Reset styles */ \n" +
                "body { margin: 0; padding: 0; min-width: 100%; width: 100% !important; height: 100% !important;}\n" +
                "body, table, td, div, p, a { -webkit-font-smoothing: antialiased; text-size-adjust: 100%; -ms-text-size-adjust: 100%; -webkit-text-size-adjust: 100%; line-height: 100%; }\n" +
                "table, td { mso-table-lspace: 0pt; mso-table-rspace: 0pt; border-collapse: collapse !important; border-spacing: 0; }\n" +
                "img { border: 0; line-height: 100%; outline: none; text-decoration: none; -ms-interpolation-mode: bicubic; }\n" +
                "#outlook a { padding: 0; }\n" +
                ".ReadMsgBody { width: 100%; } .ExternalClass { width: 100%; }\n" +
                ".ExternalClass, .ExternalClass p, .ExternalClass span, .ExternalClass font, .ExternalClass td, .ExternalClass div { line-height: 100%; }\n" +
                "\n" +
                "/* Rounded corners for advanced mail clients only */ \n" +
                "@media all and (min-width: 560px) {\n" +
                "\t.container { border-radius: 8px; -webkit-border-radius: 8px; -moz-border-radius: 8px; -khtml-border-radius: 8px; }\n" +
                "}\n" +
                "\n" +
                "/* Set color for auto links (addresses, dates, etc.) */ \n" +
                "a, a:hover {\n" +
                "\tcolor: #FFFFFF;\n" +
                "}\n" +
                ".footer a, .footer a:hover {\n" +
                "\tcolor: #828999;\n" +
                "}\n" +
                "\n" +
                " \t</style>\n" +
                "\n" +
                "\t<!-- MESSAGE SUBJECT -->\n" +
                "\t<title>Responsive HTML email templates</title>\n" +
                "\n" +
                "</head>\n" +
                "\n" +
                "<!-- BODY -->\n" +
                "<!-- Set message background color (twice) and text color (twice) -->\n" +
                "<body topmargin=\"0\" rightmargin=\"0\" bottommargin=\"0\" leftmargin=\"0\" marginwidth=\"0\" marginheight=\"0\" width=\"100%\" style=\"border-collapse: collapse; border-spacing: 0; margin: 0; padding: 0; width: 100%; height: 100%; -webkit-font-smoothing: antialiased; text-size-adjust: 100%; -ms-text-size-adjust: 100%; -webkit-text-size-adjust: 100%; line-height: 100%;\n" +
                "\tbackground-color: #2D3445;\n" +
                "\tcolor: #FFFFFF;\"\n" +
                "\tbgcolor=\"#2D3445\"\n" +
                "\ttext=\"#FFFFFF\">\n" +
                "\n" +
                "<!-- SECTION / BACKGROUND -->\n" +
                "<!-- Set message background color one again -->\n" +
                "<table width=\"100%\" align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: collapse; border-spacing: 0; margin: 0; padding: 0; width: 100%;\" class=\"background\"><tr><td align=\"center\" valign=\"top\" style=\"border-collapse: collapse; border-spacing: 0; margin: 0; padding: 0;\"\n" +
                "\tbgcolor=\"#2D3445\">\n" +
                "\n" +
                "<!-- WRAPPER -->\n" +
                "<!-- Set wrapper width (twice) -->\n" +
                "<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" align=\"center\"\n" +
                "\twidth=\"500\" style=\"border-collapse: collapse; border-spacing: 0; padding: 0; width: inherit;\n" +
                "\tmax-width: 500px;\" class=\"wrapper\">\n" +
                "\n" +
                "\t<tr>\n" +
                "\t\t<td align=\"center\" valign=\"top\" style=\"border-collapse: collapse; border-spacing: 0; margin: 0; padding: 0; padding-left: 6.25%; padding-right: 6.25%; width: 87.5%;\n" +
                "\t\t\tpadding-top: 20px;\n" +
                "\t\t\tpadding-bottom: 20px;\">\n" +
                "\n" +
                "\t\t\t<!-- PREHEADER -->\n" +
                "\t\t\t<!-- Set text color to background color -->\n" +
                "\t\t\t<div style=\"display: none; visibility: hidden; overflow: hidden; opacity: 0; font-size: 1px; line-height: 1px; height: 0; max-height: 0; max-width: 0;\n" +
                "\t\t\t\tcolor: #2D3445;\" class=\"preheader\">\n" +
                "\t\t\t\tAvailable on&nbsp;GitHub and&nbsp;CodePen. Highly compatible. Designer friendly. More than 50%&nbsp;of&nbsp;total email opens occurred on&nbsp;a&nbsp;mobile device&nbsp;— a&nbsp;mobile-friendly design is&nbsp;a&nbsp;must for&nbsp;email campaigns.</div>\n" +
                "\n" +
                "\t\t\t<!-- LOGO -->\n" +
                "\t\t\t<!-- Image text color should be opposite to background color. Set your url, image src, alt and title. Alt text should fit the image size. Real image size should be x2. URL format: http://domain.com/?utm_source={{Campaign-Source}}&utm_medium=email&utm_content=logo&utm_campaign={{Campaign-Name}} -->\n" +
                "\t\t\t<a target=\"_blank\" style=\"text-decoration: none;\"\n" +
                "\t\t\t\thref=\"https://github.com/konsav/email-templates/\"><img border=\"0\" vspace=\"0\" hspace=\"0\"\n" +
                "\t\t\t\tsrc=\"https://raw.githubusercontent.com/konsav/email-templates/master/images/logo-white.png\"\n" +
                "\t\t\t\twidth=\"100\" height=\"30\"\n" +
                "\t\t\t\talt=\"Logo\" title=\"Logo\" style=\"\n" +
                "\t\t\t\tcolor: #FFFFFF;\n" +
                "\t\t\t\tfont-size: 10px; margin: 0; padding: 0; outline: none; text-decoration: none; -ms-interpolation-mode: bicubic; border: none; display: block;\" /></a>\n" +
                "\n" +
                "\t\t</td>\n" +
                "\t</tr>\n" +
                "\n" +
                "\t<!-- HERO IMAGE -->\n" +
                "\t<!-- Image text color should be opposite to background color. Set your url, image src, alt and title. Alt text should fit the image size. Real image size should be x2 (wrapper x2). Do not set height for flexible images (including \"auto\"). URL format: http://domain.com/?utm_source={{Campaign-Source}}&utm_medium=email&utm_content={{Ìmage-Name}}&utm_campaign={{Campaign-Name}} -->\n" +
                "\t<tr>\n" +
                "\t\t<td align=\"center\" valign=\"top\" style=\"border-collapse: collapse; border-spacing: 0; margin: 0; padding: 0;\n" +
                "\t\t\tpadding-top: 0px;\" class=\"hero\"><a target=\"_blank\" style=\"text-decoration: none;\"\n" +
                "\t\t\thref=\"https://github.com/konsav/email-templates/\"><img border=\"0\" vspace=\"0\" hspace=\"0\"\n" +
                "\t\t\tsrc=\"https://raw.githubusercontent.com/konsav/email-templates/master/images/hero-block.png\"\n" +
                "\t\t\talt=\"Please enable images to view this content\" title=\"Hero Image\"\n" +
                "\t\t\twidth=\"340\" style=\"\n" +
                "\t\t\twidth: 87.5%;\n" +
                "\t\t\tmax-width: 340px;\n" +
                "\t\t\tcolor: #FFFFFF; font-size: 13px; margin: 0; padding: 0; outline: none; text-decoration: none; -ms-interpolation-mode: bicubic; border: none; display: block;\"/></a></td>\n" +
                "\t</tr>\n" +
                "\n" +
                "\t<!-- SUPHEADER -->\n" +
                "\t<!-- Set text color and font family (\"sans-serif\" or \"Georgia, serif\") -->\n" +
                "\t<tr>\n" +
                "\t\t<td align=\"center\" valign=\"top\" style=\"border-collapse: collapse; border-spacing: 0; margin: 0; padding: 0; padding-left: 6.25%; padding-right: 6.25%; width: 87.5%; font-size: 14px; font-weight: 400; line-height: 150%; letter-spacing: 2px;\n" +
                "\t\t\tpadding-top: 27px;\n" +
                "\t\t\tpadding-bottom: 0;\n" +
                "\t\t\tcolor: #FFFFFF;\n" +
                "\t\t\tfont-family: sans-serif;\" class=\"supheader\">\n" +
                "\t\t\t\tShop Drum\n" +
                "\t\t</td>\n" +
                "\t</tr>\n" +
                "\n" +
                "\t<!-- HEADER -->\n" +
                "\t<!-- Set text color and font family (\"sans-serif\" or \"Georgia, serif\") -->\n" +
                "\t<tr>\n" +
                "\t\t<td align=\"center\" valign=\"top\" style=\"border-collapse: collapse; border-spacing: 0; margin: 0; padding: 0;  padding-left: 6.25%; padding-right: 6.25%; width: 87.5%; font-size: 24px; font-weight: bold; line-height: 130%;\n" +
                "\t\t\tpadding-top: 5px;\n" +
                "\t\t\tcolor: #FFFFFF;\n" +
                "\t\t\tfont-family: sans-serif;\" class=\"header\">\n" +
                "\t\t\t\t" + title + "\n" +
                "\t\t</td>\n" +
                "\t</tr>\n" +
                "\n" +
                "\t<!-- PARAGRAPH -->\n" +
                "\t<!-- Set text color and font family (\"sans-serif\" or \"Georgia, serif\"). Duplicate all text styles in links, including line-height -->\n" +
                "\t<tr>\n" +
                "\t\t<td align=\"center\" valign=\"top\" style=\"border-collapse: collapse; border-spacing: 0; margin: 0; padding: 0; padding-left: 6.25%; padding-right: 6.25%; width: 87.5%; font-size: 17px; font-weight: 400; line-height: 160%;\n" +
                "\t\t\tpadding-top: 15px; \n" +
                "\t\t\tcolor: #FFFFFF;\n" +
                "\t\t\tfont-family: sans-serif;\" class=\"paragraph\">\n" +
                "\t\t\t\t" + content + "\n" +
                "\t\t</td>\n" +
                "\t</tr>\n" +
                "\n" +
                "\t<!-- BUTTON -->\n" +
                "\t<!-- Set button background color at TD, link/text color at A and TD, font family (\"sans-serif\" or \"Georgia, serif\") at TD. For verification codes add \"letter-spacing: 5px;\". Link format: http://domain.com/?utm_source={{Campaign-Source}}&utm_medium=email&utm_content={{Button-Name}}&utm_campaign={{Campaign-Name}} -->\n" +
                "\t<tr>\n" +
                "\t\t<td align=\"center\" valign=\"top\" style=\"border-collapse: collapse; border-spacing: 0; margin: 0; padding: 0; padding-left: 6.25%; padding-right: 6.25%; width: 87.5%;\n" +
                "\t\t\tpadding-top: 25px;\n" +
                "\t\t\tpadding-bottom: 5px;\" class=\"button\"><a\n" +
                "\t\t\thref="+ link +" target=\"_blank\" style=\"text-decoration: underline;\">\n" +
                "\t\t\t\t<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" align=\"center\" style=\"max-width: 240px; min-width: 120px; border-collapse: collapse; border-spacing: 0; padding: 0;\"><tr><td align=\"center\" valign=\"middle\" style=\"padding: 12px 24px; margin: 0; text-decoration: underline; border-collapse: collapse; border-spacing: 0; border-radius: 4px; -webkit-border-radius: 4px; -moz-border-radius: 4px; -khtml-border-radius: 4px;\"\n" +
                "\t\t\t\t\tbgcolor=\"#E9703E\"><a target=\"_blank\" style=\"text-decoration: underline;\n" +
                "\t\t\t\t\tcolor: #FFFFFF; font-family: sans-serif; font-size: 17px; font-weight: 400; line-height: 120%;\"\n" +
                "\t\t\t\t\thref="+ link +">\n" +
                "\t\t\t\t\t\t" + button + "\n" +
                "\t\t\t\t\t</a>\n" +
                "\t\t\t</td></tr></table></a>\n" +
                "\t\t</td>\n" +
                "\t</tr>\n" +
                "\n" +
                "\t<!-- LINE -->\n" +
                "\t<!-- Set line color -->\n" +
                "\t<tr>\n" +
                "\t\t<td align=\"center\" valign=\"top\" style=\"border-collapse: collapse; border-spacing: 0; margin: 0; padding: 0; padding-left: 6.25%; padding-right: 6.25%; width: 87.5%;\n" +
                "\t\t\tpadding-top: 30px;\" class=\"line\"><hr\n" +
                "\t\t\tcolor=\"#565F73\" align=\"center\" width=\"100%\" size=\"1\" noshade style=\"margin: 0; padding: 0;\" />\n" +
                "\t\t</td>\n" +
                "\t</tr>\n" +
                "\n" +
                "\t<!-- FOOTER -->\n" +
                "\t<!-- Set text color and font family (\"sans-serif\" or \"Georgia, serif\"). Duplicate all text styles in links, including line-height -->\n" +
                "\t<tr>\n" +
                "\t\t<td align=\"center\" valign=\"top\" style=\"border-collapse: collapse; border-spacing: 0; margin: 0; padding: 0; padding-left: 6.25%; padding-right: 6.25%; width: 87.5%; font-size: 13px; font-weight: 400; line-height: 150%;\n" +
                "\t\t\tpadding-top: 10px;\n" +
                "\t\t\tpadding-bottom: 20px;\n" +
                "\t\t\tcolor: #828999;\n" +
                "\t\t\tfont-family: sans-serif;\" class=\"footer\">\n" +
                "\n" +
                "\t\t\t\tCopyright © 2022 Shop Drum\n" +
                "\n" +
                "\t\t\t\t<!-- ANALYTICS -->\n" +
                "\t\t\t\t<!-- http://www.google-analytics.com/collect?v=1&tid={{UA-Tracking-ID}}&cid={{Client-ID}}&t=event&ec=email&ea=open&cs={{Campaign-Source}}&cm=email&cn={{Campaign-Name}} -->\n" +
                "\t\t\t\t<img width=\"1\" height=\"1\" border=\"0\" vspace=\"0\" hspace=\"0\" style=\"margin: 0; padding: 0; outline: none; text-decoration: none; -ms-interpolation-mode: bicubic; border: none; display: block;\"\n" +
                "\t\t\t\tsrc=\"https://raw.githubusercontent.com/konsav/email-templates/master/images/tracker.png\" />\n" +
                "\n" +
                "\t\t</td>\n" +
                "\t</tr>\n" +
                "\n" +
                "<!-- End of WRAPPER -->\n" +
                "</table>\n" +
                "\n" +
                "<!-- End of SECTION / BACKGROUND -->\n" +
                "</td></tr></table>\n" +
                "\n" +
                "</body>\n" +
                "</html>";
        return templateMail;
    }

}
