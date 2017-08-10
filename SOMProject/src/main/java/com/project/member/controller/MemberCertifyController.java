package com.project.member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

@Controller
public class MemberCertifyController {
	public String makeMessage() {
		char[] basket = { 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'F', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S',
				'T', 'U', 'V', 'W', 'X', 'Y', 'Z', '1', '2', '3', '4', '5', '6', '7', '8', '9' };
		String message = "";

		for (int i = 0; i < 7; i++) {
			int index = (int) (Math.random() * basket.length);
			message += basket[index];
		}
		return message;
	}

	@RequestMapping(value = "regForm2.do", method = RequestMethod.GET)
	public ModelAndView sendMail(@RequestParam("Address") String Address) throws AddressException, MessagingException {

		String host = "smtp.naver.com";

		final String username = "mkjoo0909"; // 네이버 아이디
		final String password = "nibe0109!@#"; // 네이버 비밀번ㄹ호
		int port = 465;

		String certifyNumber;
		certifyNumber = makeMessage();

		String recipient = Address;
		String subject = "Sound Of Music에서 보내는 인증메일 입니다."; // 메일의 제목

		String body = " 사용자님의 인증번호는 " + certifyNumber + "입니다. ";

		Properties props = System.getProperties();

		props.put("mail.smtp.host", host);
		props.put("mail.smtp.port", port);
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.ssl.enable", "true");
		props.put("mail.smtp.ssl.trust", host);

		Session session = Session.getDefaultInstance(props, new Authenticator() {
			String un = username;
			String pw = password;

			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(un, pw);
			}
		});

		session.setDebug(true);

		Message mimeMessage = new MimeMessage(session);
		mimeMessage.setFrom(new InternetAddress("mkjoo0909@naver.com"));
		mimeMessage.setRecipient(Message.RecipientType.TO, new InternetAddress(recipient));

		mimeMessage.setSubject(subject);
		mimeMessage.setText(body);
		Transport.send(mimeMessage);

		ModelAndView mv = new ModelAndView();
		mv.setViewName("/member/regForm2");
		mv.addObject("Address", Address);
		mv.addObject("certifyNumber", certifyNumber);

		return mv;
	}

}
