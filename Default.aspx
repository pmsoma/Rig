<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SoilRigs._Default" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <script src="Scripts/jquery-1.4.2.min.js"></script>

    <script>
        $(window).load(function () {
            var pages = $('#container li'), current = 0;
            var currentPage, nextPage;
            var timeoutID;
            var buttonClicked = 0;

            var handler1 = function () {
                buttonClicked = 1;
                $('#container .button').unbind('click');
                currentPage = pages.eq(current);
                if ($(this).hasClass('prevButton')) {
                    if (current <= 0)
                        current = pages.length - 1;
                    else
                        current = current - 1;
                }
                else {

                    if (current >= pages.length - 1)
                        current = 0;
                    else
                        current = current + 1;
                }
                nextPage = pages.eq(current);
                currentPage.fadeTo('slow', 0.3, function () {
                    nextPage.fadeIn('slow', function () {
                        nextPage.css("opacity", 1);
                        currentPage.hide();
                        currentPage.css("opacity", 1);
                        $('#container .button').bind('click', handler1);
                    });
                });
            }

            var handler2 = function () {
                if (buttonClicked == 0) {
                    $('#container .button').unbind('click');
                    currentPage = pages.eq(current);
                    if (current >= pages.length - 1)
                        current = 0;
                    else
                        current = current + 1;
                    nextPage = pages.eq(current);
                    currentPage.fadeTo('slow', 0.3, function () {
                        nextPage.fadeIn('slow', function () {
                            nextPage.css("opacity", 1);
                            currentPage.hide();
                            currentPage.css("opacity", 1);
                            $('#container .button').bind('click', handler1);
                        });
                    });
                    timeoutID = setTimeout(function () {
                        handler2();
                    }, 8000);
                }
            }

            $('#container .button').click(function () {
                clearTimeout(timeoutID);
                handler1();
            });

            timeoutID = setTimeout(function () {
                handler2();
            }, 4000);

        });

    </script>
    <style>
        /* * {
            margin: 0;
            padding: 0;
        }*/

        #container {
            width: 604px;
            height: 500px;
            position: relative;
            margin: 0 auto;
            padding: 0;
            margin-top: 50px;
        }

            #container ul {
                width: 604px;
                height: 453px;
                list-style: none outside none;
                position: relative;
                overflow: hidden;
            }

            #container li:first-child {
                display: list-item;
                position: absolute;
            }

            #container li {
                position: absolute;
                display: none;
            }
            #container li img {
                margin-left: -50px;
                width: 604px;
                height: 453px;
            }
    </style>
    <div id="container">
        <ul>
            <li>
                <img src="Content/images/mobile/1.jpg" alt="Soil Rigs" /></li>
            <li>
                <img src="Content/images/mobile/2.png" alt="Soil Rigs" /></li>
            <li>
                <img src="Content/images/mobile/4.jpg" alt="Soil Rigs" /></li>
            <li>
                <img src="Content/images/mobile/5.png" alt="Soil Rigs" /></li>
        </ul>
        <span class="button prevButton"></span>
        <span class="button nextButton"></span>
    </div>

    <div id="body1">
        <div class="footer">
            <div class="sidebar">
                <h1>Products Gallery</h1>
                <ul>
                    <li><a href="BorewellVehicle.aspx"><span></span>Borewell Rig Vehicles</a></li>
                    <li><a href="SupportVechicle.aspx"><span></span>Support Vehicles</a></li>
                    <li><a href="Pumps.aspx"><span></span>Pumps</a></li>
                    <li><a href="PVCpipes.aspx"><span></span>PVC Pipes</a></li>
                    <li><a href="DrillingAccessories.aspx"><span></span>Drilling Accessories</a></li>
                </ul>
            </div>
            <div class="article">
                <h1>Welcome to Soil Rigs</h1>
                <img src="Content/images/home1.png" alt="Soil Rigs" />
                <p>
                    <b>Profile:</b> Soil Rigs is into manufacturing of Pneumatic & Hydraulic Drill Rigs and related products. Over the period of five years. The export is based to African Countries.
                    <a href="Profile.aspx">Read More...</a>
                </p>
                <br />
                <img src="Content/images/home2.jpg" alt="Soil Rigs" />
                <p>
                    <b>Quality:</b> Our high quality products are combined with superior customer support. These products are tested to confirm our quality assurance practices.
                    <a href="Quality.aspx">Read More...</a>
                </p>
                <br />
                <br />
                <img src="Content/images/home3.jpg" alt="Soil Rigs" />
                <p>
                    <b>Facilities:</b> Have a virutual tour to visit our productation and manufac-turing facilities of the our office and company premises.
                    <a href="Facilities.aspx">Read More...</a>
                </p>

            </div>
        </div>
    </div>

</asp:Content>
