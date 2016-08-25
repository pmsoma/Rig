<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="SoilRigs.Products" %>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <div id="body1">
        <div class="header">
            <div>
                <h1>Our Products</h1>
            </div>
        </div>
        <div class="singlepost">
            <div class="featured">
                <p>Our high quality products are combined with superior customer support. These products are tested to confirm our quality assurance practices. Please take a closer look at our products and its specifications. Our product portfolio include Pneumatic Rigs, Hydralic fishing tools, slush pumps, Submersible Pumps, Air Compressors, Hammer and Drill Bits, Hand Pumps, Accessories and finishing tools.</p>
                <p>Our wide-range of products are ideal for geophysical surveys, water well and core drilling applications, drilling mud & cement slurry, sewerage handling, boiler feed, water supply and handling crude oil.</p>

                <div id="list5">
                    <h1>Soil Rigs Products</h1>
                    <ol>
                        <li><a href="BorewellVehicle.aspx">Borewell Rig Vehicles </a>
                            <ol>
                                <li>Trucks, Tractors</li>
                            </ol>
                        </li>
                        <li><a href="SupportVechicle.aspx">Support Vehicles</a>
                            <ol>
                                <li>With Deisel and Water Tanks</li>
                            </ol>
                        </li>
                        <li><a href="Pumps.aspx">Pumps </a>
                            <ol>
                                <li>Hand Pump</li>
                                <li>Submercible Pumps</li>
                                <li>Domestic / Monoblocks</li>
                                <li>Industrial Engines</li>
                                <li>Air Screw Compressors</li>
                                <li>Centrifugal Pumps</li>
                                <li>Mud Pumps</li>
                            </ol>
                        </li>
                        <li><a href="PVCpipes.aspx">PVC PIPES</a>
                            <ol>
                                <li>UPVC Casing Pipes (4", 6" Pipes)</li>
                                <li>UPVC Screen (Slotted) Pipes (4", 6" Pipes)</li>
                                <li>Suction Hose Pipes</li>
                            </ol>
                        </li>
                        <li><a href="DrillingAccessories.aspx">Drilling Accessories</a>
                            <ol>
                                <li>DTH Drilling Rigs</li>
                                <li>DTH Hammers</li>
                                <li>Rods</li>
                                <li>Bits</li>
                                <li>Button Bits</li>
                                <li>Hydralic Hoses</li>
                            </ol>
                        </li>
                    </ol>
                </div>

            </div>
            <div class="sidebar">
                <h1>Recent Products</h1>
                <ul><li><img src="Content/images/prodleft_01.jpg" alt="Soil Rigs"></li>
                    <li><img src="Content/images/prodleft_02.jpg" alt="Soil Rigs"></li>
                    <li><img src="Content/images/prodleft_03.jpg" alt="Soil Rigs"></li>
                    <li><img src="Content/images/prodleft_04.jpg" alt="Soil Rigs"></li>
                    <li><img src="Content/images/prodleft_05.jpg" alt="Soil Rigs"></li>
                </ul>
              
            </div>
        </div>
    </div>
    <style>
        /* LIST #5 */
        #list5 {
            color: #000;
        }

            #list5 ol {
                font-size: 17px;
            }

                #list5 ol li {
                }

                #list5 ol li a {
                    color: #000000;
                    text-decoration: underline;
                }

                    #list5 ol li ol {
                        padding: 10px 0 5px 18px;
                        font-size: 17px;
                    }

                        #list5 ol li ol li {
                            color: #2E2E2E;
                            padding: 1px 0 10px 0;
                            height: 15px;
                            margin-left: 10px;
                        }
    </style>
</asp:Content>
