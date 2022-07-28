package com.korea.dao;

import java.util.ArrayList;
import java.util.List;

import com.korea.dto.UrpoDTO;

public class UrpoDAO extends DAO{
	private static UrpoDAO instance;
	public static UrpoDAO getInstance() {
		if(instance == null) {
			instance = new UrpoDAO();
		}
		return instance;
	}
    public boolean insert(UrpoDTO dto) {
        try {
            pstmt = conn.prepareStatement("insert into pointshop_tbl values(?,?,'설명은생략한다',?,'gifImage',?,?)");
            pstmt.setString(1, dto.getProducer());
            pstmt.setString(2, dto.getTitle());
            pstmt.setInt(3, dto.getPrice());
            pstmt.setString(4,dto.getStaticImage());
            pstmt.setString(5, dto.getCategory());
            int result = pstmt.executeUpdate();
            if(result > 0) {
                return true;
            }
        } catch(Exception e) {
            e.printStackTrace();
        }
        finally {
            try { pstmt.close(); } catch(Exception e) { e.printStackTrace(); }
        }
        
        return false;
    }
    
    // 카테고리로 아이템 불러오기
    public List<UrpoDTO> ShowItems(String category)
    {
    	ArrayList<UrpoDTO> list = new ArrayList<>();
    	UrpoDTO dto;
        try
        {
            pstmt = conn.prepareStatement("select * from urpo_tbl where category = ? order by no desc limit 30");
            pstmt.setString(1, category);
            rs = pstmt.executeQuery();

            while(rs.next())
            {
            	dto = new UrpoDTO();
                dto.setNo(rs.getInt("no"));
                dto.setTitle(rs.getString("title"));
                dto.setDiscription(rs.getString("discription"));
                dto.setPrice(rs.getInt("price"));
                dto.setStaticImage(rs.getString("staticImage"));
                dto.setGifImage(rs.getString("gifImage"));
                dto.setCategory(rs.getString("category"));
                dto.setProducer(rs.getString("producer"));
                list.add(dto);
            }
        }
        catch(Exception e) {
            e.printStackTrace();
        } finally {
            try { rs.close(); } catch(Exception e) { e.printStackTrace(); }
            try { pstmt.close(); } catch(Exception e) { e.printStackTrace(); }
        }
        return list;
    }
}
