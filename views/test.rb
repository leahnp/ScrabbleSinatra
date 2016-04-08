	<p>
		<%@word_list.each do |key, value|%>
					Word: <%=key%>
					Score: <%=val%>
		<% end %>
	</p>


    <%@word_list.each do |key, value|%>
  <%=key%>
  <%=value%>
  <%end%>
