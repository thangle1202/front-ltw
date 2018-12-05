<%-- 
    Document   : bookDetail.jsp
    Created on : Oct 21, 2018, 1:14:11 PM
    Author     : i1vag_000
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="model.Account"%>
<%@page import="model.DAO"%>
<%@page import="model.Book"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%
        DAO dao = new DAO();    
        Book b = dao.getBook(Integer.parseInt(request.getParameter("bookId")));
    %>
    <head>
        <link rel="stylesheet" type="text/css" href="bookdetail-css.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title><%=b.getName()%></title>
        <script type="text/javascript" src="js.js"></script>
    </head>
    <body>
        <%@ include file = "header.jsp" %>
        
        
        
        
        <div class ="body">
	<div class="space">
		
	</div>
        <div class="detail-book">
		<div class="inside-detail-book">
			<div class="main-detail">
				<div class="info-book">
					<div class="book-img">
						<div class="img">
							<img src="<%=b.getImageurl()%>" class="img-dimension">
						</div>
					</div>

					<div class="book-feature">
						<div class="middle-feature">
							<p class="text-title"><%=b.getName()%></p>
							<br>
							<span class="text-title">Giam:</span>
							<span class="text-title"><%=b.getDiscount()%></span>
							<br>
							<br>
							<span class="old-price"><%=b.getFinalprice()+b.getDiscount()%></span><span class="old-price">VND</span>
							<span class="text-title"><%=b.getFinalprice()%></span><span>VND</span>
							<hr size="1">
							<div class="intro-1">
								<div class="inside-intro-1">
                                                                    <%=b.getDescription()%>
                                                                </div>
								
							</div>

							<div class="feature-btn">
								<div class="inside-btn">
									<button class="btn">Add to cart</button>
									<button class="btn">Back to home</button>
									
								</div>
								<div class="inside-icon">
									
                                                                    <a href="addToFavoriteServlet?bookId=<%=b.getId()%>">
                                                                        <img src="image/love.png" class="iconbody">
                                                                    </a>
								</div>
							</div>

							<div class="categories-name">
								<span>Categories:</span>
                                                                <span>
                                                                    <%=b.getCategory()%>
                                                                </span>
							</div>
						</div>
					</div>
				</div>
				<div class="detail-info">
					<div class="inside-detail-info">
						<div class="info-btn">
							<p class="btn-detail">Detail Book</p>

						</div>
						<div class="info-text">
							<span>Tác giả:</span>
							<span><%=b.getAuthor()%></span>
							<br>
							<br>
							<span>Năm Xuất Bản:</span>
							<span><%=b.getReleasedyear()%></span>
							<br>
							<br>
							<span>Nhà Xuất Bản:</span>
							<span><%=b.getPublisher()%></span>
							<br>
							<br>
							<span>Số lượng bán ra:</span>
							<span>100</span>
							<br>
							<br>


						</div>
					</div>
				</div>
			</div>
<!--categories product -->
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
		</div>
	</div>
                <div class="relate-books">
		<!--Related Book-->
	<div>
	<div class ="introduce">
		<div class ="inside-introduce">
			<div class ="space1">
				
			</div>
			<div class ="title">
				<span class="title1">RELATED</span>
				<span class="title2">BOOKS</span>
			</div>

			<div class ="content">
				<p>There are many variations of passages of Lorem Ipsum available, but the majority </p>
				<p>have suffered lebmid alteration in some ledmid form</p>
			</div>
		</div>
	</div>
	<div class ="block-new">
		<!-- -->
	<div id="temp1">
		<div class ="block">
			<div class ="image-block">
				<a href="">
					<img src="image/bookcover.jpg" class="bookcover">
				</a>
			</div>

			<div class ="bookname-block">
				<p>Mat biec</p>

			</div>

			<div class ="price-block">
				
				<span class ="current-price">50.000d</span>
				<span>-</span>
				<span class ="old-price">75.000d</span>
			</div>

			<div class ="button-block">
				<div class="iconf">
					<a href="">
						<img src="image/love.png" class="block-icon">
					</a>
				</div>

				<div class="iconf">
					<a href="">
						<img src="image/addcart.png" class="block-icon">
					</a>
				</div>

				<div class="iconf">
					<a href="">
						<img src="image/add.png" class="block-icon">
					</a>
				</div>
			</div>
		</div>
		
		<div class ="spacef">
			
		</div>
	<!-- -->
		<div class ="block">
			<div class ="image-block">
				<a href="">
					<img src="image/bookcover.jpg" class="bookcover">
				</a>
			</div>

			<div class ="bookname-block">
				<p>Mat biec</p>

			</div>

			<div class ="price-block">
				
				<span class ="current-price">50.000d</span>
				<span>-</span>
				<span class ="old-price">75.000d</span>
			</div>

			<div class ="button-block">
				<div class="iconf">
					<a href="">
						<img src="image/love.png" class="block-icon">
					</a>
				</div>

				<div class="iconf">
					<a href="">
						<img src="image/addcart.png" class="block-icon">
					</a>
				</div>

				<div class="iconf">
					<a href="">
						<img src="image/add.png" class="block-icon">
					</a>
				</div>
			</div>
		</div>
		
		<div class ="spacef">
			
		</div>
		<!-- -->
		<div class ="block">
			<div class ="image-block">
				<a href="">
					<img src="image/bookcover.jpg" class="bookcover">
				</a>
			</div>

			<div class ="bookname-block">
				<p>Mat biec</p>

			</div>

			<div class ="price-block">
				
				<span class ="current-price">50.000d</span>
				<span>-</span>
				<span class ="old-price">75.000d</span>
			</div>

			<div class ="button-block">
				<div class="iconf">
					<a href="">
						<img src="image/love.png" class="block-icon">
					</a>
				</div>

				<div class="iconf">
					<a href="">
						<img src="image/addcart.png" class="block-icon">
					</a>
				</div>

				<div class="iconf">
					<a href="">
						<img src="image/add.png" class="block-icon">
					</a>
				</div>
			</div>
		</div>
		
		<div class ="spacef">
			
		</div>

		<!-- -->
		<div class ="block">
			<div class ="image-block">
				<a href="">
					<img src="image/bookcover.jpg" class="bookcover">
				</a>
			</div>

			<div class ="bookname-block">
				<p>Mat biec</p>

			</div>

			<div class ="price-block">
				
				<span class ="current-price">50.000d</span>
				<span>-</span>
				<span class ="old-price">75.000d</span>
			</div>

			<div class ="button-block">
				<div class="iconf">
					<a href="">
						<img src="image/love.png" class="block-icon">
					</a>
				</div>

				<div class="iconf">
					<a href="">
						<img src="image/addcart.png" class="block-icon">
					</a>
				</div>

				<div class="iconf">
					<a href="">
						<img src="image/add.png" class="block-icon">
					</a>
				</div>
			</div>
		</div>
		
		<div class ="spacef">
			
		</div>
		<!-- -->
	</div>
	</div>

	<div class ="seeall">
			<a href="" class="temp2">See All</a>
	</div>
	</div>

                <div class="space"></div>
	</div>
                                                        
        </div>
        
        
        
<!--	<div id="body">
	<div id="imagedetailframe"><img src="<%=b.getImageurl()%>" id="imagedetail"></div>
        <div id="detailbook">
            
                <p class="tensach"><%=b.getName()%><a href="addToFavoriteServlet?bookId=<%=b.getId()%>"><img src="icon/heart.png" style="height:30px; width: 30px"></a></p>

		<div class="infors">
				<p id="tacgia">Tác giả: <span><%=b.getAuthor()%></span></p>	
		</div>
                <div class="infors">
			<p id="nhaxb">Thể loại: <span><%=b.getCategory()%></span></p>	
		</div>
		<div class="infors">
			<p id="nhaxb">Nhà xuất bản: <span><%=b.getPublisher()%></span></p>	
		</div>
		<div class="infors">
			<p id="namxb">Năm xuất bản: <span><%=b.getReleasedyear()%></span></p>				
		</div>
		<div class="infors">
			<p id="giadau">Giá: <span><%=b.getFinalprice()+b.getDiscount()%></span>VND</p>
		</div>
		<div class="infors">
			<p id="giahientai">Giá: <span><%=b.getFinalprice()%></span>VND</p>	
		</div>
                <div class="infors">
			<p id="nhaxb">
		<form method='POST' action='addToCartServlet?bookId=<%=b.getId()%>'>
                Số lượng : <input onkeypress="return isNumberKey(event)" min="1" id="iptQuantity" name="quantity" type="number" value="1" style="width: 30px">
                <input type="image" src="icon/cart.png">
                </div>
                </form>
                        </p>
        </div>
        <div id="desbook">
			<p class="tensach">Description</p>
			<p id="descontent"><%=b.getDescription()%></p>
	</div>
        </div>-->
        <%dao.close();%>
        
        
        
        
        
	<%@ include file = "footer.jsp" %>
    </body>
</html>
