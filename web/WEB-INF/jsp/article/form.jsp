<%@ include file="/WEB-INF/jsp/common/includes.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<jsp:include page="../common/header.jsp">
    <jsp:param name="title" value="新增"/>
</jsp:include>

<div class="container">
    <div class="clearfix">
        <div class="mv_10 f16 bold">文章编辑</div>
        <form:form modelAttribute="article" method="post">
            <c:if test="${not empty article.id}">
                <form:hidden path="id"/>
            </c:if>
            <table width="100%" border="0" cellpadding="0" cellspacing="0" class="tableForm formView">
                <tr>
                    <td width="200" valign="top" class="txtRight">标 题：</td>
                    <td valign="top" class="red st">●</td>
                    <td>
                        <form:errors path="title" cssClass="ErrMsgNew"/>
                        <form:input path="title" cssClass="txtNew w300"/>
                    </td>
                </tr>
                <tr>
                    <td valign="top" class="txtRight">内 容：</td>
                    <td valign="top" class="red st">●</td>
                    <td>
                        <form:errors path="content" cssClass="ErrMsgNew"/>
                        <form:textarea path="content" cssClass="bd_ccc" rows="10" cols="80" cssStyle="border-radius:3px"/>
                    </td>
                </tr>
                <tr>
                    <td valign="top" class="txtRight">类 型：</td>
                    <td valign="top" class="red st">●</td>
                    <td>
                        <form:errors path="categoryId" cssClass="ErrMsgNew"/>
                        <form:select path="categoryId">
                            <form:options items="${categories}" itemValue="id" itemLabel="name"/>
                        </form:select>
                    </td>
                </tr>
            </table>
        </form:form>
        <div class="right">
            <a href="#" class="btnOpH34 h34Silver opH34 in_block mr_20" onclick="window.location='/article'">取消</a>
            <a href="#" class="btnOpH34 h34Blue opH34 in_block" id="artCommit">提交</a>
        </div>
    </div>
</div>
<jsp:include page="../common/footer.jsp"/>
<script type="text/javascript">
$(function(){
    $('#artCommit').click(function() {
        $('#article').submit();
        return false
    });
})
</script>