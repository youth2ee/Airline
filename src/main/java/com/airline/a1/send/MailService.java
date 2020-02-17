package com.airline.a1.send;

import java.util.Properties;

import javax.activation.DataHandler;
import javax.activation.DataSource;
import javax.activation.FileDataSource;
import javax.mail.Message;
import javax.mail.Multipart;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.ui.ModelMap;


import com.airline.a1.member.MembersVO;

import lombok.experimental.Helper;

@Component
public class MailService {
	
	//@Autowired
	private JavaMailSender javaMailSender;
		
	public void mailFindId2(MembersVO membersVO) throws Exception { 
			MimeMessage message = javaMailSender.createMimeMessage();
			MimeMessageHelper helper = new MimeMessageHelper(message, true);
			
			String body = "<div id=\"readFrame\"><table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"width:100%;font-family:'AppeGothic','Malgun Gothic','맑은 고딕','돋음','Dotum','Apple SD Gothic Neo',Arial,Helvetica,sans-serif;word-break:keep-all;font-size:13px;line-height:1.5;color:#444;\">\r\n" + 
					"	<tbody><tr><td align=\"center\">\r\n" + 
					"\r\n" + 
					"	<!-- 아웃룩용 max-width 핵 -->\r\n" + 
					"    <!--[if (gte mso 9)|(IE)]>\r\n" + 
					"      <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n" + 
					"        <tr><td width=\"600\">\r\n" + 
					"            <![endif]-->\r\n" + 
					"			<div style=\"max-width:600px; margin:0 auto;\">\r\n" + 
					"				<table cellpadding=\"0\" cellspacing=\"0\" style=\"width:100%;margin:0;padding:0;border:1px solid #ddd;\"><tbody>\r\n" + 
					"	<tr>\r\n" + 
					"		<td height=\"38\" style=\"vertical-align:top;text-align:left;\">\r\n" + 
					"			<img style=\"width:100%;height:8px;vertical-align:top;\" src=\"https://flyasiana.com/C/pc/image/mail/bg_top_label.jpg\" alt=\"\" loading=\"lazy\">\r\n" + 
					"		</td>\r\n" + 
					"	</tr>\r\n" + 
					"	<tr>\r\n" + 
					"		<td style=\"padding:0 30px\">\r\n" + 
					"			<table cellpadding=\"0\" cellspacing=\"0\" style=\"width:100%;margin:0;padding:0;\">\r\n" + 
					"				<tbody>\r\n" + 
					"				<tr>\r\n" + 
					"					<td style=\"font-family:'AppeGothic','Malgun Gothic','맑은 고딕','돋음','Dotum','Apple SD Gothic Neo',Arial,Helvetica,sans-serif;word-break:keep-all;font-size:13px;text-align:left;\">\r\n" + 
					"						<img src=\"http://211.238.142.26/images/logo/logo.png\" alt=\"\" loading=\"lazy\" style=\"width:222px; height:50px;\">\r\n" + 
					"					</td>\r\n" + 
					"				</tr>\r\n" + 
					"				<tr>\r\n" + 
					"					<td height=\"40\">\r\n" + 
					"					</td>\r\n" + 
					"				</tr>\r\n" + 
					"				<tr>\r\n" + 
					"					<td style=\"font-family:'AppeGothic','Malgun Gothic','맑은 고딕','돋음','Dotum','Apple SD Gothic Neo',Arial,Helvetica,sans-serif;word-break:keep-all;font-size:13px;text-align:left;\">\r\n" + 
					"						<p style=\"margin:0;font-size:23px;line-height:33px;color:#444;font-weight:bold;\"> "+membersVO.getName()+"회원님, 에브리에어 <span style=\"color:#ab7d55;\">아이디</span>를 안내해 드립니다.</p>\r\n" + 
					"					</td>\r\n" + 
					"				</tr>\r\n" + 
					"				<tr>\r\n" + 
					"					<td height=\"50\">\r\n" + 
					"					</td>\r\n" + 
					"				</tr>\r\n" + 
					"				<tr>\r\n" + 
					"					<td style=\"font-family:'AppeGothic','Malgun Gothic','맑은 고딕','돋음','Dotum','Apple SD Gothic Neo',Arial,Helvetica,sans-serif;word-break:keep-all;font-size:13px;text-align:left;\">\r\n" + 
					"						<table cellpadding=\"0\" cellspacing=\"0\" style=\"width:100%;margin:0;border-top:2px solid #666;border-bottom:1px solid #ddd;text-align:left;\">\r\n" + 
					"							<colgroup>\r\n" + 
					"								<col style=\"width:30%\"><col style=\"width:auto\">\r\n" + 
					"							</colgroup>\r\n" + 
					"							<tbody>\r\n" + 
					"								<tr>\r\n" + 
					"									<td colspan=\"2\" height=\"20\">\r\n" + 
					"									</td>\r\n" + 
					"								</tr>\r\n" + 
					"								<tr>\r\n" + 
					"									<th align=\"left\" colspan=\"1\" rowspan=\"1\" scope=\"row\" height=\"30\" style=\"font-family:'AppeGothic','Malgun Gothic','맑은 고딕','돋음','Dotum','Apple SD Gothic Neo',Arial,Helvetica,sans-serif;word-break:keep-all;font-size:13px;text-align:left;\">이름\r\n" + 
					"									</th>\r\n" + 
					"									<td align=\"left\" height=\"30\" style=\"font-family:'AppeGothic','Malgun Gothic','맑은 고딕','돋음','Dotum','Apple SD Gothic Neo',Arial,Helvetica,sans-serif;word-break:keep-all;font-size:13px;text-align:left;\">\r\n" + 
					"										"+membersVO.getName()+"\r\n" + 
					"									</td>\r\n" + 
					"								</tr>\r\n" + 
					"								<tr>\r\n" + 
					"									<th align=\"left\" colspan=\"1\" rowspan=\"1\" scope=\"row\" height=\"30\" style=\"font-family:'AppeGothic','Malgun Gothic','맑은 고딕','돋음','Dotum','Apple SD Gothic Neo',Arial,Helvetica,sans-serif;word-break:keep-all;font-size:13px;text-align:left;\">아이디 \r\n" + 
					"									</th>\r\n" + 
					"									<td align=\"left\" height=\"30\" style=\"font-family:'AppeGothic','Malgun Gothic','맑은 고딕','돋음','Dotum','Apple SD Gothic Neo',Arial,Helvetica,sans-serif;word-break:keep-all;font-size:13px;text-align:left;\">\r\n" + 
					"										<span style=\"font-weight:bold;color:#ab7d55;\">\r\n" + 
					"											"+membersVO.getId()+"\r\n" + 
					"										</span>\r\n" + 
					"									</td>\r\n" + 
					"								</tr>\r\n" + 
					"								<tr>\r\n" + 
					"									<td colspan=\"2\" height=\"20\">\r\n" + 
					"									</td>\r\n" + 
					"								</tr>\r\n" + 
					"							</tbody>\r\n" + 
					"						</table>\r\n" + 
					"					</td>\r\n" + 
					"				</tr>\r\n" + 
					"				<tr>\r\n" + 
					"					<td height=\"30\">\r\n" + 
					"					</td>\r\n" + 
					"				</tr>\r\n" + 
					"				<tr>\r\n" + 
					"					<td align=\"center\" style=\"font-family:'AppeGothic','Malgun Gothic','맑은 고딕','돋음','Dotum','Apple SD Gothic Neo',Arial,Helvetica,sans-serif;word-break:keep-all;font-size:13px;text-align:left;\">\r\n" + 
					"						<table width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" style=\"margin:0 auto;font-size:0\">\r\n" + 
					"							<tbody>\r\n" + 
					"								<tr>\r\n" + 
					"									<td>\r\n" + 
					"									</td>\r\n" + 
					"									<td width=\"140px\">\r\n" + 
					"										<table width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" style=\"table-layout:fixed;margin:0 auto\">\r\n" + 
					"											<tbody>\r\n" + 
					"												<tr>\r\n" + 
					"													<td width=\"5\" height=\"46\">\r\n" + 
					"														<img src=\"https://flyasiana.com/C/pc/image/mail/btn_red_left.jpg\" width=\"5\" height=\"46\" style=\"border:0;vertical-align:top\" alt=\"\" loading=\"lazy\">\r\n" + 
					"													</td>\r\n" + 
					"													<td align=\"center\" valign=\"middle\" width=\"100%\" height=\"46\" style=\"background:#d60815\">\r\n" + 
					"														<a target=\"_blank\" href=\"http://211.238.142.26/member/memberLogin\" style=\"display:block;font-family:'appegothic','malgun gothic','맑은 고딕','돋음','dotum','apple sd gothic neo',arial,helvetica,sans-serif;word-break:keep-all;color:#ffffff;font-size:13px;text-decoration:none;\" rel=\"noreferrer noopener\">로그인</a> \r\n" + 
					"													</td>\r\n" + 
					"													<td width=\"5\" height=\"46\">\r\n" + 
					"														<img src=\"https://flyasiana.com/C/pc/image/mail/btn_red_right.jpg\" width=\"5\" height=\"46\" style=\"border:0;vertical-align:top\" alt=\"\" loading=\"lazy\">\r\n" + 
					"													</td>\r\n" + 
					"												</tr>\r\n" + 
					"											</tbody>\r\n" + 
					"										</table>\r\n" + 
					"									</td>\r\n" + 
					"									<td>\r\n" + 
					"									</td>\r\n" + 
					"								</tr>\r\n" + 
					"							</tbody>\r\n" + 
					"						</table>\r\n" + 
					"					</td>\r\n" + 
					"				</tr>\r\n" + 
					"				<tr>\r\n" + 
					"					<td height=\"80\">\r\n" + 
					"					</td>\r\n" + 
					"				</tr>\r\n" + 
					"				</tbody>\r\n" + 
					"			</table>\r\n" + 
					"		</td>\r\n" + 
					"	</tr>\r\n" + 
					"	<tr>\r\n" + 
					"<td style=\"background:#eee;padding:25px 30px;border-top:1px solid #ddd;font-family:'AppeGothic','Malgun Gothic','맑은 고딕','돋음','Dotum','Apple SD Gothic Neo',Arial,Helvetica,sans-serif;word-break:keep-all;text-align:left;\">\r\n" + 
					"<p style=\"margin:0;font-size:11px;line-height:18px;color:#555;\">\r\n" + 
					"본 메일은 에브리에어에 입력하신 이메일 주소로 발송되었으며, 발신 전용이므로 문의사항은 홈페이지\r\n" + 
					"<a style=\"color:#75563b;text-decoration:underline;\" href=\"https://flyasiana.com/C/KR/KO/customer/main\" target=\"_blank\" rel=\"noreferrer noopener\">고객센터</a>를 이용해 주시기 바랍니다. <br>\r\n" + 
					"</p>\r\n" + 
					"<p style=\"margin:15px 0 0 0;font-size:11px;line-height:18px;color:#555;\">\r\n" + 
					"에브리에어는 정보통신망 이용 촉진 및 정보보호 등에 관한 법률을 준수하고 있습니다.\r\n" + 
					"</p>\r\n" + 
					"<p style=\"margin:15px 0 0 0;font-size:11px;line-height:18px;color:#555;\">\r\n" + 
					"<a style=\"color:#75563b;text-decoration:underline;\" href=\"https://flyasiana.com/C/KR/KO/cms/contents/menu/CM201802220000728520?menuId=CM201802220000728520\" target=\"_blank\" rel=\"noreferrer noopener\">예약 및 문의</a> : 1588-8000 / 02-2669-8000&nbsp; <br> \r\n" + 
					"<strong>에브리에어 서비스센터</strong> : 1588-8180 / 02-2669-8180&nbsp; \r\n" + 
					"</p>\r\n" + 
					"<p style=\"margin:15px 0 0 0;font-size:11px;line-height:18px;color:#555;\">\r\n" + 
					"ⓒ Asiana Airlines Co. All Right Reserved.	\r\n" + 
					"</p>\r\n" + 
					"</td>\r\n" + 
					"</tr>\r\n" + 
					"</tbody></table>\r\n" + 
					"\r\n" + 
					"\r\n" + 
					"</div>"; //메일 내용 입력해주세요.
			
			helper.setSubject("[에브리에어] 홈페이지 아이디를 안내 해드립니다.");
			helper.setTo(membersVO.getEmail());
			helper.setText(body, true);
			
			
			javaMailSender.send(message);
	}
	
}
