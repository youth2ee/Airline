package com.airline.a1.send;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;

import org.apache.http.HttpHost;
import org.apache.http.HttpResponse;
import org.apache.http.auth.AuthScope;
import org.apache.http.auth.UsernamePasswordCredentials;
import org.apache.http.client.AuthCache;
import org.apache.http.client.CredentialsProvider;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.protocol.HttpClientContext;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.auth.BasicScheme;
import org.apache.http.impl.client.BasicAuthCache;
import org.apache.http.impl.client.BasicCredentialsProvider;
import org.apache.http.impl.client.DefaultHttpClient;
import org.springframework.stereotype.Service;

@Service
public class SmsService {
	
	public int smsSend(String receiver) throws Exception{
		// 6자리 인증 코드 생성 
		int rand = (int) (Math.random() * 899999) + 100000; 
		
		// 문자 보내기 
		String hostname = "api.bluehouselab.com"; 
		String url = "https://" + hostname + "/smscenter/v1.0/sendsms"; 
		
		CredentialsProvider credsProvider = new BasicCredentialsProvider(); 
		credsProvider.setCredentials(new AuthScope(hostname, 443, AuthScope.ANY_REALM),
				
		// 청기와랩에 등록한 Application Id 와 API key
		new UsernamePasswordCredentials("Everyaaa", "719bd3243b5611eab3ca0cc47a1fcfae"));
		
		AuthCache authCache = new BasicAuthCache(); 
		authCache.put(new HttpHost(hostname, 443, "https"), new BasicScheme()); 
		
		HttpClientContext context = HttpClientContext.create(); 
		context.setCredentialsProvider(credsProvider); 
		context.setAuthCache(authCache); 
		
		DefaultHttpClient client = new DefaultHttpClient();
		
		try { 	
				HttpPost httpPost = new HttpPost(url); 
				httpPost.setHeader("Content-type", "application/json; charset=utf-8"); 
				//문자에 대한 정보 
				String json = "{\"sender\":\"01038209098\",\"receivers\":[\"" + receiver + "\"],\"content\":\"EveryAir입니다. "
						+ "인증번호 6자리를 입력해주세요 [인증번호 : "+rand+"]\"}"; 
				StringEntity se = new StringEntity(json, "UTF-8"); 
				httpPost.setEntity(se); 
				HttpResponse httpResponse = client.execute(httpPost, context); 
				InputStream inputStream = httpResponse.getEntity().getContent(); 
				if (inputStream != null) {
					BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream)); 
					String line = ""; 
					while ((line = bufferedReader.readLine()) != null) inputStream.close();
					
					return rand;
				}else {
					return rand;
				}
		} catch (Exception e) { 
				System.err.println("Error: " + e.getLocalizedMessage()); 
		} finally { 
				client.getConnectionManager().shutdown(); 
		} 
			return rand;
		}

	}
	

