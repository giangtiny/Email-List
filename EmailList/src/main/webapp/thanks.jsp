<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/includes/header.html" %> 
	
	<div class="homepage">
		<a href="https://group3-wp-upload.netlify.app/"><i class="fab fa-gg"></i></a>
	</div>
	
	<div id="container">
        <h1 class="title">Thanks for joining our email list!</h1>        
        <p>Here is the information that you entered:</p>

        <div class="user-info">
            <div class="detail">
                <label>Email:</label>
                <span>${user.email}</span><br>
            </div>
            <div class="detail">
                <label>First Name:</label>
                <span>${user.firstName}</span><br>
            </div>
            <div class="detail">
                <label>Last Name:</label>
                <span>${user.lastName}</span><br>
            </div>
        </div>
        
        <p>To enter another email address, click on the Back 
        button in your browser or the Return button shown 
        below.</p>
        
        <form action="emailList" method="post">
            <div class="return-email">
                <input type="hidden" name="action" value="join">
                <input type="submit" value="Return">
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

        .user-info {
            padding: 15px 0;
        }

        .user-info label {
            float: left;
            width: 7em;
            background: -webkit-linear-gradient(#e25a17, #d52567, #c142a7, #a62ac2);
		    -webkit-background-clip: text;
		    -webkit-text-fill-color: transparent;
        }

        .user-info .detail {
            padding: 5px 0;
        }
	</style>
<%@ include file="/includes/footer.jsp" %> 