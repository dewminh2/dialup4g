<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="Classes.DatabaseConnection"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html lang="en">
    <head>        
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Bootstrap</title>

        <!-- Bootstrap CSS-->
        <link href="styles/bootstrap.css" rel="stylesheet">
        <link href="styles/bootstrap.min.css" rel="stylesheet">
        <link href="styles/bootstrap-theme.css" rel="stylesheet">
        <link href="styles/bootstrap-theme.min.css" rel="stylesheet">
        <link href="styles/new.css" rel="stylesheet">


        <!--aditional CSS imports-->

        <!--aditional CSS imports end-->

        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="script/jquery.min.js"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="script/bootstrap.min.js"></script>  
        <!--script src="script/jquery.js"></script--> 
        <!--aditional JS imports-->

        <!--aditional JS imports end-->

    
	<!-- Start WOWSlider.com HEAD section --> <!-- add to the <head> of your page -->
	<link rel="stylesheet" type="text/css" href="engine0/style.css" />
	<!--script type="text/javascript" src="engine0/jquery.js"></script-->
	<!-- End WOWSlider.com HEAD section --></head>
    <body class="container-fluid" style="padding: 5px;">
        <nav class="navbar navbar-default">
            <div>
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="indexlogin.jsp" style="color: #0099ff;">DialUp4G</a>
                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">

                    </ul>
                    <form class="navbar-form navbar-left" role="search" style="margin-left: 0px; padding-left: 560px;">
                        <div class="form-group">
                            <input type="text" class="form-control" placeholder="Search">
                        </div>
                        <button type="submit" class="btn btn-default "><span class="glyphicon glyphicon-search"></button>
                    </form>
                    <a href="#" class="btn btn-info"style="padding-top: 6px;padding-bottom: 10.000;margin-top: 5px;"><span class="glyphicon glyphicon-shopping-cart"></span> Shoping Cart</a>
                    <a href="use-wishlist.jsp" class="btn btn-info"Style="padding-top: 6px;padding-bottom: 10.000;margin-top: 5px;"><span class="glyphicon glyphicon-heart"></span>wish List</a>

                    <ul class="nav navbar-nav navbar-right">

                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">My Account <span class="caret"></span></a>
                            <ul class="dropdown-menu" role="menu">
                                <li><a href="#">Registration</a></li>
                                <li class="divider"></li>
                                <li><a href="#">Login</a></li>
                                
                                
                            </ul>
                        </li>
                    </ul>
                </div> </div></nav> 
    <body>
    <body class="container" style="padding: 5px;">


        <!-- left menu1 -->
        <div class="col-lg-2"style="width: 350px;">
            <ul class="nav nav-pills nav-stacked"style="width: 300px;">
                <li class="active"><a <i class="fa fa-home fa-fw"></i>Category</a></li>
                <li><a href="http://www.jquery2dotnet.com"><i class="fa fa-list-alt fa-fw"></i>APPLE</a></li>
                <li><a href="http://www.jquery2dotnet.com"><i class="fa fa-list-alt fa-fw"></i>HTC</a></li>
                <li><a href="http://www.jquery2dotnet.com"><i class="fa fa-list-alt fa-fw"></i>MICROSOFT</a></li>
                <li><a href="http://www.jquery2dotnet.com"><i class="fa fa-list-alt fa-fw"></i>NOKIA</a></li>
                <li><a href="http://www.jquery2dotnet.com"><i class="fa fa-list-alt fa-fw"></i>SAMSUNG</a></li>
                <li><a href="http://www.jquery2dotnet.com"><i class="fa fa-list-alt fa-fw"></i>SONY</a></li>
                <!-- left menu2 -->                 

                <ul class="nav nav-pills nav-stacked">
                    <li class="active"><a <i class="fa fa-home fa-fw"></i>Category</a></li>
                    <li><a href="http://www.jquery2dotnet.com"><i class="fa fa-list-alt fa-fw"></i>APPLE</a></li>
                    <li><a href="http://www.jquery2dotnet.com"><i class="fa fa-list-alt fa-fw"></i>HTC</a></li>
                    <li><a href="http://www.jquery2dotnet.com"><i class="fa fa-list-alt fa-fw"></i>MICROSOFT</a></li>
                    <li><a href="http://www.jquery2dotnet.com"><i class="fa fa-list-alt fa-fw"></i>NOKIA</a></li>
                    <li><a href="http://www.jquery2dotnet.com"><i class="fa fa-list-alt fa-fw"></i>SAMSUNG</a></li>
                    <li><a href="http://www.jquery2dotnet.com"><i class="fa fa-list-alt fa-fw"></i>SONY</a></li>

                    </div> 

        <%                                              String id=request.getParameter("id");
                                                Connection conn;
                                                conn = DatabaseConnection.getConnection();
                                                Statement stmt;
                                                stmt = conn.createStatement();
                                                String query = "SELECT item_image,make,model,price,qnt,network,launch,display,platform,memory,camera,item_id FROM items WHERE item_id='"+id+"'";
               
                                                ResultSet rs = stmt.executeQuery(query);
                                                while (rs.next()) {

                                            %>

                    <div class="centertext">

                        <div class="col-md-4 col-sm-12 col-xs-12 product-viewer clearfix">
                            <div id="product-image-container">


                                <img src="image/<%=rs.getString(1)%>" </a>		

                            </div>   

                        </div>

                        <div class="col-md-4 col-sm-12 col-xs-12 product">
                            <h1 class="product-name"><%=rs.getString(2)%></h1>
                            <h2 class="product-name"><%=rs.getString(3)%></h2>
                             <div class="input-group"style=>
                                                <span class="input-group-addon"style="background-color: #20ADDC; color:white ">
                                                    <b>Price</b>
                                                </span>

                                                <span class="input-group-addon"style="background-color: #20ADDC;color: white">  							
                                                    <b>LKR <%=rs.getString(4)%></b>
                                                </span>
                                                 <div class="input-group">
                                            <span class="input-group-addon">
                                                Quantity
                                            </span>
                                            <input type="number" class="form-control" value="1" required="">
                                            <span class="input-group-addon">  							
                                                Stock: <%=rs.getString(5)%>
                                            </span>
                                        </div>
                                            </div><br><br><br><br>
                            <div class="btn-group btn-group-sm" role="group">
                                            <button type="button" class="btn btn-success" aria-label="Left Align">
                                                <span class="glyphicon glyphicon-usd" aria-hidden="true"></span>
                                                Buy Now
                                            </button>
                                            <button type="button" class="btn btn-info" aria-label="Left Align">
                                                <span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span>
                                                Add To Cart
                                            </button>
                                            <button type="button" class="btn btn-warning" aria-label="Left Align">
                                                <span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>
                                                Add To watch List
                                            </button>
                            </div></div>
                                            
                        
                        
                        
                        <table cellspacing="0" class="table table-bordered table-striped" style=" width: 802px;">
                            <tbody><tr>
                                    <th scope="row" rowspan="6">General</th>
                                    <td class="ttl">Network</td>
                                    <td class="nfo"><%=rs.getString(6)%></td>
                                </tr><tr>
                                    <td class="ttl">Launch</td>
                                    <td class="nfo"><%=rs.getString(7)%></td>
                                </tr>
                                <tr>
                                    <td class="ttl">Display</td>
                                    <td class="nfo"><%=rs.getString(8)%></td>
                                </tr>
                                <tr>
                                    <td class="ttl">Platform</td>
                                    <td class="nfo"><%=rs.getString(9)%></td>
                                </tr>
                                <tr>
                                    <td class="ttl">Memory</td>
                                    <td class="nfo"><%=rs.getString(10)%></td>
                                </tr>
                                <tr>
                                    <td class="ttl">Camera</td>
                                    <td class="nfo"><%=rs.getString(11)%></td>
                                </tr>

                            </tbody>
                        </table>
                                <%}%>
                    </div><!-- End .tab-pane -->

