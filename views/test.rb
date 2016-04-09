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
\ <%if @hash != nil%>
            HASH EQUALS<%=@hash%>
            letter has <%=@letter_word%>
          <%end%>


          <%@hash.each do |k, v|%>
                        <%=k%>
                        <%=v%>
                        <%end%>