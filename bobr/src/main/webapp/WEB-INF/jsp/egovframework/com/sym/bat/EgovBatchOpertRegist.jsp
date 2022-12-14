<%--
  Class Name : EgovBatchOpertRegist.jsp
  Description : 배치작업등록 페이지
  Modification Information
 
      수정일         수정자                   수정내용
    -------    --------    ---------------------------
     2010.08.19    김진만          최초 생성
 
    author   : 공통서비스 개발팀 김진만
   
--%>
<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="validator" uri="http://www.springmodules.org/tags/commons-validator" %>
<c:set var="imgUrl" value="/images/egovframework/com/sym/bat/"/>
<c:set var="cssUrl" value="/css/egovframework/com/sym/bat/"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
<head>
<title>배치작업등록</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" >
<link type="text/css" rel="stylesheet" href="${cssUrl}com.css">
<link type="text/css" rel="stylesheet" href="${cssUrl}button.css">
<script type="text/javascript" src="<c:url value="/validator.do"/>"></script>
<script type="text/javascript" src="<c:url value='/js/egovframework/com/sym/cal/EgovCalPopup.js' />"></script>
<validator:javascript formName="batchOpert" staticJavascript="false" xhtml="true" cdata="false"/>
<script type="text/javaScript" language="javascript">


/* ********************************************************
 * 목록 으로 가기
 ******************************************************** */
function fn_egov_get_list(){
    var varForm = document.getElementById("batchOpert");
    varForm.action = "/com/sym/bat/getBatchOpertList.do";
    varForm.submit()    
}
/* ********************************************************
 * 저장처리화면
 ******************************************************** */
function fn_egov_save(){
    var varForm = document.getElementById("batchOpert");
    varForm.action =  "/com/sym/bat/addBatchOpert.do";
    if(confirm("<spring:message code='common.save.msg' />")){

        if(!validateBatchOpert(varForm)){             
            return;
        }else{
            varForm.submit();
        } 
    }
}

</script>
</head>
<body>
<DIV id="content" style="width:712px">
<%-- noscript 테그 --%>
<noscript class="noScriptTitle">자바스크립트를 지원하지 않는 브라우저에서는 일부 기능을 사용하실 수 없습니다.</noscript>
<!-- 상단타이틀 -->
<form:form modelAttribute="batchOpert"  action="/com/sym/bat/addBatchOpert.do" method="post">

<!-- 검색조건 유지 -->
<input type="hidden" name="searchCondition" value="<c:out value='${searchVO.searchCondition}'/>"/>
<input type="hidden" name="searchKeyword" value="<c:out value='${searchVO.searchKeyword}'/>"/>
<input type="hidden" name="pageIndex" value="<c:out value='${searchVO.pageIndex}' default="1"/>"/>

<!-- 상단 타이틀  영역 -->
<table width="100%" cellpadding="8" class="table-search" border="0" summary="상단 타이틀을 제공한다.">
 <tr>
  <td width="100%"class="title_left">
   <h1><img src="${imgUrl}icon/tit_icon.gif" width="16" height="16" hspace="3" style="vertical-align: middle" alt="">&nbsp;배치작업 등록</h1></td>
 </tr>
</table>
<!--  줄간격조정  -->
<table width="100%" cellspacing="0" cellpadding="0" border="0" summary="화면 줄간격을 조정한다.">
<tr>
    <td height="3px"></td>
</tr>
</table>
<!--  등록  폼 영역  -->
<table width="100%" border="0" cellpadding="0" cellspacing="1" class="table-register" summary="배치작업등록을 위한 테이블.">
  <caption>배치작업 등록</caption>  
  <!-- 
  <tr> 
    <th width="20%" height="23" class="required_text" scope="row" nowrap ><label for="batchOpertId">배치작업ID</label><img src="${imgUrl}icon/required.gif" alt="필수입력" title="필수입력" width="15" height="15"></th>
    <td width="80%" nowrap>
        <form:input path="batchOpertId" size="20" maxlength="20" disabled="true" cssClass="readOnlyClass"/>
        <form:errors path="batchOpertId" cssClass="error" />
    </td>
  </tr>
   -->
  <tr> 
    <th width="20%" height="23" class="required_text" scope="row" nowrap ><label for="batchOpertNm">배치작업명</label><img src="${imgUrl}icon/required.gif" alt="필수입력" title="필수입력" width="15" height="15"></th>
    <td>
        <form:input path="batchOpertNm" size="60" maxlength="60"/>
        <form:errors path="batchOpertNm" cssClass="error" />  
    </td>
  </tr> 
  
  <tr> 
    <th width="20%" height="23" class="required_text" scope="row" nowrap ><label for="batchProgrm">배치프로그램</label><img src="${imgUrl}icon/required.gif" alt="필수입력" title="필수입력" width="15" height="15"></th>
    <td>
        <form:input path="batchProgrm" size="60" maxlength="255"/>
        <form:errors path="batchProgrm" cssClass="error" />  
    </td>
  </tr> 
  
  <tr> 
    <th width="20%" height="23" class="required_text" scope="row" nowrap ><label for="paramtr">파라미터</label>&nbsp;&nbsp;&nbsp;</th>
    <td>
      <form:input path="paramtr" size="60" maxlength="250"/>
      <form:errors path="paramtr" cssClass="error" />
    </td>
  </tr> 
  
  
    
</table>
<!-- 줄간격조정  -->
<table width="100%" cellspacing="0" cellpadding="0" border="0" summary="화면 줄간격을 조정한다.">
<tr>
    <td height="10"></td>
</tr>
</table>
<center>
<!-- 목록/저장버튼  -->
<table border="0" cellspacing="0" cellpadding="0" align="center" summary="목록/저장 버튼을 제공한다.">
<tr> 
    <td><span class="button"><input type="submit" value="<spring:message code="button.save" />" onclick="fn_egov_save(); return false;"></span></td>
    <td>&nbsp;&nbsp;</td>
    <td>
        <span class="button">
        <a href="<c:url value='/com/sym/bat/getBatchOpertList.do'>
                 </c:url>"
           onclick="fn_egov_get_list(); return false;"><spring:message code="button.list" /></a>
        </span> 
    </td>
</tr>
</table>
</center>
</form:form>
</DIV>

</body>
</html>