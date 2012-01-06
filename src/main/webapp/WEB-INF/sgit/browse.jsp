<%@include file="/WEB-INF/sgit/taglibs.jsp" %>
<s:layout-render name="/WEB-INF/sgit/layout/fluid.jsp" title="Browse">
<s:layout-component name="sidebar">
	<s:useActionBean beanclass="sgit.action.TreeBrowse" var="tree" event="init" />  
	<ul class="unstyled">
		<c:forEach items="${tree.entries}" var="entry">
		  <c:set target="${tree}" property="entry" value="${entry}" />
			<li>
				<s:link beanclass="sgit.action.Browse">
					<s:param name="repository">${tree.repository.name}</s:param>
					<c:if test="${tree.absolutePath != ''}">					
						<s:param name="path">${tree.absolutePath}</s:param>
					</c:if>										
					${entry.name}<c:if test="${entry.isDirectory && !entry.isParent}">/</c:if>
				</s:link>				
			</li>
		</c:forEach>
	</ul>
</s:layout-component>
<s:layout-component name="body">
		
</s:layout-component>
</s:layout-render>