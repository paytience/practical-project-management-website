﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="praktisk.WebForm1" %>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Practical Project Management</title>

    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="https://unpkg.com/bootstrap-table@1.15.5/dist/bootstrap-table.min.css">

    <!-- Custom styles for this template -->
    <link href="css/agency.min.css" rel="stylesheet">
    <link href="css/default.css" rel="stylesheet" type="text/css">

    <%-- Some cool fonts --%>
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    <link href='https://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700' rel='stylesheet' type='text/css'>

    <!-- Font-awesome Icons -->
    <script src="https://kit.fontawesome.com/ffd2f95330.js" crossorigin="anonymous"></script>

    <%--<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>--%>
    <%--<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>--%>
    <script src="js/Custom'.js" type="text/javascript"></script>

</head>

<body id="page-top" onload="init()">
    <form id="form1" runat="server">

        <!-- Navigation -->
        <nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
            <div class="container">
                <a class="navbar-brand js-scroll-trigger" href="#page-top">Back To Start</a>
                <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    <i class="fas fa-bars"></i>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav text-uppercase ml-auto">
                        <li class="nav-item">
                            <a class="nav-link js-scroll-trigger" href="#services">Take Test</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link js-scroll-trigger" href="#Summaries">Summaries</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link js-scroll-trigger" href="#portfolio">About</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link js-scroll-trigger" href="#about">Our Story</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link js-scroll-trigger" href="#team">Team</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link js-scroll-trigger" href="#contact">Contact</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

        <!-- Header -->
        <header class="masthead">
            <div class="container">
                <div class="intro-text">
                    <div class="intro-lead-in">Welcome To Our Interactive Learning Site:</div>
                    <div class="intro-heading text-uppercase">The Highway to Success</div>
                    <a class="btn btn-primary btn-xl text-uppercase js-scroll-trigger" href="#services">Take test</a>
                </div>
            </div>
        </header>

        <!-- Services -->
        <section class="page-section" id="services">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 text-center">
                        <h2 class="section-heading text-uppercase">Select Quiz</h2>
                        <!-- dropdown -->
                        <div class="dropdown">
                            <button class="btn btn-lg btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Chapter
                            </button>
                            <div runat="server" id="dropdownmenu" class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                <button runat="server" id="dropdown1" onclick="openModal(this)" class="dropdown-item" style="display: none" value="0" data-toggle="modal" data-target="#LectureModal" type="button">1</button>
                                <button runat="server" id="dropdown2" onclick="openModal(this)" class="dropdown-item" style="display: none" value="1" data-toggle="modal" data-target="#LectureModal" type="button">2</button>
                                <button runat="server" id="dropdown3" onclick="openModal(this)" class="dropdown-item" style="display: none" value="2" data-toggle="modal" data-target="#LectureModal" type="button">3</button>
                                <button runat="server" id="dropdown4" onclick="openModal(this)" class="dropdown-item" style="display: none" value="3" data-toggle="modal" data-target="#LectureModal" type="button">4</button>
                                <button runat="server" id="dropdown5" onclick="openModal(this)" class="dropdown-item" style="display: none" value="4" data-toggle="modal" data-target="#LectureModal" type="button">5</button>
                                <button runat="server" id="dropdown6" onclick="openModal(this)" class="dropdown-item" style="display: none" value="5" data-toggle="modal" data-target="#LectureModal" type="button">6</button>
                                <button runat="server" id="dropdown7" onclick="openModal(this)" class="dropdown-item" style="display: none" value="6" data-toggle="modal" data-target="#LectureModal" type="button">7</button>
                                <button runat="server" id="dropdown8" onclick="openModal(this)" class="dropdown-item" style="display: none" value="7" data-toggle="modal" data-target="#LectureModal" type="button">8</button>
                                <button runat="server" id="dropdown9" onclick="openModal(this)" class="dropdown-item" style="display: none" value="8" data-toggle="modal" data-target="#LectureModal" type="button">9</button>
                                <button runat="server" id="dropdown10" onclick="openModal(this)" class="dropdown-item" style="display: none" value="9" data-toggle="modal" data-target="#LectureModal" type="button">10</button>
                                <button runat="server" id="dropdown11" onclick="openModal(this)" class="dropdown-item" style="display: none" value="10" data-toggle="modal" data-target="#LectureModal" type="button">11</button>
                                <button runat="server" id="dropdown12" onclick="openModal(this)" class="dropdown-item" style="display: none" value="11" data-toggle="modal" data-target="#LectureModal" type="button">12</button>
                            </div>
                        </div>
                    </div>
                </div>
                </div>
        </section>

        <!-- Service Summaries-->
        <section>
            <div class="container">
                <div class="row text-center">
                    <div class="col-md-4">
                        <span class="fa-stack fa-4x">
                            <i class="fas fa-circle fa-stack-2x text-primary"></i>
                            <i class="fas fa-question-circle fa-stack-1x fa-inverse"></i>
                        </span>
                        <h4 class="service-heading">Questions</h4>
                        <p class="text-muted">The questions we made are created to repeat the information told in the lectures and in the course book.</p>
                    </div>
                    <div class="col-md-4">
                        <span class="fa-stack fa-4x">
                            <i class="fas fa-circle fa-stack-2x text-primary"></i>
                            <i class="fas fa-laptop fa-stack-1x fa-inverse"></i>
                        </span>
                        <h4 class="service-heading">Summaries</h4>
                        <p class="text-muted">The website includes short summaries from each lecture and chapter from The Road to Success.</p>
                    </div>
                    <div class="col-md-4">
                        <span class="fa-stack fa-4x">
                            <i class="fas fa-circle fa-stack-2x text-primary"></i>
                            <i class="fas fa-book fa-stack-1x fa-inverse"></i>
                        </span>
                        <h4 class="service-heading">Learning</h4>
                        <p class="text-muted">Using the questions and summaries together with the lectures and the book The Road to Success may help you learn more and retain the information better for later use.    </p>
                    </div>
                </div>
            </div>
        </section>

        <!-- Summaries Grid -->
        <section class="bg-light page-section" id="Summaries">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 text-center">
                        <h2 class="section-heading text-uppercase">Summaries</h2>
                        <h3 class="section-subheading text-muted">Click on any of the chapters below to read more about them.</h3>
                    </div>
                </div>
                <div class="row justify-content-md-center">                 
                    <div class="col-md-2 col-md-offset-1 col-sm-6 portfolio-item">
                        <a class="portfolio-link" data-toggle="modal" href="#portfolioModalChapter1">
                            <div class="portfolio-hover">
                                <div class="portfolio-hover-content">
                                    <i class="fas fa-plus fa-3x"></i>
                                </div>
                            </div>
                            <img class="img-fluid" src="../img/about/Chapter_1.png" alt="">
                        </a>
                        <div class="portfolio-caption">
                            <h4>Chapter 1</h4>
                            <p class="text-muted"><font size = "4">Introduction</font></p>
                        </div>
                    </div>
                    <div class="col-md-2 col-sm-6 portfolio-item">
                        <a class="portfolio-link" data-toggle="modal" href="#portfolioModalChapter2">
                            <div class="portfolio-hover">
                                <div class="portfolio-hover-content">
                                    <i class="fas fa-plus fa-3x"></i>
                                </div>
                            </div>
                            <img class="img-fluid" src="../img/about/Chapter_2.png" alt="">
                        </a>
                        <div class="portfolio-caption">
                            <h4>Chapter 2</h4>
                            <p class="text-muted"><font size = "4">Project characteristics</font></p>
                        </div>
                    </div>
                    <div class="col-md-2 col-sm-6 portfolio-item">
                        <a class="portfolio-link" data-toggle="modal" href="#portfolioModalChapter3">
                            <div class="portfolio-hover">
                                <div class="portfolio-hover-content">
                                    <i class="fas fa-plus fa-3x"></i>
                                </div>
                            </div>
                            <img class="img-fluid" src="img/about/Chapter_3.png" alt="">
                        </a>
                        <div class="portfolio-caption">
                            <h4>Chapter 3</h4>
                            <p class="text-muted"><font size = "4">Stakeholders</font></p>
                        </div>
                    </div>
                    <div class="col-md-2 col-sm-6 portfolio-item">
                        <a class="portfolio-link" data-toggle="modal" href="#portfolioModalChapter4">
                            <div class="portfolio-hover">
                                <div class="portfolio-hover-content">
                                    <i class="fas fa-plus fa-3x"></i>
                                </div>
                            </div>
                            <img class="img-fluid" src="img/about/Chapter_4.png" alt="">
                        </a>
                        <div class="portfolio-caption">
                            <h4>Chapter 4</h4>
                            <p class="text-muted"><font size = "4">Project life cycle</font></p>
                        </div>
                    </div>
                    <div class="col-md-2 col-sm-6 portfolio-item">
                        <a class="portfolio-link" data-toggle="modal" href="#portfolioModalChapter5">
                            <div class="portfolio-hover">
                                <div class="portfolio-hover-content">
                                    <i class="fas fa-plus fa-3x"></i>
                                </div>
                            </div>
                            <img class="img-fluid" src="img/about/Chapter_5.png" alt="">
                        </a>
                        <div class="portfolio-caption">
                            <h4>Chapter 5</h4>
                            <p class="text-muted"><font size = "4">Project initiation</font></p>
                        </div>
                    </div>
                </div>
                <div class="row justify-content-md-center">
                    <div class="col-md-2 col-sm-6 portfolio-item">
                        <a class="portfolio-link" data-toggle="modal" href="#portfolioModalChapter6">
                            <div class="portfolio-hover">
                                <div class="portfolio-hover-content">
                                    <i class="fas fa-plus fa-3x"></i>
                                </div>
                            </div>
                            <img class="img-fluid" src="img/about/Chapter_6.png" alt="">
                        </a>
                        <div class="portfolio-caption">
                            <h4>Chapter 6</h4>
                            <p class="text-muted"><font size = "4">Project success</font></p>
                        </div>
                    </div>
                    <div class="col-md-2 col-sm-6 portfolio-item">
                        <a class="portfolio-link" data-toggle="modal" href="#portfolioModalChapter7">
                            <div class="portfolio-hover">
                                <div class="portfolio-hover-content">
                                    <i class="fas fa-plus fa-3x"></i>
                                </div>
                            </div>
                            <img class="img-fluid" src="img/about/Chapter_7.png" alt="">
                        </a>
                        <div class="portfolio-caption">
                            <h4>Chapter 7</h4>
                            <p class="text-muted"><font size = "4">Success factors</font></p>
                        </div>
                    </div>
                    <div class="col-md-2 col-sm-6 portfolio-item">
                        <a class="portfolio-link" data-toggle="modal" href="#portfolioModalChapter8">
                            <div class="portfolio-hover">
                                <div class="portfolio-hover-content">
                                    <i class="fas fa-plus fa-3x"></i>
                                </div>
                            </div>
                            <img class="img-fluid" src="img/about/Chapter_8.png" alt="">
                        </a>
                        <div class="portfolio-caption">
                            <h4>Chapter 8</h4>
                            <p class="text-muted"><font size = "4">Project organization</font></p>
                        </div>
                    </div>
                    <div class="col-md-2 col-sm-6 portfolio-item">
                        <a class="portfolio-link" data-toggle="modal" href="#portfolioModalChapter9">
                            <div class="portfolio-hover">
                                <div class="portfolio-hover-content">
                                    <i class="fas fa-plus fa-3x"></i>
                                </div>
                            </div>
                            <img class="img-fluid" src="img/about/Chapter_9.png" alt="">
                        </a>
                        <div class="portfolio-caption">
                            <h4>Chapter 9</h4>
                            <p class="text-muted"><font size = "4">Project planning</font></p>
                        </div>
                    </div>
                     <div class="col-md-2 col-sm-6 portfolio-item">
                        <a class="portfolio-link" data-toggle="modal" href="#portfolioModalChapter10">
                            <div class="portfolio-hover">
                                <div class="portfolio-hover-content">
                                    <i class="fas fa-plus fa-3x"></i>
                                </div>
                            </div>
                            <img class="img-fluid" src="img/about/Chapter_10.png" alt="">
                        </a>
                        <div class="portfolio-caption">
                            <h4>Chapter 10</h4>
                            <p class="text-muted"><font size = "4">Project risk management</font></p>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- About Grid -->
        <section class="bg-light page-section" id="portfolio">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 text-center">
                        <h2 class="section-heading text-uppercase">About</h2>
                        <h3 class="section-subheading text-muted">Click on any of the topics below to read more about them.</h3>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4 col-sm-6 portfolio-item">
                        <a class="portfolio-link" data-toggle="modal" href="#portfolioModal1">
                            <div class="portfolio-hover">
                                <div class="portfolio-hover-content">
                                    <i class="fas fa-plus fa-3x"></i>
                                </div>
                            </div>
                            <img class="img-fluid" src="../img/portfolio/Project-thumbnail.jpg" alt="">
                        </a>
                        <div class="portfolio-caption">
                            <h4>The project</h4>
                            <p class="text-muted">Background for the project</p>
                        </div>
                    </div>
                                        <div class="col-md-4 col-sm-6 portfolio-item">
                        <a class="portfolio-link" data-toggle="modal" href="#portfolioModal2">
                            <div class="portfolio-hover">
                                <div class="portfolio-hover-content">
                                    <i class="fas fa-plus fa-3x"></i>
                                </div>
                            </div>
                            <img class="img-fluid" src="img/portfolio/Mission-thumbnail.jpg" alt="">
                        </a>
                        <div class="portfolio-caption">
                            <h4>Purpose</h4>
                            <p class="text-muted">Why we chose to make a website</p>
                        </div>
                    </div>
                    
                    <div class="col-md-4 col-sm-6 portfolio-item">
                        <a class="portfolio-link" data-toggle="modal" href="#portfolioModal3">
                            <div class="portfolio-hover">
                                <div class="portfolio-hover-content">
                                    <i class="fas fa-plus fa-3x"></i>
                                </div>
                            </div>
                            <img class="img-fluid" src="img/portfolio/Bootstrap-thumbnail.jpg" alt="">
                        </a>
                        <div class="portfolio-caption">
                            <h4>Bootstrap</h4>
                            <p class="text-muted">Front-end toolbox used for the website</p>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6 portfolio-item">
                        <a class="portfolio-link" data-toggle="modal" href="#portfolioModal4">
                            <div class="portfolio-hover">
                                <div class="portfolio-hover-content">
                                    <i class="fas fa-plus fa-3x"></i>
                                </div>
                            </div>
                            <img class="img-fluid" src="img/portfolio/SQL-thumbnail.jpg" alt="">
                        </a>
                        <div class="portfolio-caption">
                            <h4>SQL</h4>
                            <p class="text-muted">Programming language used for storing our data</p>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6 portfolio-item">
                        <a class="portfolio-link" data-toggle="modal" href="#portfolioModal5">
                            <div class="portfolio-hover">
                                <div class="portfolio-hover-content">
                                    <i class="fas fa-plus fa-3x"></i>
                                </div>
                            </div>
                            <img class="img-fluid" src="img/portfolio/Azure-thumbnail.jpg" alt="">
                        </a>
                        <div class="portfolio-caption">
                            <h4>Azure</h4>
                            <p class="text-muted">Cloud App that hosts our services</p>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6 portfolio-item">
                        <a class="portfolio-link" data-toggle="modal" href="#portfolioModal6">
                            <div class="portfolio-hover">
                                <div class="portfolio-hover-content">
                                    <i class="fas fa-plus fa-3x"></i>
                                </div>
                            </div>
                            <img class="img-fluid" src="../img/portfolio/Csharp-thumbnail.jpg" alt="">
                        </a>
                        <div class="portfolio-caption">
                            <h4>C#, Javascript, HTML</h4>
                            <p class="text-muted">Programming languages used for this website.</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Our Story -->
        <section class="page-section" id="about">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 text-center">
                        <h2 class="section-heading text-uppercase">Our Story</h2>
                        <h3 class="section-subheading text-muted">Read about Group 27's story for all phases throughout this project.</h3>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <ul class="timeline">
                            <li>
                                <div class="timeline-image">
                                    <img class="rounded-circle img-fluid" src="img/about/1.jpg" alt="">
                                </div>
                                <div class="timeline-panel">
                                    <div class="timeline-heading">
                                        <h4>August - September 2019</h4>
                                        <h4 class="subheading">Our Humble Beginnings</h4>
                                    </div>
                                    <div class="timeline-body">
                                        <p class="text-muted">It all started as a wish to create an interactive learning experience for our classmates.</p>
                                    </div>
                                </div>
                            </li>
                            <li class="timeline-inverted">
                                <div class="timeline-image">
                                    <img class="rounded-circle img-fluid" src="img/about/Learning.jpg" alt="">
                                </div>
                                <div class="timeline-panel">
                                    <div class="timeline-heading">
                                        <h4>Late September 2019</h4>
                                        <h4 class="subheading">A Project is Born</h4>
                                    </div>
                                    <div class="timeline-body">
                                        <p class="text-muted">We decided we wanted to make some sort of online test, one that was easy to access, entertaining and educational. </p>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="timeline-image">
                                    <img class="rounded-circle img-fluid" src="img/about/koding.jpg" alt="">
                                </div>
                                <div class="timeline-panel">
                                    <div class="timeline-heading">
                                        <h4>Early October 2019</h4>
                                        <h4 class="subheading">Challenges</h4>
                                    </div>
                                    <div class="timeline-body">
                                        <p class="text-muted">The road ahead wasn't clear, but the mind and body was willing and ready.</p>
                                    </div>
                                </div>
                            </li>
                            <li class="timeline-inverted">
                                <div class="timeline-image">
                                    <img class="rounded-circle img-fluid" src="img/about/Testing.jpg" alt="">
                                </div>
                                <div class="timeline-panel">
                                    <div class="timeline-heading">
                                        <h4>October 2019</h4>
                                        <h4 class="subheading">Trying and improving</h4>
                                    </div>
                                    <div class="timeline-body">
                                        <p class="text-muted">We tried out different solutions and settled on those that fit our objective the best.</p>
                                    </div>
                                </div>
                            </li>
                             <li>
                                <div class="timeline-image">
                                    <img class="rounded-circle img-fluid" src="img/about/Logo_1.PNG" alt="">
                                </div>
                                <div class="timeline-panel">
                                    <div class="timeline-heading">
                                        <h4>Late October 2019 </h4>
                                        <h4 class="subheading">Final Touches and a finished product</h4>
                                    </div>
                                    <div class="timeline-body">
                                        <p class="text-muted">Launching our website was a great feeling, with great effort and long nights we pulled through.</p>
                                    </div>
                                </div>
                            </li>
                            <li class="timeline-inverted">
                                <div class="timeline-image">
                                    <h4>What
                  <br>
                                        Is
                  <br>
                                        Next?</h4>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </section>

        <!-- Team -->
        <section class="bg-light page-section" id="team">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 text-center">
                        <h2 class="section-heading text-uppercase">Our Amazing Team</h2>
                        <h3 class="section-subheading text-muted">Group members in group 27:</h3>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-4">
                        <div class="team-member">
                            <img class="mx-auto rounded-circle" src="img/team/casper.jpg" alt="">
                            <h4>Casper Nilsen</h4>
                            <p class="text-muted">Lead Developer</p>
                            <ul class="list-inline social-buttons">
                                
                                
                                <li class="list-inline-item">
                                    <a href="https://www.linkedin.com/in/casper-nilsen-899344149/">
                                        <i class="fab fa-linkedin-in"></i>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="team-member">
                            <img class="mx-auto rounded-circle" src="img/team/jørgen.jpg" alt="">
                            <h4>Jørgen Anker Olsen</h4>
                            <p class="text-muted">Project Manager and Lead Designer</p>
                            <ul class="list-inline social-buttons"> 
                                <li class="list-inline-item">
                                    <a href="https://www.linkedin.com/in/jorgenankerolsen/">
                                        <i class="fab fa-linkedin-in"></i>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="team-member">
                            <img class="mx-auto rounded-circle" src="img/team/simen.jpg" alt="">
                            <h4>Simen Theie</h4>
                            <p class="text-muted">Lead UX Designer</p>
                            <ul class="list-inline social-buttons">
                                <li class="list-inline-item">
                                    <a href="https://www.linkedin.com/in/simen-theie-havenstr%C3%B8m-122024171/">
                                        <i class="fab fa-linkedin-in"></i>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-4">
                        <div class="team-member">
                            <img class="mx-auto rounded-circle" src="img/team/ole.jpg" alt="">
                            <h4>Ole Martin Brokstad</h4>
                            <p class="text-muted">Back-end Developer</p>
                            <ul class="list-inline social-buttons"> 
                                <li class="list-inline-item">
                                    <a href="https://www.linkedin.com/in/ole-martin-brokstad-b23bb2137/">
                                        <i class="fab fa-linkedin-in"></i>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="team-member">
                            <img class="mx-auto rounded-circle" src="img/team/fredrik.jpg" alt="">
                            <h4>Fredrik Hoel Bevreng</h4>
                            <p class="text-muted">Lead Tester</p>
                            <ul class="list-inline social-buttons"> 
                                <li class="list-inline-item">
                                    <a href="https://www.linkedin.com/in/fredrik-hoel-bevreng-a70273145/">
                                        <i class="fab fa-linkedin-in"></i>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="team-member">
                            <img class="mx-auto rounded-circle" src="img/team/wilhelm.jpg" alt="">
                            <h4>Wilhelm André Mangersnes</h4>
                            <p class="text-muted">Lead GFX Designer</p>
                            <ul class="list-inline social-buttons"> 
                                <li class="list-inline-item">
                                    <a href="https://www.linkedin.com/in/wilhelmmangersnes/">
                                        <i class="fab fa-linkedin-in"></i>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-8 mx-auto text-center">
                        <p class="large text-muted">We have a dedication towards hard work and learning. We want to enable easy learning for other students in the course TPK5100.</p>
                    </div>
                </div>
            </div>
        </section>

        <!-- Clients -->
        <section class="py-5">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <a href="#">
                            <%--<img class="img-fluid d-block mx-auto" src="img/logos/envato.jpg" alt="">--%>
                        </a>
                    </div>
                </div>
            </div>
        </section>

        <!-- Contact -->
        <section class="page-section" id="contact">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 text-center">
                        <h2 class="section-heading text-uppercase">Contact Us</h2>
                        <h3 class="section-subheading text-muted">Please leave feedback so we can improve our tests.</h3>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <form id="contactForm" name="sentMessage" novalidate="novalidate">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <input class="form-control" id="name" name="name" type="text" placeholder="Your Name *" required="required" data-validation-required-message="Please enter your name.">
                                        <p class="help-block text-danger"></p>
                                    </div>
                                    <div class="form-group">
                                        <input class="form-control" id="email" name="email" type="email" placeholder="Your Email *" required="required" data-validation-required-message="Please enter your email address.">
                                        <p class="help-block text-danger"></p>
                                    </div>
                                    <div class="form-group">
                                        <input class="form-control" id="phone" name="phone" type="tel" placeholder="Your Phone *" required="required" data-validation-required-message="Please enter your phone number.">
                                        <p class="help-block text-danger"></p>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <textarea class="form-control" id="message" name="message" placeholder="Your Message *" required="required" data-validation-required-message="Please enter a message."></textarea>
                                        <p class="help-block text-danger"></p>
                                    </div>
                                </div>
                                <div class="clearfix"></div>
                                <div class="col-lg-12 text-center">
                                    <div id="success"></div>
                                    <asp:Button runat="server" id="sendMessageButton" class="btn btn-primary btn-xl text-uppercase" type="submit" Text="Send Message" OnClick="sendMessageButton_Click"/>
<%--                                    <button runat="server" id="sendMessageButton" class="btn btn-primary btn-xl text-uppercase" type="submit">Send Message</button>--%>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </section>

        <!-- Footer -->
        <footer class="footer">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-md-4">
                        <span class="copyright">Copyright &copy; Casper Nilsen 2019</span>
                    </div>
                    <div class="col-md-4">
                    </div>
                    <div class="col-md-4">
                        <ul class="list-inline quicklinks">
                            <li class="list-inline-item">
                                <a href="https://www.ntnu.edu/privacy">Privacy Policy</a>
                            </li>
                            <li class="list-inline-item">
                                <a href="https://opensource.org/licenses/MIT">Terms of Use</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </footer>

        <!-- Summary Modal 1 -->
        <div class="portfolio-modal modal fade" id="portfolioModalChapter1" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="close-modal" data-dismiss="modal">
                        <div class="lr">
                            <div class="rl"></div>
                        </div>
                    </div>
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-8 mx-auto">
                                <div class="modal-body">
                                    <!-- Project Details Go Here -->
                                    <h2 class="text-uppercase">Chapter 1</h2>
                                    <p class="item-intro text-muted">Summary Chapter 1 – Project Types
                                    <img class="img-fluid d-block mx-auto" src="  " alt="">
                                    <p> <Text style={styles.underline}></Text>

                                            <p align="left">The first chapter describes the different types of project which is presented throughout the book.</p>
                                            <u>Restructuring Projects</u>
                                            <p align="left">In restructuring projects, also called soft projects, the people and the work processes are central. The project has no tangible deliveries. Change is an important term considering these types of projects. These are project with the goal of for example implement new work processes, reorganizing of a company, training of a new system, where the challenge is to facilitate for these changes.</p>
                                            <u>Information Technology and Software Projects</u>
                                            <p align="left">IT and software projects are like restructuring project, but where new software is developed and implemented, with the goal of changing systems and processes. This type of project has a more tangible delivery, compared to standard restructuring project. The delivery of IT and software projects can be an IT platform, as and example. The main challenge is to handle expectations from different stakeholders, especially the one who is going to use the new IT-solutions.</p>
                                            <u>Construction Projects</u>
                                            <p align="left">The common characteristics of these types of project are requirements of project management and planning due to different limitations and guidelines for construction. The delivery of this type of project is easy detectable deliveries. </p>
                                            <u>Product Development Projects</u>
                                            <p align="left">Similar to construction projects, the delivery of a Product Development project is detectable. This involves development of new products, optimization of existing products, acquiring standardized or custom-built products. The main challenge is often to establish compliance between product complexity and degree of innovation. Among the most important success factors are scope management, acquirement of adequate technical resources, adequate risk management processes, follow up and support by top management.</p>
                                            <u>Research Projects and Studies</u>

                                            <p align="left">This type of project is differentiated by its delivery. The main delivery is usually a report which provides the basis for continuation of project or for further control. The main challenges are high level of uncertainty, which leads to the project being largely influenced by human factors.  
                                            </p>
                                    <ul class="list-inline">
                                       
                                    </ul>
                                    <button class="btn btn-primary" data-dismiss="modal" type="button">
                                        <i class="fas fa-times"></i>
                                        Close Chapter Summary</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Summary Modal 2 -->
        <div class="portfolio-modal modal fade" id="portfolioModalChapter2" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="close-modal" data-dismiss="modal">
                        <div class="lr">
                            <div class="rl"></div>
                        </div>
                    </div>
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-8 mx-auto">
                                <div class="modal-body">
                                    <!-- Project Details Go Here -->
                                    <h2 class="text-uppercase">Chapter 2</h2>
                                    <p class="item-intro text-muted">Summary
                                    <img class="img-fluid d-block mx-auto" src=".." alt="">
                                    <p>Summary Chapter 2 – Project Characteristics</p>
                                       
                                        <p align="left">The second chapter describes different project characteristics with the purpose of better understanding the challenges these can bring to a project.</p>
                                        <u>Organizational Complexity</u>
                                        <p align="left">If the delivery of a project is big and complex, consisting of several components with sub deliveries, it is characterized as organizational complexity.</p>
                                        <u>Projects contribute to transformation</u>
                                        <p align="left">These projects have the purpose of creating change or transform the organization. This could involve change of work processes, change of organizational structures and change of attitude.</p>
                                        <u>Projects have impact on business or strategy</u>
                                        <p align="left">These projects have the purpose of benefit the project owner. The project purpose is aligned with the business objective or strategy. </p>
                                        <u>Projects are executed under one or more types of constraints</u>
                                        <p align="left">The project must deliver within certain constraints, such as time pressure, limited budget, strict regulations, strict requirements and resource shortage.</p>
                                        <u>Uncertainty</u>
                                        <p align="left">This characteristic includes projects with uncertainty related to the product, people, methods and context.</p>

</p>
                                    <ul class="list-inline">
                                        
                                    </ul>
                                    <button class="btn btn-primary" data-dismiss="modal" type="button">
                                        <i class="fas fa-times"></i>
                                        Close Chapter Summary</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Summary Modal 3 -->
        <div class="portfolio-modal modal fade" id="portfolioModalChapter3" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="close-modal" data-dismiss="modal">
                        <div class="lr">
                            <div class="rl"></div>
                        </div>
                    </div>
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-8 mx-auto">
                                <div class="modal-body">
                                    <!-- Project Details Go Here -->
                                    <h2 class="text-uppercase">Chapter 3</h2>
                                    <p class="item-intro text-muted">Summary
                                    <img class="img-fluid d-block mx-auto" src=".." alt="">                                 
                                        <u>Summary Chapter 3 - Stakeholders</u>
                                        <p align="left"> In the third chapter we learn about stakeholders, who they are, what they want, and how they can influence your project by either supporting it or ruin it.</p>
                                        <u>Stakeholders mapping</u>
                                        <p align="left">Mapping stakeholders is a useful tool that is used in stakeholder analysis to position the different categories of stakeholders related to the project by different attributes. One way of categorizing stakeholders that is often used in literature is their ability to influence the project by different means, such as money, knowledge, contacts, ownership, tools, etc.</p>
                                        <p align="left">Analyzing stakeholders by who they are or how they can contribute to the project can give a better understanding of which stakeholders the project needs in order to achieve success. </p>

                                        <u>Stakeholder Matrix</u>

                                        <p align="left">The stakeholder matrix is a 2x2 matrix where stakeholders are put into groups of whether they have low or great influence and low or great interest in the project. For example, some stakeholders may hold great interest in a particular project but have little influence in its success or downfall, such as a sports teams supporters.</p>

                                    <ul class="list-inline">
                                        
                                    </ul>
                                    <button class="btn btn-primary" data-dismiss="modal" type="button">
                                        <i class="fas fa-times"></i>
                                        Close Chapter Summary</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Summary Modal 4 -->
        <div class="portfolio-modal modal fade" id="portfolioModalChapter4" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="close-modal" data-dismiss="modal">
                        <div class="lr">
                            <div class="rl"></div>
                        </div>
                    </div>
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-8 mx-auto">
                                <div class="modal-body">
                                    <!-- Project Details Go Here -->
                                    <h2 class="text-uppercase">Chapter 4</h2>
                                    <p class="item-intro text-muted">Summary
                                    <img class="img-fluid d-block mx-auto" src=".." alt="">
                                    <p>There will here be a summary from this chapter!</p>
                                    <ul class="list-inline">
                                        
                                    </ul>
                                    <button class="btn btn-primary" data-dismiss="modal" type="button">
                                        <i class="fas fa-times"></i>
                                        Close Chapter Summary</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Summary Modal 5 -->
        <div class="portfolio-modal modal fade" id="portfolioModalChapter5" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="close-modal" data-dismiss="modal">
                        <div class="lr">
                            <div class="rl"></div>
                        </div>
                    </div>
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-8 mx-auto">
                                <div class="modal-body">
                                    <!-- Project Details Go Here -->
                                    <h2 class="text-uppercase">Chapter 5</h2>
                                    <p class="item-intro text-muted">Summary
                                    <img class="img-fluid d-block mx-auto" src=".." alt="">
                                    <p>There will here be a summary from this chapter!</p>
                                    <ul class="list-inline">
                                        
                                    </ul>
                                    <button class="btn btn-primary" data-dismiss="modal" type="button">
                                        <i class="fas fa-times"></i>
                                        Close Chapter Summary</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Summary Modal 6 -->
        <div class="portfolio-modal modal fade" id="portfolioModalChapter6" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="close-modal" data-dismiss="modal">
                        <div class="lr">
                            <div class="rl"></div>
                        </div>
                    </div>
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-8 mx-auto">
                                <div class="modal-body">
                                    <!-- Project Details Go Here -->
                                    <h2 class="text-uppercase">Chapter 6</h2>
                                    <p class="item-intro text-muted">Summary
                                    <img class="img-fluid d-block mx-auto" src=".." alt="">
                                    <p>There will here be a summary from this chapter!</p>
                                    <ul class="list-inline">
                                       
                                    </ul>
                                    <button class="btn btn-primary" data-dismiss="modal" type="button">
                                        <i class="fas fa-times"></i>
                                        Close Chapter Summary</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Summary Modal 7 -->
        <div class="portfolio-modal modal fade" id="portfolioModalChapter7" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="close-modal" data-dismiss="modal">
                        <div class="lr">
                            <div class="rl"></div>
                        </div>
                    </div>
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-8 mx-auto">
                                <div class="modal-body">
                                    <!-- Project Details Go Here -->
                                    <h2 class="text-uppercase">Chapter 7</h2>
                                    <p class="item-intro text-muted">Summary
                                    <img class="img-fluid d-block mx-auto" src=".." alt="">
                                    <p>There will here be a summary from this chapter!</p>
                                    <ul class="list-inline">
                                       
                                    </ul>
                                    <button class="btn btn-primary" data-dismiss="modal" type="button">
                                        <i class="fas fa-times"></i>
                                        Close Chapter Summary</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Summary Modal 8 -->
        <div class="portfolio-modal modal fade" id="portfolioModalChapter8" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="close-modal" data-dismiss="modal">
                        <div class="lr">
                            <div class="rl"></div>
                        </div>
                    </div>
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-8 mx-auto">
                                <div class="modal-body">
                                    <!-- Project Details Go Here -->
                                    <h2 class="text-uppercase">Chapter 8</h2>
                                    <p class="item-intro text-muted">Summary
                                    <img class="img-fluid d-block mx-auto" src=".." alt="">
                                    <p>There will here be a summary from this chapter!</p>
                                    <ul class="list-inline">
                                        
                                    </ul>
                                    <button class="btn btn-primary" data-dismiss="modal" type="button">
                                        <i class="fas fa-times"></i>
                                        Close Chapter Summary</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Summary Modal 9 -->
        <div class="portfolio-modal modal fade" id="portfolioModalChapter9" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="close-modal" data-dismiss="modal">
                        <div class="lr">
                            <div class="rl"></div>
                        </div>
                    </div>
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-8 mx-auto">
                                <div class="modal-body">
                                    <!-- Project Details Go Here -->
                                    <h2 class="text-uppercase">Chapter 9</h2>
                                    <p class="item-intro text-muted">Summary
                                    <img class="img-fluid d-block mx-auto" src=".." alt="">
                                    <p>There will here be a summary from this chapter!</p>
                                    <ul class="list-inline">
                                        
                                    </ul>
                                    <button class="btn btn-primary" data-dismiss="modal" type="button">
                                        <i class="fas fa-times"></i>
                                        Close Chapter Summary</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Summary Modal 10 -->
        <div class="portfolio-modal modal fade" id="portfolioModalChapter10" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="close-modal" data-dismiss="modal">
                        <div class="lr">
                            <div class="rl"></div>
                        </div>
                    </div>
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-8 mx-auto">
                                <div class="modal-body">
                                    <!-- Project Details Go Here -->
                                    <h2 class="text-uppercase">Chapter 10</h2>
                                    <p class="item-intro text-muted">Summary
                                    <img class="img-fluid d-block mx-auto" src=".." alt="">
                                    <p>There will here be a summary from this chapter!</p>
                                    <ul class="list-inline">
                                        
                                    </ul>
                                    <button class="btn btn-primary" data-dismiss="modal" type="button">
                                        <i class="fas fa-times"></i>
                                        Close Chapter Summary</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Summary Modal 11 --
        <div class="portfolio-modal modal fade" id="portfolioModalChapter11" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="close-modal" data-dismiss="modal">
                        <div class="lr">
                            <div class="rl"></div>
                        </div>
                    </div>
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-8 mx-auto">
                                <div class="modal-body">
                                    <!-- Project Details Go Here --
                                    <h2 class="text-uppercase">Chapter 11</h2>
                                    <p class="item-intro text-muted">Summary
                                    <img class="img-fluid d-block mx-auto" src=".." alt="">
                                    <p>There will here be a summary from this chapter!</p>
                                    <ul class="list-inline">
                                        <li>Date: October 2019</li>
                                        <li>Author: Jørgen Anker Olsen</li>
                                        <li>Category: Summary</li>
                                    </ul>
                                    <button class="btn btn-primary" data-dismiss="modal" type="button">
                                        <i class="fas fa-times"></i>
                                        Close Chapter Summary</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <!-- Summary Modal 12 --
        <div class="portfolio-modal modal fade" id="portfolioModalChapter12" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="close-modal" data-dismiss="modal">
                        <div class="lr">
                            <div class="rl"></div>
                        </div>
                    </div>
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-8 mx-auto">
                                <div class="modal-body">
                                    <!-- Project Details Go Here --
                                    <h2 class="text-uppercase">Chapter 12</h2>
                                    <p class="item-intro text-muted">Summary
                                    <img class="img-fluid d-block mx-auto" src=".." alt="">
                                    <p>....</p>
                                    <ul class="list-inline">
                                        <li>Date: October 2019</li>
                                        <li>Author: Jørgen Anker Olsen</li>
                                        <li>Category: Summary</li>
                                    </ul>
                                    <button class="btn btn-primary" data-dismiss="modal" type="button">
                                        <i class="fas fa-times"></i>
                                        Close Chapter Summary</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Portfolio Modals -->

        <!-- Modal 1 -->
        <div class="portfolio-modal modal fade" id="portfolioModal1" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="close-modal" data-dismiss="modal">
                        <div class="lr">
                            <div class="rl"></div>
                        </div>
                    </div>
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-8 mx-auto">
                                <div class="modal-body">
                                    <!-- Project Details Go Here -->
                                    <h2 class="text-uppercase">The project</h2>
                                    <p class="item-intro text-muted">Project background</p>
                                    <img class="img-fluid d-block mx-auto" src="" alt="">

                                    <p>
                                       This interactive learning site is the result of a digitalization project in 
                                       the course TPK5100, "Applied Project management". It was created during the Fall 2019
                                       and delivered as the final product, i.e. the project output.
                                    </p>
                                    <ul class="list-inline">
                                        
                                    </ul>
                                    <button class="btn btn-primary" data-dismiss="modal" type="button">
                                        <i class="fas fa-times"></i>
                                        Close
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Modal 2 -->
                <div class="portfolio-modal modal fade" id="portfolioModal2" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="close-modal" data-dismiss="modal">
                        <div class="lr">
                            <div class="rl"></div>
                        </div>
                    </div>
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-8 mx-auto">
                                <div class="modal-body">
                                    <!-- Project Details Go Here -->
                                    <h2 class="text-uppercase">Purpose</h2>
                                    <p class="item-intro text-muted">Every project has a purpose</p>
                                    <img class="img-fluid d-block mx-auto" src="" alt="">
                                    <p>The purpose of this project is to equip every student taking TPK5100 with an interactive learning tool 
                                       that has a positive impact on the learning outcome. Our vision is that this tool can be used during the
                                       semester, before the exam or as a refreshment for former students that has taken this course, to help
                                       them reach their learning objectives. 
                                    </p>
                                    <ul class="list-inline">
                                    </ul>
                                    <button class="btn btn-primary" data-dismiss="modal" type="button">
                                        <i class="fas fa-times"></i>
                                        Close
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Modal 3 -->
        <div class="portfolio-modal modal fade" id="portfolioModal3" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="close-modal" data-dismiss="modal">
                        <div class="lr">
                            <div class="rl"></div>
                        </div>
                    </div>
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-8 mx-auto">
                                <div class="modal-body">
                                    <!-- Project Details Go Here -->
                                    <h2 class="text-uppercase">Bootstrap</h2>
                                    <p class="item-intro text-muted">Front-end toolbox used to create the website.</p>
                                    <img class="img-fluid d-block mx-auto" src="" alt="">
                                    <p>Bootstrap is a toolbox that makes it easier to create stylish elements that act the way you want. It is the most popular framework of its kind but alternatives like Foundation by Zurb og Bulma. 
                                        It makes it easier to put elements like textboxes on the page with by dividing the page into a grid-system. You can then put a button in a specific row or column of your choosing, while Bootstrap handles all
                                        the sizing. Bootstrap has many designs for buttons, textboxes and have ready-to-use animations that one can select from. Bootstrap is free to use. 
                                    </p>
                                    <ul class="list-inline">
                                        
                                    </ul>
                                    <button class="btn btn-primary" data-dismiss="modal" type="button">
                                        <i class="fas fa-times"></i>
                                        Close
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Modal 4 -->
        <div class="portfolio-modal modal fade" id="portfolioModal4" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="close-modal" data-dismiss="modal">
                        <div class="lr">
                            <div class="rl"></div>
                        </div>
                    </div>
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-8 mx-auto">
                                <div class="modal-body">
                                    <!-- Project Details Go Here -->
                                    <h2 class="text-uppercase">SQL</h2>
                                    <p class="item-intro text-muted">Programming language used for storing our data</p>
                                    <img class="img-fluid d-block mx-auto" src="" alt="">
                                    <p>We use Microsoft's solution for storing our data. SQL Server is a relational database, which means that two tables of data can be connected to one another. For us, a fitting example would be a table of users and a table of tests where the
                                        relationship is that one user can have many tests. And no test can be created without having a user related to it. An alternative could be to use NoSQL databases like MongoDB. However because we don't store huge amounts of data
                                        and we have use for the relational table structure, we opted to go for SQL Server. In SQL Server we use Stored Procedures, which is like a function ready to be called to perform a task. 
                                        These Stored Procedures handle inserting, deleting, modifying and selecting data to and from the website. SQL Server is free for students at NTNU.
                                    </p>
                                    <ul class="list-inline">
                                        
                                    </ul>
                                    <button class="btn btn-primary" data-dismiss="modal" type="button">
                                        <i class="fas fa-times"></i>
                                        Close
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Modal 5 -->
        <div class="portfolio-modal modal fade" id="portfolioModal5" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="close-modal" data-dismiss="modal">
                        <div class="lr">
                            <div class="rl"></div>
                        </div>
                    </div>
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-8 mx-auto">
                                <div class="modal-body">
                                    <!-- Project Details Go Here -->
                                    <h2 class="text-uppercase">Web hosting by Azure</h2>
                                    <p class="item-intro text-muted">To host such a amazing website (and database) we use Azure Cloud Services</p>
                                    <img class="img-fluid d-block mx-auto" src="" alt="">
                                    <p>Azure, or Azure Cloud Services is as the name suggests a cloud computing service that can provide a wide range of services. We use Azure to host our website 
                                        on the internet. We use Github to update our code and Azure is set up to check if any new code has been committed to Github. Azure will then automatically 
                                        deploy the code/images/stylesheets in the cloud. We also use Azure to host our database, this lets us access it from anywhere with an internet connection as opposed to hosting it locally on a computer. 
                                        Azure has a free starter pack that allows you to use the basic services like web application and database hosting.
                                    </p>
                                    <ul class="list-inline">
                                        
                                    </ul>
                                    <button class="btn btn-primary" data-dismiss="modal" type="button">
                                        <i class="fas fa-times"></i>
                                        Close
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Modal 6 -->
         <div class="portfolio-modal modal fade" id="portfolioModal6" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="close-modal" data-dismiss="modal">
                        <div class="lr">
                            <div class="rl"></div>
                        </div>
                    </div>
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-8 mx-auto">
                                <div class="modal-body">
                                    <!-- Project Details Go Here -->
                                    <h2 class="text-uppercase">C#, Javascript and html</h2>
                                    <p class="item-intro text-muted">The programming languages used to create this website. </p>
                                    <img class="img-fluid d-block mx-auto" src="" alt="">
                                    <p>For the front-end of the application we used C#, Javascript and HTML5. We use the Visual Studio IDE as it is Microsoft's product with integrations for SQL Server and Azure support. 
                                       We use C# to send and receive data in the "Code-Behind" part of our code. Javascript communicates with code-behind to modify page elements and handles events like clicking buttons.
                                       HTML is the standard markup language for documents in internet browsers. </p>
                                    <ul class="list-inline">
                                        
                                    </ul>
                                    <button class="btn btn-primary" data-dismiss="modal" type="button">
                                        <i class="fas fa-times"></i>
                                        Close
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- lectureModal Modal -->
        <div id="LectureModal" class="modal fade" role="dialog" tabindex="-1">
            <div class="page-section">
                <div class="modal-dialog modal-lg" style="max-width: 70%;">
                    <!-- lectureWorkModal content-->
                    <div class="modal-content">
                        <div class="modal-header">
                            <h4 class="modal-title" id="modalTitle">Chapter 1</h4>
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                        </div>
                        <!-- lectureWorkModal body-->
                        <div class="modal-body">
                            <div class="container-fluid">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <h3 class="text-center mx-auto" id="questionText">Question text here</h3>
                                    </div>
                                </div>
                                <div class="frb-group">
                                    <div class="row">

                                        <!-- RADIO BUTTONS BLOCK -->
                                        <div class="col-lg-6">
                                            <div class="frb frb-primary" style="height: 92%;">
                                                <input type="radio" id="radio-button-1" onclick="altCheck(this)" name="radio-button" value="1">
                                                <label for="radio-button-1" id="alt1Box" style="height: 100%;">
                                                    <span class="frb-title">1</span><br />
                                                    <span class="frb-description text-dark" id="alt1">...</span>
                                                </label>
                                            </div>
                                        </div>
                                        <div class="col-lg-6">
                                            <div class="frb frb-primary" style="height: 92%;">
                                                <input type="radio" id="radio-button-2" onclick="altCheck(this)" name="radio-button" value="2">
                                                <label for="radio-button-2" id="alt2Box" style="height: 100%;">
                                                    <span class="frb-title">2</span><br />
                                                    <span class="frb-description text-dark" id="alt2">...</span>
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-lg-6">
                                            <div class="frb frb-primary" style="height: 92%;">
                                                <input type="radio" id="radio-button-3" onclick="altCheck(this)" name="radio-button" value="3">
                                                <label for="radio-button-3" id="alt3Box" style="height: 100%;">
                                                    <span class="frb-title">3</span><br />
                                                    <span class="frb-description text-dark" id="alt3">...</span>
                                                </label>
                                            </div>
                                        </div>
                                        <div class="col-lg-6">
                                            <div class="frb frb-primary" style="height: 92%;">
                                                <input type="radio" id="radio-button-4" onclick="altCheck(this)" name="radio-button" value="4">
                                                <label for="radio-button-4" id="alt4Box" style="height: 100%;">
                                                    <span class="frb-title">4</span><br />
                                                    <span class="frb-description text-dark" id="alt4">...</span>
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-5">
                                        <button runat="server" onclick="lifeLine5050()" id="lifeLine1" class="btn float-left text-uppercase btn-primary" type="button">50/50</button>
                                        <button runat="server" onclick="lifeLineHint()" id="lifeLine2" class="btn float-left text-uppercase btn-primary" type="button">Ask an expert</button>
                                    </div>

                                    <div class="col-sm-7 text-right">
                                        <button runat="server" onclick="back()" id="btnBack" class="btn d-none text-uppercase btn-primary" type="button">Back</button>
                                        <button runat="server" onclick="next()" id="btnNext" class="btn d-none text-uppercase btn-primary" type="button">Next</button>
                                    </div>
                                </div>
                                <div class="row my-2">
                                    <div class="col-sm-4"></div>
                                    <div class="col-sm-4">
                                        <input runat="server" class="form-control d-none" id="txtName" type="text" placeholder="Your Name">
                                    </div>
                                    <div class="col-sm-4">
                                        <%--                                        <button runat="server" onclick="submit()" id="btnSubmit" data-target="#LeaderBoardModal" data-dismiss="modal" data-toggle="modal" class="btn d-none text-uppercase btn-primary" type="button">Submit</button>--%>
                                        <button runat="server" onclick="submit()" id="btnSubmit" class="btn d-none text-uppercase btn-primary" type="button">Submit</button>
                                    </div>
                                </div>
                                <div class="row my-2">
                                    <div id="alertDiv" style="display: none;" class="alert mx-auto alert-danger alert alert-dismissible" role="alert">
                                        <div id="addMessage">
                                            <strong>Ops!</strong> Please select one alternative.
                                        </div>
                                    </div>
                                </div>
                                <div class="row my-2">
                                    <div id="hint" style="display: none;" class="alert mx-auto alert-info alert alert-dismissible" role="alert">
                                    </div>
                                </div>

                                <!-- lectureModal footer-->
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                    <%--                    <button runat="server" onclick="addWork()" id="Button1" class="btn btn-primary" type="button">Legg til arbeid</button>--%>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- LeaderBoardModal Modal -->
        <div id="LeaderBoardModal" class="modal fade" role="dialog" tabindex="-1">
            <div class="page-section">
                <div class="modal-dialog modal-lg" style="max-width: 70%;">
                    <!-- LeaderBoardModal content-->
                    <div class="modal-content">
                        <div class="modal-header">
                            <h4 class="modal-title" id="modalTitle2">Leaderboard</h4>
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                        </div>
                        <!-- LeaderBoardModal body-->
                        <div class="modal-body">
                            <div class="container-fluid">
                                <div class="row d-flex justify-content-between bd-highlight mb-3 example-parent">
                                    <div class="col-lg-4">
                                    </div>
                                    <div class="col-lg-4">
                                        <h3 class="text-center mx-auto" id="questionText2">Question text here</h3>
                                    </div>
                                    <div class="text-right col-lg-4">
                                        <button runat="server" onclick="openResultsModal()" id="btnViewResult" class="btn text-uppercase btn-primary" type="button">View Result</button>
                                        <button runat="server" onclick="refreshLeaderboard()" id="btnRefresh" class="btn text-uppercase btn-primary" type="button">Refresh</button>
                                    </div>
                                </div>
                                <div style="overflow-y: scroll;max-height: calc(70vh - 210px);">
                                <table id="table1">
                                    <thead>
                                        <tr>
                                            <th data-field="Name">Name</th>
                                            <th data-field="Correct">#Correct</th>
                                            <th data-field="Incorrect">#Incorrect</th>
                                        </tr>
                                    </thead>
                                </table>
                                    </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- ResultModal Modal -->
        <div id="ResultModal" class="modal fade" role="dialog" tabindex="-1">
            <div class="page-section">
                <div class="modal-dialog modal-lg" style="max-width: 70%;">
                    <!-- ResultModal content-->
                    <div class="modal-content">
                        <div class="modal-header">
                            <h4 class="modal-title" id="modalTitle3">Result</h4>
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                        </div>
                        <!-- ResultModal body-->
                        <div class="modal-body">
                            <div class="container-fluid">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <h3 class="text-center mx-auto" id="questionText3">Question text here</h3>
                                    </div>
                                </div>
                                <div class="frb-group">
                                    <div class="row">
                                        <!-- RADIO BUTTONS BLOCK -->
                                        <div class="col-lg-6">
                                            <div class="frb frb-primary" style="height: 92%;">
                                                <input type="radio" id="radio-button-1result" name="radio-button2" value="1">
                                                <label for="radio-button-1" id="alt1ResultBox" style="height: 100%;">
                                                    <span class="frb-title">1</span><br />
                                                    <span class="frb-description text-dark" id="altResult1">...</span>
                                                </label>
                                            </div>
                                        </div>
                                        <div class="col-lg-6">
                                            <div class="frb frb-primary" style="height: 92%;">
                                                <input type="radio" id="radio-button-2result" name="radio-button2" value="2">
                                                <label for="radio-button-2" id="alt2ResultBox" style="height: 100%;">
                                                    <span class="frb-title">2</span><br />
                                                    <span class="frb-description text-dark" id="altResult2">...</span>
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-lg-6">
                                            <div class="frb frb-primary" style="height: 92%;">
                                                <input type="radio" id="radio-button-3result" name="radio-button2" value="3">
                                                <label for="radio-button-3" id="alt3ResultBox" style="height: 100%;">
                                                    <span class="frb-title">3</span><br />
                                                    <span class="frb-description text-dark" id="altResult3">...</span>
                                                </label>
                                            </div>
                                        </div>
                                        <div class="col-lg-6">
                                            <div class="frb frb-primary" style="height: 92%;">
                                                <input type="radio" id="radio-button-4result" name="radio-button2" value="4">
                                                <label for="radio-button-4" id="alt4ResultBox" style="height: 100%;">
                                                    <span class="frb-title">4</span><br />
                                                    <span class="frb-description text-dark" id="altResult4">...</span>
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-5">
                                    </div>

                                    <div class="col-sm-7 text-right">
                                        <button runat="server" onclick="back2()" id="btnResultBack" class="btn d-none text-uppercase btn-primary" type="button">Back</button>
                                        <button runat="server" onclick="next2()" id="btnResultNext" class="btn d-none text-uppercase btn-primary" type="button">Next</button>
                                    </div>
                                </div>

                                <!-- lectureModal footer-->
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <!-- Bootstrap core JavaScript -->
        <script src="vendor/jquery/jquery.min.js" type="text/javascript"></script>
        <script src="vendor/popper/popper.min.js" type="text/javascript"></script>
        <script src="vendor/bootstrap/js/bootstrap.bundle.min.js" type="text/javascript"></script>

        <!-- Plugin JavaScript -->
        <script src="vendor/jquery-easing/jquery.easing.min.js" type="text/javascript"></script>

        <!-- Contact form JavaScript -->
        <script src="js/jqBootstrapValidation.js" type="text/javascript"></script>
        <script src="js/contact_me.js" type="text/javascript"></script>

        <!-- Custom scripts for this template -->
        <script src="js/agency.min.js" type="text/javascript"></script>

        <script src="https://unpkg.com/bootstrap-table@1.15.5/dist/bootstrap-table.min.js"></script>
    </form>
</body>

</html>
