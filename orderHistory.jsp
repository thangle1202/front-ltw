<%-- 
    Document   : cart.jsp
    Created on : Oct 21, 2018, 1:22:26 PM
    Author     : i1vag_000
--%>

<%@page import="model.Order"%>
<%@page import="model.DAO"%>
<%@page import="model.Book"%>
<%@page import="model.BooksInCart"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Account"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="orderhistory-css.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title><%=((Account)session.getAttribute("account")).getName()%>'s cart</title>
        <script type="text/javascript" src="js.js"></script>
    </head>
    <body>
        <%@ include file = "header.jsp" %>
             
        
        
        <div class="title-cart">
			<span class="title1">LIST</span>
			<span class="title2">ORDER</span>
		</div>
		<div class="form-cart">
			<!--start head cart -->
			<div class="head-of-cart">
				<div class="part-of-head-image">
					<p>CODE</p>
				</div>
				<div class="part-of-head-name">
					<P>RECEIVER</P>
				</div>
				<div class="part-of-head-price">
					<P>DATE</P>
				</div>
				<div class="part-of-head-quantity">
					<P>TOTAL ITEMS</P>
				</div>
				<div class="part-of-head-total">
					<P>TOTAL BILL</P>
				</div>
				<div class="part-of-head-status">
					<P>STATUS</P>
				</div>
				
			</div>
			<!--end of head cart -->
			<!--start a block of a book -->

			
                        
                        
                        
                        
                        
                        <%
                                    ArrayList<Order> orderList = (ArrayList<Order>)request.getAttribute("orderList");
                                    for(Order o : orderList)
                                    { 
                                %>                                
                                    
					<div class="block-book">
				<div class="part-of-head-image-block">
					<div class="image-block">
						<%=o.getId()%>
					</div>
				</div>
				<div class="part-of-head-name-block">
					<span><%=o.getClientName()%></span>
				</div>
				<div class="part-of-head-price-block">
					<span><%=o.getCreatedDate()%></span>
				</div>
				<div class="part-of-head-quantity-block">
					<span>1</span>
				</div>
				<div class="part-of-head-total-block">
					<span><%=o.getTotalPrice()%></span>
					<span>VND</span>
				</div>
				<div class="part-of-head-status-block">
					<div class="iconstatus">
						<img src="image/send.png" class="imgstatus">
					</div>
					<div class="iconstatus">
						<img src="image/shipping.png" class="imgstatus">
					</div>
					<div class="iconstatus">
						<img src="image/done.png" class="imgstatus">
					</div>
					<a href="orderDetail?orderId=<%=o.getId()%>" class="btndetail">Detail</a>
				</div>
                                
                                </div>
                                    
                                    <%                                        
                                        }
                                    %>
                        
                        
                        

		</div>
		<!--end of form cart -->

		<div class="space">
			
		</div>
	</div>
       

	<%@ include file = "footer.jsp" %>
    </body>
</html>
