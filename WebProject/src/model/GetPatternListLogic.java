package model;

import java.util.List;

import dao.PatternDAO;

public class GetPatternListLogic {
	public List<Pattern> execute(String color) {
		PatternDAO dao=new PatternDAO();
		List<Pattern> pattern_imgList =dao.findPattern(color);
		return pattern_imgList;
	}
}
