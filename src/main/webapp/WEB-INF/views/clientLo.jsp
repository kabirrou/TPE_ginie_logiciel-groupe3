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
<!-- Navigation
    ==========================================-->
<nav id="menu" class="navbar navbar-default navbar-fixed-top">
  <div class="container"> 
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
      <a class="navbar-brand page-scroll" href="#page-top">CITIES SPACE</a>
      <!--<div class="phone"><span>Call Today</span>320-123-4321</div> -->
    </div>
    
    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">

        
  <f:form modelAttribute="logins" action="client/logins" method="post">
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav navbar-right">
        
        <li>
            <f:errors path="login" cssClass="errors" class="text-danger"></f:errors>
        </li>
        <li>
            <label class="sr-only">Login</label>
            <f:input path="login" type="text" class="form-control"  placeholder="login"/>
        </li>
        <li>
           <label class="sr-only" for="exampleInputPassword2">Password</label>
           <f:input path="password" type="password" class="form-control" placeholder="Password"/>
        </li>
        <li>
           <li>
                <button type="submit" class="btn btn-primary">Se connecter</button>
           </li>
      </ul>
    </div>
  </f:form>
        
        
    <!--   </ul> -->
    </div>
    <!-- /.navbar-collapse --> 
  </div>
</nav>
<!-- Header -->
<header id="header">
  <div class="intro">
    <div class="overlay">
      <div class="container">
        <div class="row">
          <div class="col-md-8 col-md-offset-2 intro-text">
            <h1>Bienvenue sur<br>
              CITIES SPACE</h1>
            <p>Votre plateforme de pr�sentation de cit� et mini cit�, et d'aide � l	a r�servation de chambres dans celles-ci...</p>
            <a href="#services" class="btn btn-custom btn-lg page-scroll">Parcourir</a> </div>
        </div>
      </div>
    </div>
  </div>
</header>
<!-- Get Touch Section -->
<!-- <div id="get-touch">
  <div class="container">
    <div class="row">
      <div class="col-xs-12 col-md-6 col-md-offset-1">
        <h3>Cost for your home renovation project</h3>
        <p>Get started today and complete our form to request your free estimate</p>
      </div>
      <div class="col-xs-12 col-md-4 text-center"><a href="#contact" class="btn btn-custom btn-lg page-scroll">Free Estimate</a></div>
    </div>
  </div>
</div>
 -->
<!-- About Section -->
<c:if test="${indix=='creercompte'}">
<div id="about">
  <div class="container">
    <div class="section-title">
      <h2>R�servation</h2>
    </div>
    <div class="row">
      <!--<div class="col-xs-12 col-md-2"> <img src="img/about.jpg" class="img-responsive" alt=""> </div>-->
      <div class="col-xs-12 col-md-10">
        <div class="about-text">
          <h2><center>Vous souhaitez r�server la chambre ${chambre.nomchambre } dans la cite ${chambre.cite.nomCite }...</center></h2>
          <br>
          <h3><center>Inscrivez-vous sur Cities Space via le formulaire suivant pour effectuer la r�servation</center></h3>
          <h3>${erreur}</h3>
          <f:form modelAttribute="proprietaire" action="saveclient" method="post" class="col-lg-15">
          <div class="list-style">
            <div class="col-lg-6 col-sm-6 col-xs-12">
              <ul>
                                <li> Nom :
                        <f:input path="nomProprietaire" value="${proprios.nomProprietaire }" class="form-control"  />
                        <f:errors path="nomProprietaire" cssClass="errors" class="text-danger"></f:errors>
                </li>
                <li>Prenom : 
                        <f:input path="prenomProprietaire" class="form-control" value="${proprios.prenomProprietaire }"/>
                        <f:errors path="prenomProprietaire" cssClass="errors" class="text-danger"></f:errors>
                
                </li>
                <li> Sexe :
                        <f:select path="sexeProprietaire" class="form-control">
                               <f:option value="homme">Homme</f:option>
                               <f:option value="femme">Femme</f:option>
                        </f:select>
                
                </li>
                <li>Adresse mail :
                        <f:input path="adresseEmail" class="form-control" value="${proprios.adresseEmail }"/>
                        <f:errors path="adresseEmail" cssClass="errors" class="text-danger"></f:errors>
                
                </li>
              </ul>
            </div>
            <div class="col-lg-6 col-sm-6 col-xs-12">
              <ul>
                <li>Numero de la Carte National d'Identit� : 
                        <f:input path="numeroCni" class="form-control"/>
                        <f:errors path="numeroCni" cssClass="errors" class="text-danger"></f:errors>
                
                </li>
                <li>Situation matrimoniale :
                        <f:select path="statuSocial" class="form-control">
                           <f:option value="Celibataire">C�libataire</f:option>
                           <f:option value="marie">Mari�(e)</f:option>
                        </f:select>
                
                </li>
                <li>Login : 
                        <f:input path="login" class="form-control"/>
                        <f:errors path="login" cssClass="errors" class="text-danger"></f:errors>
                
                </li>
                <li>Mot de passe : 
                        <f:input path="password" class="form-control" type="password"/>
                        <f:errors path="password" cssClass="errors" class="text-danger"></f:errors>
                
                </li>
              </ul>
            </div>
            <div class="col-xs-12 col-md-12 text-right">
            
                 <input type="submit" class="btn btn-custom btn-lg page-scroll" value="Envoyer">
              
            </div>
          </div>
          
          
     </f:form>     
          
        </div>
      </div>
    </div>
  </div>
</div>
</c:if>

<!-- Services Section -->
<c:if test="${indix=='listecite'}">
<div id="services">
  <div class="container">
    <div class="section-title">
      <h2>Nos diff�rentes cit�s</h2>
    </div>
    <div class="row">
           
           
     <c:forEach items="${listecite}" var="cite" >  
      <div class="col-md-4">
        <div class="service-media"> <img alt="La photographie de ${cite.nomCite} n'est pas disponible" src="<%=request.getContextPath()%>/photoci?idCite=${cite.idCite }" class="img-thumbnail" width="50px"> </div>
        <div class="service-desc">
          <h3><center>${cite.nomCite}</center></h3>
          <p align="justify">
          	${cite.descriptionCite}
          </p>
          <center><a href="client/visitechambre?idcite=${cite.idCite}#testimonials" class="btn btn-custom btn-lg page-scroll">Voir...</a></center>
        </div>
      </div>
     </c:forEach>
      
    </div>
  </div>
</div>
</c:if>
<!-- Gallery Section -->


<!-- Testimonials Section -->
<c:if test="${indix=='listechambre'}">
<div id="testimonials">
  <div class="container">
    <div class="section-title">
       <h2>Les chambres de la cit� ${cite.nomCite}</h2>
       <h4>Propri�taire: ${cite.proprietaire.nomProprietaire}
       ${cite.proprietaire.prenomProprietaire}</h4>
    </div>
    <div class="row">
     <c:forEach items="${listechambre}" var="ch">
      <div class="col-md-4">
        <div class="testimonial">
          <!--<div class="testimonial-image"> <img src="img/testimonials/01.jpg" alt=""> </div>-->
          <div class="testimonial-content">
            <div class="testimonial-meta"> <h4>Chambre ${ch.nomchambre}</h4> </div>
            <table>
                      <tr>
                         <td>
                             Prix de la chambre :${ch.prix} FCFA
                         </td>
                      </tr>
                      <tr>
                         <td>
                           Etat de la chambre :
                            ${ch.categorie.description}
                            ${ch.categorie.typeCategorie}
                         </td>
                         
                      </tr>
                      <tr>
                       <td>
                         <a href="reservechambre?idchambre=${ch.idChambre}#about" class="btn btn-primary btn-lg  btn-lg page-scroll">Reserve la chambre</a>
                       </td>
                      </tr>
                   </table>
          </div>
        </div>
      </div>
      </c:forEach>
    </div>
  </div>
</div>
</c:if>
<!-- Contact Section -->
<!-- <div id="contact">
  <div class="container">
    <div class="col-md-8">
      <div class="row">
        <div class="section-title">
          <h2>Get In Touch</h2>
          <p>Please fill out the form below to send us an email and we will get back to you as soon as possible.</p>
        </div>
        <form name="sentMessage" id="contactForm" novalidate>
          <div class="row">
            <div class="col-md-6">
              <div class="form-group">
                <input type="text" id="name" class="form-control" placeholder="Name" required="required">
                <p class="help-block text-danger"></p>
              </div>
            </div>
            <div class="col-md-6">
              <div class="form-group">
                <input type="email" id="email" class="form-control" placeholder="Email" required="required">
                <p class="help-block text-danger"></p>
              </div>
            </div>
          </div>
          <div class="form-group">
            <textarea name="message" id="message" class="form-control" rows="4" placeholder="Message" required></textarea>
            <p class="help-block text-danger"></p>
          </div>
          <div id="success"></div>
          <button type="submit" class="btn btn-custom btn-lg">Send Message</button>
        </form>
      </div>
    </div>
    <div class="col-md-3 col-md-offset-1 contact-info">
      <div class="contact-item">
        <h4>Contact Info</h4>
        <p><span>Address</span>4321 California St,<br>
          San Francisco, CA 12345</p>
      </div>
      <div class="contact-item">
        <p><span>Phone</span> +1 123 456 1234</p>
      </div>
      <div class="contact-item">
        <p><span>Email</span> info@company.com</p>
      </div>
    </div>
    <div class="col-md-12">
      <div class="row">
        <div class="social">
          <ul>
            <li><a href="#"><i class="fa fa-facebook"></i></a></li>
            <li><a href="#"><i class="fa fa-twitter"></i></a></li>
            <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
            <li><a href="#"><i class="fa fa-youtube"></i></a></li>
          </ul>
        </div>
      </div>
    </div>
  </div>
</div>
 -->
<!-- Footer Section -->
<div id="footer">
  <div class="container text-center">
    <p>&copy; 2019 M<sub>1</sub>SLED</p>
  </div>
</div>
<script type="text/javascript" src="js/jquery.1.11.1.js"></script> 
<script type="text/javascript" src="js/bootstrap.js"></script> 
<script type="text/javascript" src="js/SmoothScroll.js"></script> 
<script type="text/javascript" src="js/nivo-lightbox.js"></script> 
<script type="text/javascript" src="js/jqBootstrapValidation.js"></script> 
<script type="text/javascript" src="js/contact_me.js"></script> 
<script type="text/javascript" src="js/main.js"></script>
</body>
</html>