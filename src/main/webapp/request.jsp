<%--
  Created by IntelliJ IDEA.
  User: FengTianci
  Date: 2023/1/25
  Time: 7:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <!-- https://blog.hubspot.com/website/html-form-template -->
    <meta charset="UTF-8">
    <link rel="stylesheet"  href="css/style1.css">
    <%--<script src="RequestTicket.js"></script>--%>
    <title>Request Ticket</title>
</head>

<body>

<div class="container_request">

    <form class="well form-horizontal" action="/easy/addServlet" method="post"  id="contact_form">
        <fieldset>

            <!-- Form Name -->
            <legend class="legend_request">Request your ticket now!</legend>
            <div id="tMsg">${add_msg}</div>

            <!-- Text input-->

            <div class="form-group">
                <label class="col-md-4 control-label">First Name</label>
                <div class="col-md-4 inputGroupContainer">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                        <input  name="firstName" placeholder="First Name" class="form-control"  type="text">
                    </div>
                </div>
            </div>

            <!-- Text input-->

            <div class="form-group">
                <label class="col-md-4 control-label" >Last Name</label>
                <div class="col-md-4 inputGroupContainer">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                        <input name="lastName" placeholder="Last Name" class="form-control"  type="text">
                    </div>
                </div>
            </div>

            <!-- Text input-->
            <div class="form-group">
                <label class="col-md-4 control-label">E-Mail</label>
                <div class="col-md-4 inputGroupContainer">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
                        <input name="email" placeholder="E-Mail Address" class="form-control"  type="text">
                    </div>
                </div>
            </div>


            <!-- Text input-->

            <div class="form-group">
                <label class="col-md-4 control-label">Phone #</label>
                <div class="col-md-4 inputGroupContainer">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
                        <input name="phone" placeholder="(60)xx-xxxxxxxx" class="form-control" type="text">
                    </div>
                </div>
            </div>

            <!-- Text input-->

            <div class="form-group">
                <label class="col-md-4 control-label">Floor Unit</label>
                <div class="col-md-4 inputGroupContainer">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
                        <input name="floorUnit" placeholder="A3-20" class="form-control" type="text">
                    </div>
                </div>
            </div>


            <!-- Select Basic -->

            <div class="form-group">
                <label class="col-md-4 control-label">Category</label>
                <div class="col-md-4 selectContainer">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-list"></i></span>
                        <select name="category" class="form-control selectpicker" >
                            <option value="category" >Select category</option>
                            <option>Fans</option>
                            <option>Key</option>
                            <option >Table Lamp</option>
                            <option >Celling Lamp</option>
                            <option >Wardrobe</option>
                            <option >Room</option>
                            <option >Washroom</option>
                            <option >Pantry</option>
                            <option >Corridor</option>
                            <option> Others</option>

                        </select>
                    </div>
                </div>
            </div>


            <!-- Text input-->
            <div class="form-group">
                <label class="col-md-4 control-label">Date of issue occurrence</label>
                <div class="col-md-4 inputGroupContainer">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-globe"></i></span>
                        <input type="date" id="1" name="date" value="yyyy-month-date">
                    </div>
                </div>
            </div>


            <!-- Text area -->

            <div class="form-group">
                <label class="col-md-4 control-label">Description</label>
                <div class="col-md-4 inputGroupContainer">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-pencil"></i></span>
                        <textarea class="form-control-last" name="description" placeholder="Description"></textarea>
                    </div>
                </div>
            </div>

            <!-- Success message -->
            <!-- <div class="alert alert-success" role="alert" id="success_message">Success <i class="glyphicon glyphicon-thumbs-up"></i> Thanks for contacting us, we will get back to you shortly.</div>-->

            <!-- Button -->
            <div class="form-group">
                <label class="col-md-4 control-label"></label>
                <div class="col-md-4">
                    <button type="submit" class="btn btn-warning" >Submit <span class="glyphicon glyphicon-send"></span></button>
                </div>
            </div>

        </fieldset>
    </form>
</div>
</div><!-- /.container -->

</body>
</html>
