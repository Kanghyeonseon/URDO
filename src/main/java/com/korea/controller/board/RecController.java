package com.korea.controller.board;

import com.korea.controller.SubController;
import com.korea.dao.BoardDAO;
import com.korea.dto.RecDTO;
import com.korea.service.BoardService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

public class RecController implements SubController
{
    BoardService service = BoardService.getInstance();

    @Override
    public void execute(HttpServletRequest req, HttpServletResponse resp)
    {
        String no = req.getParameter("no");
        String id = req.getParameter("id");

        RecDTO dto = new RecDTO();
        dto.setBoard_no(Integer.parseInt(no));
        dto.setRec_id(id);
        // 동일 게시글에 대한 이전 추천 여부 검색
        int result = service.recCheck(dto);

        if(result == 0)
        {
            // 추천하지 않았다면 추천 추가
            service.recUpdate(dto);
            try
            {
                PrintWriter out = resp.getWriter();
                out.println("<script>alert('추천완료!')</script>");
            }
            catch(Exception e)
            {
                e.printStackTrace();
            }
        }
        else
        {
            try
            {
                PrintWriter out = resp.getWriter();
                out.println("<script>alert('이미 추천한 게시글입니다.')</script>");
            }
            catch(Exception e)
            {
                e.printStackTrace();
            }
        }
    }
}
