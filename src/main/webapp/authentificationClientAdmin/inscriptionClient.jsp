<!DOCTYPE html>
<html>
    <head>
        <title>Inscription Client</title>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
        <%@page contentType="text/html" pageEncoding="UTF-8"%>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
        <style type="text/css">
            .login-form {
                width: 500px;
                margin: 50px auto;
            }
            .login-form form {
                margin-bottom: 15px;
                background: #f7f7f7;
                box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
                padding: 30px;
            }
            .login-form h2 {
                margin: 0 0 15px;
            }
            .form-control, .btn {
                min-height: 38px;
                border-radius: 2px;
            }
            .btn {        
                font-size: 15px;
                font-weight: bold;
            }
        </style>
    </head>
    <body>
        <div class="login-form">
            <form action="inscriptionClientDb.jsp" method="post">
                <h2 class="text-center"> Inscription </h2>

                <div class="form-group">
                    <label for="nom"> Nom : </label>
                    <input type="text" name="nom" class="form-control" id="nom"/>
                </div> 
                <div class="form-group">
                    <label for="prenom"> Prenom : </label>
                    <input type="text" name="prenom" class="form-control" id="prenom"/>
                </div> 
                <div class="form-group">
                    <label for="email"> Email : </label>
                    <input type="email" name="email" class="form-control" id="email"/>
                </div> 
                <div class="form-group">
                    <label for="adresse"> Adresse : </label>
                    <input type="text" name="adresse" class="form-control" id="adresse"/>
                </div> 
                <div class="form-group">
                    <label for="pwd"> Mot de passe : </label>
                    <input type="password" name="password" class="form-control" id="pwd"/> 
                </div> 
                <div class="form-group">
                    <label for="confirmPass"> Confirmation : </label>
                    <input type="password" name="confirmPass" class="form-control" id="confirmPass"/> 
                </div> 

                <div class="form-group">
                    <input type="submit" value=" Enregistrer " class="btn btn-primary btn-block" />
                </div> 
                <div class="form-group">
                    <input type="reset" value="Reinitialiser" class="btn btn-primary btn-block" />
                </div> 

                <font color="red">
                <c:if test="${not empty param.errMsg}">
                    <c:out value="${param.errMsg}" />
                </c:if>
                </font>
                <font color="green">
                <c:if test="${not empty param.susMsg}">
                    <c:out value="${param.susMsg}" /> 
                    <a href="authentificationClient.jsp"> Connectez-vous </a>
                </c:if>
                </font>
            </form>
        </div> 
    </body>
</html>
