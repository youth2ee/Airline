package com.airline.a1;

import static org.junit.jupiter.api.Assertions.assertNotNull;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.List;
import java.util.Random;

import javax.sql.DataSource;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.junit.jupiter.api.Test;
import org.snu.ids.ha.index.Keyword;
import org.snu.ids.ha.index.KeywordExtractor;
import org.snu.ids.ha.index.KeywordList;
import org.snu.ids.ha.ma.MExpression;
import org.snu.ids.ha.ma.MorphemeAnalyzer;
import org.snu.ids.ha.ma.Sentence;
import org.snu.ids.ha.util.Timer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;



@SpringBootTest
class SearchTests {

	//@Test
	public void maTest(){
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
	
	
	@Test
	public void mTest(){
        // string to extract keywords
        String strToExtrtKwrd = "이것도분석하는게가능한부분인가요오지고지리고돌리고인정?어인정";
        // init KeywordExtractor
        KeywordExtractor ke = new KeywordExtractor();
        // extract keywords
        KeywordList kl = ke.extractKeyword(strToExtrtKwrd, true);
        // print result
        for( int i = 0; i < kl.size(); i++ ) {
            Keyword kwrd = kl.get(i);
            System.out.println(kwrd.getString() + "\t" + kwrd.getCnt());
        }
		
	}
	
	
}
