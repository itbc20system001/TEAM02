package model;

import java.util.List;

import dao.PatternDAO;

public class GetPatternListLogic {
	public List<Pattern> execute(String color) {
		PatternDAO dao=new PatternDAO();
		List<Pattern> pattern_imgList =dao.findPattern(color);
		return pattern_imgList;
	}

	public Pattern getPattern(int pattern_cd) {
		PatternDAO dao=new PatternDAO();
		Pattern p=dao.findPettern_Bycd(pattern_cd);
		return p;
	}
}
