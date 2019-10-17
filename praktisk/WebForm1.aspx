<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="praktisk.WebForm1" %>


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
                            <a class="nav-link js-scroll-trigger" href="#Summarys">Summarys</a>
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
                    <div class="intro-lead-in">Welcome To Our Test!</div>
                    <div class="intro-heading text-uppercase">We hope you enjoy it</div>
                    <a class="btn btn-primary btn-xl text-uppercase js-scroll-trigger" href="#services">Take test</a>
                </div>
            </div>
        </header>

        <!-- Services -->
        <section class="page-section" id="services">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 text-center">
                        <h2 class="section-heading text-uppercase">Select Lecture/Quiz</h2>
                        <!-- dropdown -->
                        <div class="dropdown">
                            <button class="btn btn-lg btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Lecture
                            </button>
                            <div runat="server" id="dropdownmenu" class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                <button runat="server" id="dropdown1" onclick="openModal(this)" class="dropdown-item text-secondary disabled" style="display: none" value="0" data-toggle="modal" data-target="#LectureModal" type="button">1</button>
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

        <section>
            <div class="container">
                <div class="row text-center">
                    <div class="col-md-4">
                        <span class="fa-stack fa-4x">
                            <i class="fas fa-circle fa-stack-2x text-primary"></i>
                            <i class="fas fa-shopping-cart fa-stack-1x fa-inverse"></i>
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
                            <i class="fas fa-lock fa-stack-1x fa-inverse"></i>
                        </span>
                        <h4 class="service-heading">Learning</h4>
                        <p class="text-muted">Using the questions and summaries together with the lectures and the book The Road to Success may help you learn more and retain the information better for later use.    </p>
                    </div>
                </div>
            </div>
        </section>

        <!-- Summarys Grid -->
        <section class="bg-light page-section" id="Summarys">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 text-center">
                        <h2 class="section-heading text-uppercase">Summarys</h2>
                        <h3 class="section-subheading text-muted">Click on any of the chapters below to read more about them.</h3>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4 col-sm-6 portfolio-item">
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
                            <p class="text-muted">Introduction</p>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6 portfolio-item">
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
                            <p class="text-muted">Project characteristics</p>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6 portfolio-item">
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
                            <p class="text-muted">Insert chapter name</p>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6 portfolio-item">
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
                            <p class="text-muted">Insert chapter name</p>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6 portfolio-item">
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
                            <p class="text-muted">Insert chapter name</p>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6 portfolio-item">
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
                            <p class="text-muted">Insert chapter name</p>
                        </div>
                    </div>
                     <div class="col-md-4 col-sm-6 portfolio-item">
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
                            <p class="text-muted">Insert chapter name</p>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6 portfolio-item">
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
                            <p class="text-muted">Insert chapter name</p>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6 portfolio-item">
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
                            <p class="text-muted">Insert chapter name</p>
                        </div>
                    </div>
                     <div class="col-md-4 col-sm-6 portfolio-item">
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
                            <p class="text-muted">Insert chapter name</p>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6 portfolio-item">
                        <a class="portfolio-link" data-toggle="modal" href="#portfolioModalChapter11">
                            <div class="portfolio-hover">
                                <div class="portfolio-hover-content">
                                    <i class="fas fa-plus fa-3x"></i>
                                </div>
                            </div>
                            <img class="img-fluid" src="img/about/Chapter_11.png" alt="">
                        </a>
                        <div class="portfolio-caption">
                            <h4>Chapter 11</h4>
                            <p class="text-muted">Insert chapter name</p>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6 portfolio-item">
                        <a class="portfolio-link" data-toggle="modal" href="#portfolioModalChapter12">
                            <div class="portfolio-hover">
                                <div class="portfolio-hover-content">
                                    <i class="fas fa-plus fa-3x"></i>
                                </div>
                            </div>
                            <img class="img-fluid" src="img/about/Chapter_12.png" alt="">
                        </a>
                        <div class="portfolio-caption">
                            <h4>Chapter 12</h4>
                            <p class="text-muted">Insert chapter name</p>
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
                            <img class="img-fluid" src="../img/portfolio/Csharp-thumbnail.jpg" alt="">
                        </a>
                        <div class="portfolio-caption">
                            <h4>C#</h4>
                            <p class="text-muted">Programming language used for this website.</p>
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
                            <img class="img-fluid" src="img/portfolio/Mission-thumbnail.jpg" alt="">
                        </a>
                        <div class="portfolio-caption">
                            <h4>Our mission</h4>
                            <p class="text-muted">Why we chose to make a website</p>
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
                                    <img class="rounded-circle img-fluid" src="img/about/2.jpg" alt="">
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
                                    <img class="rounded-circle img-fluid" src="img/about/3.jpg" alt="">
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
                                    <img class="rounded-circle img-fluid" src="img/about/4.jpg" alt="">
                                </div>
                                <div class="timeline-panel">
                                    <div class="timeline-heading">
                                        <h4>October 2019</h4>
                                        <h4 class="subheading">Final Touches</h4>
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
                                    <a href="#">
                                        <i class="fab fa-twitter"></i>
                                    </a>
                                </li>
                                <li class="list-inline-item">
                                    <a href="#">
                                        <i class="fab fa-facebook-f"></i>
                                    </a>
                                </li>
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
                            <p class="text-muted">Project manager and Lead Designer</p>
                            <ul class="list-inline social-buttons">
                                <li class="list-inline-item">
                                    <a href="#">
                                        <i class="fab fa-twitter"></i>
                                    </a>
                                </li>
                                <li class="list-inline-item">
                                    <a href="#">
                                        <i class="fab fa-facebook-f"></i>
                                    </a>
                                </li>
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
                                    <a href="#">
                                        <i class="fab fa-twitter"></i>
                                    </a>
                                </li>
                                <li class="list-inline-item">
                                    <a href="#">
                                        <i class="fab fa-facebook-f"></i>
                                    </a>
                                </li>
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
                                    <a href="#">
                                        <i class="fab fa-twitter"></i>
                                    </a>
                                </li>
                                <li class="list-inline-item">
                                    <a href="#">
                                        <i class="fab fa-facebook-f"></i>
                                    </a>
                                </li>
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
                                    <a href="#">
                                        <i class="fab fa-twitter"></i>
                                    </a>
                                </li>
                                <li class="list-inline-item">
                                    <a href="#">
                                        <i class="fab fa-facebook-f"></i>
                                    </a>
                                </li>
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
                                    <a href="#">
                                        <i class="fab fa-twitter"></i>
                                    </a>
                                </li>
                                <li class="list-inline-item">
                                    <a href="#">
                                        <i class="fab fa-facebook-f"></i>
                                    </a>
                                </li>
                                <li class="list-inline-item">
                                    <a href="#">
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
                        <ul class="list-inline social-buttons">
                            <li class="list-inline-item">
                                <a href="#">
                                    <i class="fab fa-twitter"></i>
                                </a>
                            </li>
                            <li class="list-inline-item">
                                <a href="#">
                                    <i class="fab fa-facebook-f"></i>
                                </a>
                            </li>
                            <li class="list-inline-item">
                                <a href="#">
                                    <i class="fab fa-linkedin-in"></i>
                                </a>
                            </li>
                        </ul>
                    </div>
                    <div class="col-md-4">
                        <ul class="list-inline quicklinks">
                            <li class="list-inline-item">
                                <a href="#">Privacy Policy</a>
                            </li>
                            <li class="list-inline-item">
                                <a href="#">Terms of Use</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </footer>

        !-- Summary Modal 1 -->
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
                                    <h2 class="text-uppercase">Chapter 1</h2>
                                    <p class="item-intro text-muted">Summary
                                    <img class="img-fluid d-block mx-auto" src=".." alt="">
                                    <p>UThere will here be a summary from this chapter!</p>
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
                                    <h2 class="text-uppercase">Chapter 1</h2>
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
                                    <h2 class="text-uppercase">Chapter 1</h2>
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
                                    <h2 class="text-uppercase">Chapter 1</h2>
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
                                    <h2 class="text-uppercase">Chapter 1</h2>
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
                                        <li>Date: October 2019</li>
                                        <li>Author: Jørgen Anker Olsen</li>
                                        <li>Category: Summary</li>>
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

        <!-- Summary Modal 11 -->
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
                                    <!-- Project Details Go Here -->
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


        <!-- Summary Modal 12 -->
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
                                    <!-- Project Details Go Here -->
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
                                    <p class="item-intro text-muted">Bacground for the project:</p>
                                    <img class="img-fluid d-block mx-auto" src="img/portfolio/01-metalearing.jpg" alt="">

                                    <p>The goal of this project is....</p>
                                    <ul class="list-inline">
                                        <li>Date: October 2019</li>
                                        <li>Client: Students of Practical project management</li>
                                        <li>Category: Web hosting</li>
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
                                    <h2 class="text-uppercase">C#, Java, python and html</h2>
                                    <p class="item-intro text-muted">The programming languages used to create this websit. </p>
                                    <img class="img-fluid d-block mx-auto" src="img/portfolio/programming.jpg" alt="">
                                    <p>We used C#, Java, python and html to create this website. And.... </p>
                                    <ul class="list-inline">
                                        <li>Date: October 2019</li>
                                        <li>Client: Bassan</li>
                                        <li>Category: Website programming</li>
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
                                    <h2 class="text-uppercase">Project Name</h2>
                                    <p class="item-intro text-muted">Lorem ipsum dolor sit amet consectetur.</p>
                                    <img class="img-fluid d-block mx-auto" src="img/portfolio/03-full.jpg" alt="">
                                    <p>Use this area to describe your project. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Est blanditiis dolorem culpa incidunt minus dignissimos deserunt repellat aperiam quasi sunt officia expedita beatae cupiditate, maiores repudiandae, nostrum, reiciendis facere nemo!</p>
                                    <ul class="list-inline">
                                        <li>Date: January 2019</li>
                                        <li>Client: Finish</li>
                                        <li>Category: Identity</li>
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
                                    <h2 class="text-uppercase">Project Name</h2>
                                    <p class="item-intro text-muted">Lorem ipsum dolor sit amet consectetur.</p>
                                    <img class="img-fluid d-block mx-auto" src="img/portfolio/04-full.jpg" alt="">
                                    <p>Use this area to describe your project. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Est blanditiis dolorem culpa incidunt minus dignissimos deserunt repellat aperiam quasi sunt officia expedita beatae cupiditate, maiores repudiandae, nostrum, reiciendis facere nemo!</p>
                                    <ul class="list-inline">
                                        <li>Date: January 2017</li>
                                        <li>Client: Lines</li>
                                        <li>Category: Branding</li>
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
                                    <p class="item-intro text-muted">To host such a amazing website we use Azure</p>
                                    <img class="img-fluid d-block mx-auto" src="img/portfolio/05-full.jpg" alt="">
                                    <p>To hoste our website we are using the maazing cloud hosting services to host our website.</p>
                                    <ul class="list-inline">
                                        <li>Date: October 2019</li>
                                        <li>Client: Us</li>
                                        <li>Category: Website Hosting</li>
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
                                    <h2 class="text-uppercase">Project Name</h2>
                                    <p class="item-intro text-muted">Lorem ipsum dolor sit amet consectetur.</p>
                                    <img class="img-fluid d-block mx-auto" src="img/portfolio/06-full.jpg" alt="">
                                    <p>Use this area to describe your project. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Est blanditiis dolorem culpa incidunt minus dignissimos deserunt repellat aperiam quasi sunt officia expedita beatae cupiditate, maiores repudiandae, nostrum, reiciendis facere nemo!</p>
                                    <ul class="list-inline">
                                        <li>Date: October 2019</li>
                                        <li>Client: Window</li>
                                        <li>Category: Photography</li>
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
                            <h4 class="modal-title" id="modalTitle">Lecture 1</h4>
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
                                            <div class="frb frb-primary">
                                                <input type="radio" id="radio-button-1" onclick="altCheck(this)" name="radio-button" value="1">
                                                <label for="radio-button-1" id="alt1Box">
                                                    <span class="frb-title">1</span>
                                                    <span class="frb-description text-dark" id="alt1">Lorem ipsum dolor sit amet, consectetur adipiscing elit. In semper quam nunc.</span>
                                                </label>
                                            </div>
                                        </div>
                                        <div class="col-lg-6">
                                            <div class="frb frb-primary">
                                                <input type="radio" id="radio-button-2" onclick="altCheck(this)" name="radio-button" value="2">
                                                <label for="radio-button-2" id="alt2Box">
                                                    <span class="frb-title">2</span>
                                                    <span class="frb-description text-dark" id="alt2">Lorem ipsum dolor sit amet, consectetur adipiscing elit. In semper quam nunc.</span>
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-lg-6">
                                            <div class="frb frb-primary">
                                                <input type="radio" id="radio-button-3" onclick="altCheck(this)" name="radio-button" value="3">
                                                <label for="radio-button-3" id="alt3Box">
                                                    <span class="frb-title">3</span>
                                                    <span class="frb-description text-dark" id="alt3">Lorem ipsum dolor sit amet, consectetur adipiscing elit. In semper quam nunc.</span>
                                                </label>
                                            </div>
                                        </div>
                                        <div class="col-lg-6">
                                            <div class="frb frb-primary">
                                                <input type="radio" id="radio-button-4" onclick="altCheck(this)" name="radio-button" value="4">
                                                <label for="radio-button-4" id="alt4Box">
                                                    <span class="frb-title">4</span>
                                                    <span class="frb-description text-dark" id="alt4">Lorem ipsum dolor sit amet, consectetur adipiscing elit. In semper quam nunc.</span>
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-5">
                                        <button runat="server" onclick="lifeLine5050()" id="lifeLine1" class="btn float-left text-uppercase btn-primary" type="button">50/50</button>
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
                                            <strong>Ops!</strong> Vennligst velg et alternativ.
                                        </div>
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
                                            <div class="frb frb-primary">
                                                <input type="radio" id="radio-button-1result" name="radio-button2" value="1">
                                                <label for="radio-button-1" id="alt1ResultBox">
                                                    <span class="frb-title">1</span>
                                                    <span class="frb-description text-dark" id="altResult1">Lorem ipsum dolor sit amet, consectetur adipiscing elit. In semper quam nunc.</span>
                                                </label>
                                            </div>
                                        </div>
                                        <div class="col-lg-6">
                                            <div class="frb frb-primary">
                                                <input type="radio" id="radio-button-2result" name="radio-button2" value="2">
                                                <label for="radio-button-2" id="alt2ResultBox">
                                                    <span class="frb-title">2</span>
                                                    <span class="frb-description text-dark" id="altResult2">Lorem ipsum dolor sit amet, consectetur adipiscing elit. In semper quam nunc.</span>
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-lg-6">
                                            <div class="frb frb-primary">
                                                <input type="radio" id="radio-button-3result" name="radio-button2" value="3">
                                                <label for="radio-button-3" id="alt3ResultBox">
                                                    <span class="frb-title">3</span>
                                                    <span class="frb-description text-dark" id="altResult3">Lorem ipsum dolor sit amet, consectetur adipiscing elit. In semper quam nunc.</span>
                                                </label>
                                            </div>
                                        </div>
                                        <div class="col-lg-6">
                                            <div class="frb frb-primary">
                                                <input type="radio" id="radio-button-4result" name="radio-button2" value="4">
                                                <label for="radio-button-4" id="alt4ResultBox">
                                                    <span class="frb-title">4</span>
                                                    <span class="frb-description text-dark" id="altResult4">Lorem ipsum dolor sit amet, consectetur adipiscing elit. In semper quam nunc.</span>
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
