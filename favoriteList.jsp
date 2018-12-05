<%-- 
    Document   : cart.jsp
    Created on : Oct 21, 2018, 1:22:26 PM
    Author     : i1vag_000
--%>

<%@page import="model.BooksInFavorite"%>
<%@page import="model.DAO"%>
<%@page import="model.Book"%>
<%@page import="model.BooksInCart"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Account"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="favorite-css.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title><%=((Account)session.getAttribute("account")).getName()%>'s favorite list</title>
        <script type="text/javascript" src="js.js"></script>
    </head>
    <body>
        <%@ include file = "header.jsp" %>
   
        <div class ="body3">
	<div class ="introduce">
		<div class ="inside-introduce">
			<div class ="space1">
				
			</div>
			<div class ="title">
				<span class="title1">FAVORITE</span>
				<span class="title2">BOOKS<span>
			</div>

			<div class ="content">
				<p>Total your favorite books</p>
			</div>
		</div>
	</div>
	<!--end of intro -->


	<div class="space2">
		
	</div>
<!--end of intro -->

	<div class="side-bar">
		<div>
			<!--start of categories -->

			<div class="categories">
				<p class="text-title">PRODUCT CATEGORIES</p>
				<hr size="1" color="black">
				<!--title -->
				<!--link-cate -->

				<div class="link-block">
					<a href="" class="link-cate">
						<span>New Product</span>
					</a>
				</div>
				<div class="link-block">
					<a href="" class="link-cate">
						<span>Trending</span>
					</a>
				</div>
				<div class="link-block">
					<a href="" class="link-cate">
						<span>On Sale</span>
					</a>
				</div>
				<div class="link-block">
					<a href="" class="link-cate">
						<span>Best Seller</span>
					</a>
				</div>
				<div class="link-block">
					<a href="" class="link-cate">
						<span>Hai Huoc</span>
					</a>
				</div>
				<div class="link-block">
					<a href="" class="link-cate">
						<span>Dan Gian</span>
					</a>
				</div>
				<div class="link-block">
					<a href="" class="link-cate">
						<span>Khoa Hoc</span>
					</a>
				</div>
				<div class="link-block">
					<a href="" class="link-cate">
						<span>Trinh Tham</span>
					</a>
				</div>
				<div class="link-block">
					<a href="" class="link-cate">
						<span>All Book</span>
					</a>
				</div>
				<!--end of link-cate -->

			</div>
			<!--end of categories -->
			<div class="space3"></div>
		</div>
	</div>

	<div class="searchresult-total">
		<!--Start a book  -->
                
                
                                <%
                                    int dex=0;                                    
                                    ArrayList<BooksInFavorite> bifList = (ArrayList<BooksInFavorite>)request.getAttribute("favoriteList");
                                    ArrayList<Book> books = (ArrayList<Book>)request.getAttribute("books");
                                    for(BooksInFavorite bif : bifList)
                                    { 
                                %>                                
                                    
					<div class="block-result">
			<div class="img-book">
                            <a href="bookDetailServlet?bookId=<%=books.get(dex).getId()%>">
                                <img src="<%=books.get(dex).getImageurl()%>" class="image-book">
                            </a>

			</div>
			<div class="infor-book">
				<p>
					<span>Tên sách:</span>
					<span><%=books.get(dex).getName()%></span>
				</p>
				<p>
					<span>Tác giả:</span>
					<span><%=books.get(dex).getAuthor()%></span>
				</p>
				<p>
					<span>Thể loại:</span>
					<span><%=books.get(dex).getCategory()%></span>
				</p>
				<p>
					<span>Đơn giá:</span>
					<span><%=books.get(dex).getFinalprice()%></span>
                                        <span>VND</span>
				</p>
			</div>
			<div class="btn-feature">
				<button class="button-addcart">Remove</button>
				<button class="button-detail">Detail book</button>
			</div>
		</div>
                                    
                                    <%                                        
                                        dex=dex+1;
                                        }
                                    %>
                
                
		
		
		<!--End a book  -->
		<div class="space3">
			End of List!
		</div>
	</div>
</div>
                                    <div class="space3">
                                        
                                    </div>
        
        
	<%@ include file = "footer.jsp" %>
    </body>
</html>
