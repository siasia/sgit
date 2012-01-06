<%@include file="/WEB-INF/sgit/taglibs.jsp" %>
<s:layout-render name="/WEB-INF/sgit/layout/home.jsp" title="Repositories">
<s:layout-component name="body">
	<ul class="unstyled" id="repositories">
		<c:forEach items="${actionBean.repos}" var="repo">
			<li>
				<s:link beanclass="sgit.action.Browse">
					${repo.name}
					<s:param name="repository" value="${repo.name}" />
				</s:link> 
				${repo.lastCommit.shortMessage} 
				<em class="time">${repo.lastCommit.commitTime}</em>
			</li>
		</c:forEach>
	</ul>
	<script type="text/javascript">
	  $(function(){
		  $('.time').each(function(i, o){			  
			  $(o).text(new Date($(o).text()*1000).toRelativeTime());
		  });
	  });
	</script>
</s:layout-component>
</s:layout-render>