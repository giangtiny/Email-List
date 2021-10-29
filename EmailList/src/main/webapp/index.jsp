<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/includes/header.html" %> 

	<div class="homepage">
		<a href="https://group3-wp-upload.netlify.app/"><i class="fab fa-gg"></i></a>
	</div>

	<div id="container">
		<h1 class="title">Join our email list</h1>
		<p>To join our email list, enter your name and email address below.</p>
	
		<c:if test="${message != null}">
		    <p><i>${message}</i></p>
		</c:if>
	
		<form action="emailList" method="post">
		
			<input type="hidden" name="action" value="add">
		    
		    <div class="user-details">
                <h2>Your information:</h2>
                <div class="input-box">
                    <label>Email</label>
                    <input type="email" name="email" value="${user.email}" placeholder="Enter your Email" required><br>
                </div>
                <div class="input-box">
                    <label>First Name</label>
                    <input type="text" name="firstName" value="${user.firstName}" placeholder="Enter your First name" required><br>
                </div>
                <div class="input-box">
                    <label>Last Name</label>
                    <input type="text" name="lastName" value="${user.lastName}" placeholder="Enter your Last name" required><br>
                </div>
            </div>
            
            <div class="submit-btn">
                <input type="submit" value="Join Now">
            </div>
		</form>
		
		<form action="survey" method="post">
			<div class="do-survey">
				<input type="hidden" name="action" value="join">
				<input type="submit" value="Do a Survey">
			</div>
		</form>
	</div>

	<style>
		body {
		    display: flex;
		    height: 100vh;
		    justify-content: center;
		    align-items: center;
		    flex-direction: column;
		}
	
		.do-survey input[type="submit"] {
		  outline: none;
		  border: none;
		  background: transparent;
		  font-size: 17px;
		  text-decoration: underline;
		  color: #e25a17;
		}

		.do-survey input[type="submit"]:hover {
		  cursor: pointer;
		  opacity: 0.8;
		}
	</style>
	
<%@ include file="/includes/footer.jsp" %> 