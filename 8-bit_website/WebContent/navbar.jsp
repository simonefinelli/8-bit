<%@page import="model.Carrello"%>
<%@page import="model.ClienteBean"%>

<nav class="navbar navbar-default navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="home2.jsp"><img id="immagine_8bit" src="./Images/8-bit.png" width="200" height="70" /></a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right" style="font-size:1.1em">
        <li><a href="blog.jsp">NEWS</a></li>
        <li><a href="store.jsp">STORE</a></li>

        
      
        <% ClienteBean c = (ClienteBean)session.getAttribute("currentSessionUser");
        if(c != null){
        %>
        	
        	<li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"><%=c.getEmail()%><span class="caret"></span></a>
		        <ul class="dropdown-menu">
		        <%if(c.getNickname().equals("admin")) {%>
		          <li><a href="logIn_SignIn.jsp"><span class="glyphicon glyphicon-user"></span> Area Admin</a></li>
		          <%}else{ %>
		          <li><a href="logIn_SignIn.jsp"><span class="glyphicon glyphicon-user"></span> Area Utente</a></li>
		          <%} %>
        			<li><a href="logout"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
		        </ul>
		      </li>

        <%}else{ %>
        
        	<li><a href="logIn_SignIn.jsp" title="logIn/SignIn"><span class="glyphicon glyphicon-user"></span></a></li>
        <%} %>
        
					        <%if(session.getAttribute("Cart")!=null) {%>
					        	
					        	<%if(c!=null && c.getNickname().equals("admin")) {%>
					        		
					        	<%} else { %>
					        		<li><a href="carrello.jsp"><span id="pre_badge" class="glyphicon glyphicon-shopping-cart"><span id="id_badge" class="badge"><%= ((Carrello)session.getAttribute("Cart")).getListaCart().size() %></span></span></a></li>
					        	<%} %>
					        	
					        <%}else { %>
					        
					        	
					        	<%if(c!=null && c.getNickname().equals("admin")) {%>
					        		
					        	<%} else { %>
					        		<li><a href="carrello.jsp"><span id="pre_badge" class="glyphicon glyphicon-shopping-cart"><span id="id_badge" class="badge"><%= 0 %></span></span></a></li>
					        	<%} %>
					        <%} %>
					        
					        
					        
        <li>	<form class="navbar-form navbar-left" action="Cerca" method="get">
			      <div class="input-group" id="id_inputGroup">
			        <input type="text" id ="id_searchText" name="name_searchText" class="form-control" placeholder="Search">
			        <div class="input-group-btn" >
			          <button class="btn btn-default" id="id_findButton" type="submit">
			            <i class="glyphicon glyphicon-search"></i>
			          </button>
			        </div>
			      </div>
			    </form>
		</li>
      </ul>
    </div>
  </div>
</nav>

