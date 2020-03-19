<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f" %>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>CITIES SPACE</title>
<meta name="description" content="">
<meta name="author" content="">

<!-- Favicons
    ================================================== -->
 
<!-- <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>    -->

<link rel="shortcut icon" href="<%=request.getContextPath()%>/resources/img/favicon.ico" type="image/x-icon">
<link rel="apple-touch-icon"  href="<%=request.getContextPath()%>/resources/img/apple-touch-icon.png">
<link rel="apple-touch-icon" sizes="72x72" href="<%=request.getContextPath()%>/resources/img/apple-touch-icon-72x72.png">
<link rel="apple-touch-icon" sizes="114x114" href="<%=request.getContextPath()%>/resources/img/apple-touch-icon-114x114.png">

<!-- Bootstrap -->
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/bootstrap.css">

<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/bootstrap-theme.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/bootstrap-theme.min.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/fonts/font-awesome/css/font-awesome.css">
<script src="<%=request.getContextPath()%>/resources/js/bootstrap.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/bootstrap.min.js"></script>
<!-- Stylesheet

    ================================================== -->
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/style.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/nivo-lightbox/nivo-lightbox.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/nivo-lightbox/default.css">
<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet">



<!-- Style  -->

<style>
    /* Remove the navbar's default margin-bottom and rounded borders */ 
    .navbar {
      margin-bottom: 0;
      border-radius: 0;
    }
    
    /* Set height of the grid so .sidenav can be 100% (adjust as needed) */
    .row.content {height: 450px}
    
    /* Set gray background color and 100% height */
    .sidenav {
      padding-top: 20px;
      background-color: #f1f1f1;
      height: 100%;
    }
    
    /* Set black background color, white text and some padding */
    footer {
      background-color: #555;
      color: white;
      padding: 15px;
    }
    
    /* On small screens, set height to 'auto' for sidenav and grid */
    @media screen and (max-width: 767px) {
      .sidenav {
        height: auto;
        padding: 15px;
      }
      .row.content {height:auto;} 
    }
  </style>

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body id="page-top" data-spy="scroll" data-target=".navbar-fixed-top">
  
  <nav id="menu" class="navbar navbar-default navbar-fixed-top">
  <div class="container"> 
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
      <a class="navbar-brand page-scroll" href="#page-top">CITIES SPACE</a>
      <!--<div class="phone"><span>Call Today</span>320-123-4321</div>-->
    </div>
    
    <!-- Collect the nav links, forms, and other content for toggling -->
    <f:form modelAttribute="logins" action="logins" method="post">
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav navbar-right">
        
          <li>
           <a>
            ${chamb.locataire.nomLocataire}
           </a>
          </li>
          <li>
            <a href="#" class="dropdown-toggle" >Deconnection</a>
          </li>
        
      </ul>
    </div>
  </f:form>
    
    <!-- /.navbar-collapse --> 
  </div>
</nav>  
          <c:if test="${indix=='accueil'}"> 
<div id="portfolio">
  <div class="container">
    <div class="section-title">
      <h2>Accueil</h2>
    </div>
    
    <div class="container contact-form">
        <center> <h2 class="text-danger">Bienvenue monsieur ${locataire.nomLocataire } </h2></center> 
          
         
       <div class="col-md-4">
        <div class="service-desc">
          <h3>Information du proprietaire de la cité</h3>
          <h4>Mm/Mr :${proprio.nomProprietaire } ${proprio.prenomProprietaire } </h4>
          <p>Adresse mail :${proprio.adresseEmail }
             <br><br>
             Numero de CNI :${proprio.numeroCni }
          </p>
        </div>
      </div>
      
      <div class="col-md-4">
        <div class="service-desc">
          <h3>Information de sa cité</h3>
          <h3>${cite.nomCite } </h3>
          <p>
             
          </p>
        </div>
      </div>
      
      <div class="col-md-4">
        <div class="service-desc">
          <h3>Information de la chambre</h3>
          <h4>Nom chambre :${chamb.nomchambre } </h4>
          <p>Prix de la chambre :${chamb.prix} Fcfa
             <br><br>
            <h4 class="text-danger"> Somme totale à verser :${chamb.prix*10 } Fcfa</h4>
          </p>
        </div>
      </div>
          
       </div>
  </div>
</div>
</c:if> 
    
    <div class="col-sm-8 text-left"> 
      <section class="col-sm-10">
           <div class="row">
               
           </div>
          </section>
    </div>

<footer class="container-fluid text-center">
  <p>Footer Text</p>
</footer>

</body>
</html>