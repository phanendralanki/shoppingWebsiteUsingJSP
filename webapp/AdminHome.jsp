<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Home</title>
<style>
ul {
	list-style-type: none;
	margin: 0;
	padding: 0;
	overflow: hidden;
	background-color: #333;
}

li {
	float: left;
}

li a {
	display: block;
	color: white;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
}

li a:hover {
	background-color: #111;
}

table {
	width: 100%;
	max-width: 85vw;
	margin: 10px;
	border-collapse: collapse;
}

th, td {
	padding: 10px;
	text-align: left;
	border: 1px solid #ccc;
}
.table-heading{  
            padding-top: 15px;
            padding-bottom: 15px;
            padding-right: 88px;
            padding-left: 84px;
        }  

.table-data a {
	text-decoration: none;
}

img {
	max-width: 100%;
	height: auto;
}

/* 
	responsive code
*/
        @media only screen and (max-width: 480px) {
            .table-heading {
                font-size: 14px;
                padding-right: 20px;
                padding-left: 10px;
            }
            
            td {
                font-size: 14px;
                padding: 5px;
            }
            
            .image {
                width: 50%;
            }
            
            .table-heading:nth-child(2),
            .table-heading:nth-child(3),
            .table-heading:nth-child(4),
            .table-heading:nth-child(5) {
                display: none;
            }
            
            .table-data td:nth-child(2),
            .table-data td:nth-child(3),
            .table-data td:nth-child(4),
            .table-data td:nth-child(5) {
                display: none;
            }
            
            .table-data td:nth-child(1) {
                width: 100%;
            }
            
            .table-data td:nth-child(6),
            .table-data td:nth-child(7) {
                width: 50%;
                text-align: center;
            }
        }


</style>
</head>
<body>

	<ul>
		<li><a class="active" href="AdminHome.jsp">Home</a></li>
		<li><a href="add_products.jsp">Add products</a></li>
		<li><a href="#contact">Delete product</a></li>
		<li><a href="#about">Update Product</a></li>
	</ul>


	<table>

		<tr class="table-row">
			<th class="table-heading">Product image</th>
			<th class="table-heading">Product name</th>
			<th class="table-heading">Price</th>
			<th class="table-heading">Category</th>
			<th class="table-heading">Active</th>
			<th class="table-heading">Delete</th>
			<th class="table-heading">Update</th>
		</tr>

		<tr class="table-data">
			<td class="image"><img src="productImages/jobs.jpg" alt=""></td>
			<td>phanendralg12@gmail.com</td>
			<td>7013634111</td>
			<td></td>
			<td></td>
			<td><a href="">Delete</a></td>
			<td><a href="">Update product</a></td>
		</tr>

	</table>


</body>
</html>