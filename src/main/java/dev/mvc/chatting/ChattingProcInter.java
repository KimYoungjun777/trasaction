package dev.mvc.chatting;

import java.util.ArrayList;
import java.util.HashMap;

public interface ChattingProcInter {
  
  // 메시지 보내기
  public int create(ChattingVO chattingVO);

  public ArrayList<ChattingVO> list_all();
 
  public ArrayList<ChattingVO> list_by_visitor(ChattingVO chattingVO);
 
  public ChattingVO read(int chattingno);

  public int rname_edit(HashMap<String, Object> map);
}
