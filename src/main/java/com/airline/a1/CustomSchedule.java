package com.airline.a1;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

@Component
public class CustomSchedule {
	
	@Autowired
	private SearchService searchService;

	@Scheduled(fixedRate = 30000)
	public void fixRateSchedule() throws Exception {
		
	    List<SearchVO> ar = searchService.realList();
		SearchRankingVO searchRankingVO = new SearchRankingVO();
		
			 searchRankingVO.setRank1(ar.get(0).getSvoca());
			 searchRankingVO.setRank2(ar.get(1).getSvoca());
			 searchRankingVO.setRank3(ar.get(2).getSvoca());
			 searchRankingVO.setRank4(ar.get(3).getSvoca());
			 searchRankingVO.setRank5(ar.get(4).getSvoca());
			 searchRankingVO.setRank6(ar.get(5).getSvoca());
			 searchRankingVO.setRank7(ar.get(6).getSvoca());
			 searchRankingVO.setRank8(ar.get(7).getSvoca());
			 searchRankingVO.setRank9(ar.get(8).getSvoca());
			 searchRankingVO.setRank10(ar.get(9).getSvoca());
		
		 searchService.rListInsert(searchRankingVO); 
	}
	
	
	//@Scheduled(fixedDelay = 1000, initialDelay = 1000)
	//@Scheduled(fixedDelayString = "1000")
	public void fixedDelaySchedule() throws Exception {
		//System.out.println("FixDelay"+Thread.currentThread().getName());
		//Thread.sleep(2000);
	}
	
	//@Scheduled(cron = "*/3 * * * * *")
	public void cronSchedule() throws Exception {
		//System.out.println("쉬는시간입니당^_^"+Thread.currentThread().getName());
	}
	
	
}
