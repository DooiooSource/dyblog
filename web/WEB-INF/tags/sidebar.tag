<%@ include file="/WEB-INF/jsp/common/includes.jsp" %>
<%@ tag pageEncoding="UTF-8" %>
<%@ tag body-content="scriptless" %>
<%@ attribute name="categories" type="java.util.List" required="true" %>
<%@ attribute name="currentCateId" required="true" %>

<div class="left">
    <div class="navLeft mv_10">
        <a href="/article" class="${empty currentCateId ? 'in_block current' : ''}">全部类别</a>
        <c:forEach var="category" items="${categories}">
            <a href="/article?cateId=${category.id}" class="${currentCateId == category.id ? 'in_block current' : ''}">${category.name}</a>
        </c:forEach>
    </div>
    <a href="/article/add" class="ml_5 btnOpH24 h24Silver in_block mr_10 mt_10" id="publish"> + 我要发表</a><a href="javascript:void(0);" class="mt_10 btnOpH24 h24Silver in_block " id="addCategory"> + 添加类别</a>
</div>