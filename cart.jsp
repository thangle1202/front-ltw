<%-- 
    Document   : cart.jsp
    Created on : Oct 21, 2018, 1:22:26 PM
    Author     : i1vag_000
--%>

<%@page import="model.DAO"%>
<%@page import="model.Book"%>
<%@page import="model.BooksInCart"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Account"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="cart-css.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title><%=((Account)session.getAttribute("account")).getName()%>'s cart</title>
        <script type="text/javascript" src="js.js"></script>
    </head>
    <body>
        <%@ include file = "header.jsp" %>
             
        
        
        
        <div class="body">
		<div class="title-cart">
			<span class="title1">Your Cart</span>
			<span class="title2">Total Selected Books</span>
		</div>
		<div class="form-cart">
			<!--start head cart -->
			<div class="head-of-cart">
				<div class="part-of-head-image">
					<p>IMAGE</p>
				</div>
				<div class="part-of-head-name">
					<P>NAME</P>
				</div>
				<div class="part-of-head-price">
					<P>PRICE</P>
				</div>
				<div class="part-of-head-quantity">
					<P>QUANTITY</P>
				</div>
				<div class="part-of-head-total">
					<P>TOTAL</P>
				</div>
				<div class="part-of-head-remove">
					<p>REMOVE</p>
				</div>
			</div>
			<!--end of head cart -->
			<!--start a block of a book -->

                                <%
                                    int dex=0;
                                    long total=0;
                                    ArrayList<BooksInCart> cart = (ArrayList<BooksInCart>)request.getAttribute("cart");
                                    ArrayList<Book> books = (ArrayList<Book>)request.getAttribute("books");
                                    for(BooksInCart bic : cart)
                                    { 
                                %>                                
                                    
				<div class="block-book">
                                        <div class="part-of-head-image-block">
                                                <div class="image-block">                                          
                                                    <a href="bookDetailServlet?bookId=<%=books.get(dex).getId()%>">
                                                        <img src="<%=books.get(dex).getImageurl()%>" class="image-dimension">
                                                    </a>

                                                </div>
                                        </div>
                                        <div class="part-of-head-name-block">
                                                <p><%=books.get(dex).getName()%></p>
                                        </div>
                                        <div class="part-of-head-price-block">
                                                <span><%=books.get(dex).getFinalprice()%></span>
                                                <span>VND</span>
                                        </div>
                                        <div class="part-of-head-quantity-block">
                                                <input type="number" name="" class="input-quantity" min="1" value="1">
                                        </div>
                                        <div class="part-of-head-total-block">
                                            <span>
                                                <%=bic.getQuantity()*books.get(dex).getFinalprice()%>
                                            </span>
                                                <span>VND</span>
                                        </div>
                                        <div class="part-of-head-remove-block">
                                                <div class="remove-block">
                                                        <a href="">
                                                                <a class="link" href='removeFromCart?accountId=<%=bic.getAccountId()%>&bookId=<%=bic.getBookId()%>' onmouseover="this.setAttribute('style','text-decoration:underline')" onmouseout="this.setAttribute('style','text-decoration:none')">
                                                                    <img src="image/remove.png" width=25 height=25 title="Xoá khỏi giỏ" class="remove-icon">
                                                                </a>
                                                        </a>
                                                </div>
                                        </div>
                            </div>
                                    
                                    <%
                                        total+=bic.getQuantity()*books.get(dex).getFinalprice();
                                        dex=dex+1;
                                        }
                                    %>
			
			<!--end of a block -->
			
			<!--end of a block -->
		</div>

		<!--end of form cart -->
		<!--start button group -->
		<div class="button-group">

			<div class="discount">
				
			</div>

			<div class="button-feature">
				<span class="text1">
					Total Cart:
				</span>
				<span class="title2"><%=total%></span>
				<span class="title2">VND</span>

				<br>
				<br>
				
				<button class="btn-feature">
					Go to Payment
				</button>
				<button class="btn-feature-1">Continue Shopping</button>
                                <button class="btn-feature">Save Change</button>

			</div>
		</div>
		<!-- end of button group-->
		<div class="space">
			
		</div>
	</div>
        
        
        
        
        
        <div class="space">
			
        </div>
        <div class="space">
			
        </div>

	<%@ include file = "footer.jsp" %>
    </body>
</html>
