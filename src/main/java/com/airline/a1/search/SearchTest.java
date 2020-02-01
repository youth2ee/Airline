package com.airline.a1.search;



import java.util.List;

import org.snu.ids.ha.ma.MExpression;
import org.snu.ids.ha.ma.MorphemeAnalyzer;
import org.snu.ids.ha.ma.Sentence;
import org.snu.ids.ha.util.Timer;

public class SearchTest {


	
	
	public static void maTest()
    {
          String string = "아버지가방에들어가셨다.";
          try {
                MorphemeAnalyzer ma = new MorphemeAnalyzer();
                ma.createLogger(null);
                Timer timer = new Timer();
                timer.start();
                List<MExpression> ret = ma.analyze(string);
                timer.stop();
                timer.printMsg("Time");
                ret = ma.postProcess(ret);
                ret = ma.leaveJustBest(ret);
                List<Sentence> stl = ma.divideToSentences(ret);
                for( int i = 0; i < stl.size(); i++ ) {
                      Sentence st = stl.get(i);
                      System.out.println("=============================================  " + st.getSentence());
                      for( int j = 0; j < st.size(); j++ ) {
                            System.out.println(st.get(j));
                      }
                }
                ma.closeLogger();
          } catch (Exception e) {
                e.printStackTrace();
          }
    }

	
	
	
}
