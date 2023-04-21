package com.multi.mvc902;

import java.util.Date;

import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.SendTo;
import org.springframework.stereotype.Controller;

@Controller
public class WebSocketController {
	
	@MessageMapping("/chat2") // 채팅 내용 받을 때 사용하는 주소
	@SendTo("/topic/messages2") // 가입한 주소 브라우저에 return message를 json으로 변환해서 보내줌.
	public OutputMessage2 send2(Message message) { //from: guest, text: 1
		System.out.println("받은 데이터>>" + message);
		OutputMessage2 out = new OutputMessage2();
		String menu = "";
        switch (message.getText()) {
        case "1":
            menu = "당신은 MZ세대 입니까 ?>> 3) 네      4) 아니요";
            break;
        case "2":
            menu = "여행은 다음기회에 ...";
            break;
        case "3":
            menu = "어떤 여행을 선호하시나요? >> 5) 뚜벅이      6) 자동차";
            break;
        case "4":
            menu = "어떤 여행을 선호하시나요? >> 5) 뚜벅이      6) 자동차로 드라이브";
            break;
        case "5":
            menu = "산/바다 중 선호하는 것을 골라주세요! >> 7) 산      8) 바다";
            break;
        case "6":
            menu = "산/바다 중 선호하는 것을 골라주세요! >> 7) 산      8) 바다";
            break; 
        case "7":
            menu = "당신은 힐링이 필요하시군요! 기장 아홉산숲 어떠신가요?";
            break;
        case "8":
            menu = "드라이브 코스를 추천해드릴게요! 해운대 달맞이길 어떠신가요?";
            break; 
        default:
            menu = "챗 봇>>선택한 번호는 없는 메뉴입니다. 다시 입력해주세요.";
            break;
        }
        
        out.setMenu(menu);
        return out;
	}
	
	@MessageMapping("/chat") // 채팅 내용 받을 때 사용하는 주소
	@SendTo("/topic/messages") // 가입한 주소 브라우저에 return message를 json으로 변환해서 보내줌.
	public OutputMessage send(Message message) {
		System.out.println("받은 데이터>>" + message);
		OutputMessage out = new OutputMessage();
		out.setFrom(message.getFrom());
		out.setText(message.getText());
		Date date = new Date();
		out.setTime(date.getHours() + ":" + date.getMinutes());
		return out;
	}
}
