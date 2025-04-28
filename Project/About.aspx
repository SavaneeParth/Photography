   <%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Project.About" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- About Section Begin -->
    <section class="about-section">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-6 p-0">
                    <div class="about-pic set-bg" data-setbg="img/about/about-pic.jpg">
                        <a href="https://www.youtube.com/watch?v=hxADTEJalRw&list=WL&index=49&t=0s" class="play-btn video-popup"><i class="fa fa-play"></i></a>
                    </div>
                </div>
                <div class="col-lg-6 p-0">
                    <div class="about-text">
                        <div class="section-title">
                            <h2>Capturing the moments that captivate your heart</h2>
                            <p>
                                We specialize in capturing the moments that touch your heart and tell your story. Every shot is crafted with passion and creativity to create timeless, heartfelt memories.
                            </p>
                        </div>
                        <div class="at-list">
                            <div class="al-item">
                                <div class="al-pic">
                                    <img src="img/about/list-1.png" alt="">
                                </div>
                                <div class="al-text">
                                    <h5>Professionalism</h5>
                                    <p>
                                        Our team is committed to professionalism, ensuring a seamless and high-quality experience. From planning to execution, we deliver exceptional results with precision and creativity.
                                    </p>
                                </div>
                            </div>
                            <div class="al-item">
                                <div class="al-pic">
                                    <img src="img/about/list-2.png" alt="">
                                </div>
                                <div class="al-text">
                                    <h5>Individual approach</h5>
                                    <p>
                                       We believe in an individual approach, tailoring our photography and videography to match your unique vision. Every project is personalized to ensure stunning and meaningful results.
                                    </p>
                                </div>
                            </div>
                            <div class="al-item">
                                <div class="al-pic">
                                    <img src="img/about/list-3.png" alt="">
                                </div>
                                <div class="al-text">
                                    <h5>Flexible Schedule</h5>
                                    <p>
                                        We offer a flexible schedule to accommodate your needs, ensuring a hassle-free experience. Our team works around your availability to capture the perfect moments at the right time.
                                    </p>
                                </div>
                            </div>
                            <div class="al-item">
                                <div class="al-pic">
                                    <img src="img/about/list-4.png" alt="">
                                </div>
                                <div class="al-text">
                                    <h5>Experience</h5>
                                    <p>
                                        With years of experience in photography and videography, we bring creativity and expertise to every project. Our skilled team ensures high-quality results that exceed expectations.
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- About Section End -->

    <!-- Team Section Begin -->
    <section class="team-section spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6">
                    <div class="section-title">
                        <h2>Our team</h2>
                        <p>
                            Our team consists of passionate photographers, videographers, and editors dedicated to creating stunning visuals. With creativity and expertise, we bring your vision to life with perfection.
                        </p>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="right-btn">
                        <a href="Appointment.aspx" class="primary-btn">Appointment</a>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="team-item">
                        <img src="img/team/team-1.jpg" alt="">
                        <div class="ti-text">
                            <h5>Pritesh Zalavadiya</h5>
                            <span>Photographer</span>
                            <div class="ti-social">
                                <a href="#"><i class="fa fa-facebook"></i></a>
                                <a href="#"><i class="fa fa-twitter"></i></a>
                                <a href="#"><i class="fa fa-youtube-play"></i></a>
                                <a href="#"><i class="fa fa-instagram"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="team-item">
                        <img src="img/team/team-2.jpg" alt="">
                        <div class="ti-text">
                            <h5>Darshan Ramani</h5>
                            <span>Videographer</span>
                            <div class="ti-social">
                                <a href="#"><i class="fa fa-facebook"></i></a>
                                <a href="#"><i class="fa fa-twitter"></i></a>
                                <a href="#"><i class="fa fa-youtube-play"></i></a>
                                <a href="#"><i class="fa fa-instagram"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="team-item">
                        <img src="img/team/team-3.jpg" alt="">
                        <div class="ti-text">
                            <h5>Denish vaishnav</h5>
                            <span>Social Media Manager</span>
                            <div class="ti-social">
                                <a href="#"><i class="fa fa-facebook"></i></a>
                                <a href="#"><i class="fa fa-twitter"></i></a>
                                <a href="#"><i class="fa fa-youtube-play"></i></a>
                                <a href="#"><i class="fa fa-instagram"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="team-item">
                        <img src="img/team/team-4.jpg" alt="">
                        <div class="ti-text">
                            <h5>Parth Savanee</h5>
                            <span>Assistant</span>
                            <div class="ti-social">
                                <a href="#"><i class="fa fa-facebook"></i></a>
                                <a href="#"><i class="fa fa-twitter"></i></a>
                                <a href="#"><i class="fa fa-youtube-play"></i></a>
                                <a href="#"><i class="fa fa-instagram"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Team Section End -->

    <!-- Cta Section Begin -->
    <section class="cta-section spad set-bg" data-setbg="img/cta-bg.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="cta-text">
                        <h2>Wanna promote your brand?</h2>
                        <p>
                           Wanna promote your brand? We create high-quality visuals that enhance your brand’s identity and attract your <br />audience. Let us help you stand out with stunning photography and videography!
                        </p>
                        <a href="#" class="primary-btn">Contact us</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Cta Section End -->

    <!-- Testimoial Section Begin -->
    <section class="testimonial-section spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title">
                        <h2>What cilent say?</h2>
                        <p>What do our clients say? Their satisfaction speaks for itself! We take pride in delivering exceptional <br />photography and videography that exceeds expectations and creates lasting memories.
                        </p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="testimonial-item">
                        <div class="ti-author">
                            <div class="ta-pic">
                                <img src="img/testimonial/ta-1.jpg" alt="">
                            </div>
                            <div class="ta-text">
                                <h5>ANDREW FILDER</h5>
                                <span>@filder_muko</span>
                            </div>
                        </div>
                        <p>
                            ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore
                            et dolore magna aliqua.
                        </p>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="testimonial-item">
                        <div class="ti-author">
                            <div class="ta-pic">
                                <img src="img/testimonial/ta-2.jpg" alt="">
                            </div>
                            <div class="ta-text">
                                <h5>David Guetta</h5>
                                <span>@filder_muko</span>
                            </div>
                        </div>
                        <p>
                            ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore
                            et dolore magna aliqua.
                        </p>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="testimonial-item">
                        <div class="ti-author">
                            <div class="ta-pic">
                                <img src="img/testimonial/ta-3.jpg" alt="">
                            </div>
                            <div class="ta-text">
                                <h5>Bebe Rexha</h5>
                                <span>@filder_muko</span>
                            </div>
                        </div>
                        <p>
                            ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore
                            et dolore magna aliqua.
                        </p>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="testimonial-item">
                        <div class="ti-author">
                            <div class="ta-pic">
                                <img src="img/testimonial/ta-4.jpg" alt="">
                            </div>
                            <div class="ta-text">
                                <h5>Adam Levine</h5>
                                <span>@filder_muko</span>
                            </div>
                        </div>
                        <p>
                            ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore
                            et dolore magna aliqua.
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Testimonial Section End -->
</asp:Content>
