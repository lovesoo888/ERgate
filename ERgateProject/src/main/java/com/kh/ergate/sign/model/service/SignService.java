package com.kh.ergate.sign.model.service;

import java.util.ArrayList;

import com.kh.ergate.sign.model.vo.SignDocument;
import com.kh.ergate.sign.model.vo.Signer;

public interface SignService {
	
	//결재대기리스트요청용
	public ArrayList<SignDocument> selectWaitingList(SignDocument sd);
	
	//결재상세 요청용
	public SignDocument signDetail(SignDocument sd);
	
	//진행결재함요청용
	public ArrayList<SignDocument> ongoingList(String month,SignDocument sd);
	
	//상신내역요청용 
	public ArrayList<SignDocument> reportList(SignDocument sd);
	
	//지출결의내역요청용
	public ArrayList<SignDocument> expenseList(SignDocument sd);
	
	//외근&휴가내역요청용 
	public ArrayList<SignDocument> hrList(SignDocument sd);
	
	//결재용
	public int updateSign(Signer si,SignDocument sd);
	
	//미결처리용
	public int noUpdateSign(Signer si,SignDocument sd);
	
	//결재라인 등록요청용 
	public int insertSigner(Signer si);
	
	//기안임시저장
	public int saveDocument(SignDocument sd);
	
	//기안등록
	public int insertDocument(SignDocument sd);

}