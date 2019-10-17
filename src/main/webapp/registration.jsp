<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>


<!DOCTYPE html>
<html lang="en">
<head>
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />

        <title>Register</title>

        <!-- GOOGLE FONTS -->
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,500|Poppins:400,500,600,700|Roboto:400,500" rel="stylesheet"/>
        <link href="https://cdn.materialdesignicons.com/3.0.39/css/materialdesignicons.min.css" rel="stylesheet" />

        <!-- PLUGINS CSS STYLE -->
        <link href="${contextPath}/resources/assets/plugins/toaster/toastr.min.css" rel="stylesheet" />
        <link href="${contextPath}/resources/assets/plugins/nprogress/nprogress.css" rel="stylesheet" />
        <link href="${contextPath}/resources/assets/plugins/flag-icons/css/flag-icon.min.css" rel="stylesheet"/>
        <link href="${contextPath}/resources/assets/plugins/jvectormap/jquery-jvectormap-2.0.3.css" rel="stylesheet" />
        <link href="${contextPath}/resources/assets/plugins/ladda/ladda.min.css" rel="stylesheet" />
        <link href="${contextPath}/resources/assets/plugins/select2/css/select2.min.css" rel="stylesheet" />
        <link href="${contextPath}/resources/assets/plugins/daterangepicker/daterangepicker.css" rel="stylesheet" />

        <!-- SLEEK CSS -->
        <link id="sleek-css" rel="stylesheet" href="${contextPath}/resources/assets/css/sleek.css" />



        <!-- FAVICON -->
        <link href="${contextPath}/resources/assets/img/favicon.png" rel="shortcut icon" />

        <!--
          HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries
        -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
        <script src="${contextPath}/resources/assets/plugins/nprogress/nprogress.js"></script>
    </head>

</head>
<body class="bg-light-gray" id="body">
<div class="container d-flex flex-column justify-content-between vh-100">
    <div class="row justify-content-center mt-5">
        <div class="col-xl-5 col-lg-6 col-md-10">
            <div class="card">
                <div class="card-header bg-primary">
                    <div class="app-brand">
                        <a href="/index.html">
                            <svg class="brand-icon" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid" width="30"
                                 height="33" viewBox="0 0 30 33">
                                <g fill="none" fill-rule="evenodd">
                                    <path class="logo-fill-blue" fill="#7DBCFF" d="M0 4v25l8 4V0zM22 4v25l8 4V0z" />
                                    <path class="logo-fill-white" fill="#FFF" d="M11 4v25l8 4V0z" />
                                </g>
                            </svg>
                            <span class="brand-name">Create a new account</span>
                        </a>
                    </div>
                </div>
                <div class="card-body p-5">
                    <h4 class="text-dark mb-5"></h4>

                    <form:form method="POST" modelAttribute="userForm" class="form-signin">
                        <h2 class="form-signin-heading">Create your account</h2>
                        <spring:bind path="name">
                            <div class="form-group col-md-12 mb-4">
                                <form:input path="name" type="text" class="form-control input-lg" id="name" aria-describedby="nameHelp" placeholder="name"></form:input>
                            </div>
                        </spring:bind>
                        <spring:bind path="username">
                            <div class="form-group col-md-12 mb-4 ${status.error ? 'has-error' : ''}">
                                <form:input type="text" path="username" class="form-control" placeholder="Username"
                                            autofocus="true"></form:input>
                                <form:errors path="username"></form:errors>
                            </div>
                        </spring:bind>

                        <spring:bind path="password">
                            <div class="form-group col-md-12 mb-4 ${status.error ? 'has-error' : ''}">
                                <form:input type="password" path="password" class="form-control" placeholder="Password"></form:input>
                                <form:errors path="password"></form:errors>
                            </div>
                        </spring:bind>

                        <spring:bind path="passwordConfirm">
                            <div class="form-group col-md-12 mb-4 ${status.error ? 'has-error' : ''}">
                                <form:input type="password" path="passwordConfirm" class="form-control"
                                            placeholder="Confirm your password"></form:input>
                                <form:errors path="passwordConfirm"></form:errors>
                            </div>
                        </spring:bind>
                        <spring:bind path="email">
                        <div class="form-group col-md-12 mb-4">
                            <form:input path="email" type="email" class="form-control input-lg" id="email" aria-describedby="emailHelp" placeholder="email"></form:input>
                        </div>
                        </spring:bind>
                        <spring:bind path="phone">
                        <div class="form-group col-md-12 mb-4">
                            <form:input  path="phone" type="text" class="form-control input-lg" id="phone" aria-describedby="emailHelp" placeholder="phone"></form:input>
                        </div>
                        </spring:bind>
                        <spring:bind path="bornDate">
                            <div class="form-group col-md-12 mb-4">
                                <form:input path="bornDate" type="text" class="form-control input-lg" id="phone" aria-describedby="emailHelp" placeholder="phone"></form:input>
                            </div>
                        </spring:bind>
                        <button class="btn btn-lg btn-primary btn-block" type="submit">Submit</button>
                    </form:form>




                </div>
            </div>
        </div>
    </div>
    <div class="copyright pl-0">
        <p class="text-center">&copy; 2019 Copyright Nutrition Fact Detector app by
            <a class="text-primary" href="http://www.ensias.ma/" target="_blank">ENSIAS</a> students.
        </p>
    </div>
</div>
</body>
</html>


