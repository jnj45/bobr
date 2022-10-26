package egovframework.bopr.uam.service;

import java.io.Serializable;

/**
 * 가입약관VO클래스로서가입약관확인시 비지니스로직 처리용 항목을 구성한다.
 * @author 공통서비스 개발팀 조재영
 * @since 2009.04.10
 * @version 1.0
 * @see
 *
 * <pre>
 * << 개정이력(Modification Information) >>
 *   
 *   수정일      수정자           수정내용
 *  -------    --------    ---------------------------
 *   2009.04.10  조재영          최초 생성
 *
 * </pre>
 */
public class StplatVO implements Serializable {

	private static final long serialVersionUID = 1L;

	/** 약관아이디*/
    private String useStplatId;
	
    /** 사용약관안내*/
    private String useStplatCn;
    
    /** 정보동의안내*/
    private String infoProvdAgeCn;
    
    /** 최초등록자ID*/
    private String frstRegisterId;
    
    /** 최초 등록일시*/
    private String frstRegistPnttm;
    
    /** 최종수정자ID*/
    private String lastUpdusrId;
    
    /** 최종 수정일시*/
    private String lastUpdtPnttm;

    
    /**
	 * frstRegisterId attribute 값을 리턴
	 * @return String
	 */
	public String getFrstRegisterId() {
		return frstRegisterId;
	}

	/**
	 * frstRegisterId attribute 값을 설정
	 * @param frstRegisterId String
	 */
	public void setFrstRegisterId(String frstRegisterId) {
		this.frstRegisterId = frstRegisterId;
	}

	/**
	 * frstRegistPnttm attribute 값을 리턴
	 * @return String
	 */
	public String getFrstRegistPnttm() {
		return frstRegistPnttm;
	}

	/**
	 * frstRegistPnttm attribute 값을 설정
	 * @param frstRegistPnttm String
	 */
	public void setFrstRegistPnttm(String frstRegistPnttm) {
		this.frstRegistPnttm = frstRegistPnttm;
	}

	/**
	 * lastUpdusrId attribute 값을 리턴
	 * @return String
	 */
	public String getLastUpdusrId() {
		return lastUpdusrId;
	}

	/**
	 * lastUpdusrId attribute 값을 설정
	 * @param lastUpdusrId String
	 */
	public void setLastUpdusrId(String lastUpdusrId) {
		this.lastUpdusrId = lastUpdusrId;
	}

	/**
	 * lastUpdtPnttm attribute 값을 리턴
	 * @return String
	 */
	public String getLastUpdtPnttm() {
		return lastUpdtPnttm;
	}

	/**
	 * lastUpdtPnttm attribute 값을 설정
	 * @param lastUpdtPnttm String
	 */
	public void setLastUpdtPnttm(String lastUpdtPnttm) {
		this.lastUpdtPnttm = lastUpdtPnttm;
	}

	/**
	 * useStplatId attribute 값을  리턴한다.
	 * @return String
	 */
	public String getUseStplatId() {
		return useStplatId;
	}

	/**
	 * useStplatId attribute 값을 설정한다.
	 * @param useStplatId String
	 */
	public void setUseStplatId(String useStplatId) {
		this.useStplatId = useStplatId;
	}

	/**
	 * useStplatCn attribute 값을  리턴한다.
	 * @return String
	 */
	public String getUseStplatCn() {
		return useStplatCn;
	}

	/**
	 * useStplatCn attribute 값을 설정한다.
	 * @param useStplatCn String
	 */
	public void setUseStplatCn(String useStplatCn) {
		this.useStplatCn = useStplatCn;
	}

	/**
	 * infoProvdAgeCn attribute 값을  리턴한다.
	 * @return String
	 */
	public String getInfoProvdAgeCn() {
		return infoProvdAgeCn;
	}

	/**
	 * infoProvdAgeCn attribute 값을 설정한다.
	 * @param infoProvdAgeCn String
	 */
	public void setInfoProvdAgeCn(String infoProvdAgeCn) {
		this.infoProvdAgeCn = infoProvdAgeCn;
	}

}
