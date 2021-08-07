package com.study.project.user.service;

import com.study.project.user.domain.LoginDTO;
import com.study.project.user.domain.UserVO;
import com.study.project.user.persistence.UserDAO;
import org.apache.commons.mail.HtmlEmail;
import org.apache.commons.mail.SimpleEmail;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.inject.Inject;
import javax.mail.*;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletResponse;
import java.io.PrintWriter;
import java.util.Properties;
import java.util.Random;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDAO userDAO;

    // 회원가입 처리
    @Override
    public int register(UserVO userVO, HttpServletResponse response) throws Exception {

        response.setContentType("text/html; charset=utf-8");
        PrintWriter out = response.getWriter();

        if (userDAO.check_id(userVO.getJoinId()) == 1) {
            out.println("<script>");
            out.println("alert('동일한 아이디가 있습니다.');");
            out.println("history.go(-1);");
            out.println("</script>");
            out.close();
            return 0;
        } else if (userDAO.check_email(userVO.getJoinEmail()) == 1) {
            out.println("<script>");
            out.println("alert('동일한 이메일이 있습니다.');");
            out.println("history.go(-1);");
            out.println("</script>");
            out.close();
            return 0;
        }
        userVO.setJoinApprovalKey(create_key());
        userDAO.register(userVO);
        send_mail(userVO);
        return 1;
    }

    // 로그인 처리
    @Override
    public UserVO login(LoginDTO loginDTO) throws Exception {
        return userDAO.login(loginDTO);
    }

    // 아이디 중복 검사(AJAX)
    @Override
    public void check_id(String joinId, HttpServletResponse response) throws Exception {
        PrintWriter out = response.getWriter();
        out.println(userDAO.check_id(joinId));
        out.close();
    }

    // 이메일 중복 검사(AJAX)
    @Override
    public void check_email(String joinEmail, HttpServletResponse response) throws Exception {
        PrintWriter out = response.getWriter();
        out.println(userDAO.check_email(joinEmail));
        out.close();
    }

    // 인증키 랜덤 생성
    @Override
    public String create_key() throws Exception {
        String key = "";
        Random ran = new Random();

        for (int i = 0; i < 8; i++) {
            key += ran.nextInt(10);
        }
        return key;
    }

    @Override
    public void send_mail(UserVO userVO) throws Exception {

        // Mail Server 설정
        String charSet = "utf-8";
        String hostSMTP = "smtp.naver.com";
        String hostSMTPid = "nsqfrnidzb@naver.com";
        String hostSMTPpwd = "!cc3647cc!";

        // 보내는 사람 EMail, 제목, 내용
        String fromEmail = "nsqfrnidzb@naver.com";
        String fromName = "StudyTap";
        String subject = "";
        String msg = "";

        // 회원가입 메일 내용
        subject = "StudyTap 회원가입 인증 메일입니다.";
        msg += "<div align='center' style='border:1px solid black; font-family:verdana'>";
        msg += "<h3 style='color: blue;'>";
        msg += userVO.getJoinId() + "님 회원가입을 환영합니다.</h3>";
        msg += "<div style='font-size: 130%'>";
        msg += "하단의 인증 버튼 클릭 시 정상적으로 회원가입이 완료됩니다.</div><br/>";
        msg += "<form method='post' action='http://localhost:8888/user/approval_email.do'>";
        msg += "<input type='hidden' name='joinEmail' value='" + userVO.getJoinEmail() + "'>";
        msg += "<input type='hidden' name='joinApprovalKey' value='" + userVO.getJoinApprovalKey() + "'>";
        msg += "<input type='submit' value='인증'></form><br/></div>";

        // 받는 사람 E-Mail 주소
        String mail = userVO.getJoinEmail();

        try {
            HtmlEmail email = new HtmlEmail();
            email.setDebug(true);
            email.setHostName(hostSMTP);
            email.setSmtpPort(587); // SMTP 포트 번호 입력 587
            email.setCharset(charSet);
            email.setSslSmtpPort(email.getSmtpPort());

            email.setAuthentication(hostSMTPid, hostSMTPpwd);

//            email.setSSLOnConnect(true); // SSL 접속 활성화
//            email.setStartTLSEnabled(true); // TLS 접속 활성화
            email.setSSL(true);
            email.setTLS(true);
            email.addTo(mail, charSet);
            email.setFrom(fromEmail, fromName, charSet);
            email.setSubject(subject);
            email.setMsg(msg);
            email.send();

        } catch (Exception e) {
            System.out.println("메일발송 실패 : " + e);
        }

    }

    @Override
    public void approval_email(UserVO userVO, HttpServletResponse response) throws Exception {
        response.setContentType("text/html;charset=utf-8");
        PrintWriter out = response.getWriter();
        if (userDAO.approval_email(userVO) == 0) { // 이메일 인증에 실패하였을 경우
            out.println("<script>");
            out.println("alert('잘못된 접근입니다.');");
            out.println("history.go(-1);");
            out.println("</script>");
            out.close();
        } else { // 이메일 인증을 성공하였을 경우
            out.println("<script>");
            out.println("alert('인증이 완료되었습니다. 로그인 후 이용하세요.');");
            out.println("location.href='/';");
            out.println("</script>");
            out.close();
        }
    }

    @Override
    public String find_id(HttpServletResponse response, String joinEmail) throws Exception {
        response.setContentType("text/html;charset=utf-8");
        PrintWriter out = response.getWriter();
        String findId = userDAO.find_id(joinEmail);

        if (findId == null) {
            out.println("<script>");
            out.println("alert('가입된 아이디가 없습니다.');");
            /*out.println("document.getElementById('caption').innerHTML='아이디 찾기'");*/
            out.println("history.go(-1);");
            out.println("</script>");
            out.close();
            return null;
        } else {
            return findId;
        }
    }

    @Override
    public UserVO find_pw(HttpServletResponse response, UserVO userVO) throws Exception {
        response.setContentType("text/html;charset=utf-8");
        PrintWriter out = response.getWriter();
        UserVO findPw = userDAO.find_pw(userVO);
        if (findPw == null) {
            out.println("<script>");
            out.println("alert('일치하는 정보가 존재하지 않습니다.');");
            out.println("history.go(-1);");
            out.println("</script>");
            out.close();
            return null;
        } else {
            return userDAO.find_pw(userVO);
        }
    }

    @Override
    public void update_pw(HttpServletResponse response, UserVO userVO) throws Exception {
        userDAO.update_pw(userVO);
    }

}
