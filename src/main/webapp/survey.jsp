<%@ include file="/includes/header.html" %> 

	<div class="homepage">
		<a href="https://group3-wp-upload.netlify.app/"><i class="fab fa-gg"></i></a>
	</div>
	
	<div id="container">
	    <h1 class="title">Survey</h1>
	    <p>If you have a moment, we'd appreciate it if you would fill out this survey.</p>
	    
		<form action="survey" method="post">
		    <input type="hidden" name="action" value="add">
		    
		    <div class="user-details">
                <h2>Your information:</h2>
                <div class="input-box">
                    <label>Email</label>
                    <input type="email" name="email" placeholder="Enter your Email" required><br>
                </div>
                <div class="input-box">
                    <label>First Name</label>
                    <input type="text" name="firstName" placeholder="Enter your First name" required><br>
                </div>
                <div class="input-box">
                    <label>Last Name</label>
                    <input type="text" name="lastName" placeholder="Enter your Last name" required><br>
                </div>
            </div>
            
		    <div class="heard-from">
                <h2>How did you hear about us?</h2>
                <input type=radio name="heardFrom" id="dot-1" value="Search Engine">
                <input type=radio name="heardFrom" id="dot-2" value="Friend">
                <input type=radio name="heardFrom" id="dot-3" value="Other">
                <div class="category">
                    <label for="dot-1">
                        <span class="dot one"></span>
                        <span class="from">Search engine</span>
                    </label>
                    <label for="dot-2">
                        <span class="dot two"></span>
                        <span class="from">Word of mouth</span>
                    </label>
                    <label for="dot-3">
                        <span class="dot three"></span>
                        <span class="from">Other</span>
                    </label>
                </div>
            </div>
		
		    <div class="want-update">
                <h2>Would you like to receive announcements about new CDs and special offers?</h2>
		        <input type="checkbox" name="wantsUpdates" id="check-update" checked>
                <div class="cover">
                    <label for="check-update">
                        <span class="box"></span>
                        <span class="box-message">YES, I'd like that.</span>
                    </label>
                </div>
            </div>
		
		    <div class="contact-via">
                <p>Please contact me by:</p>
                <select name="contactVia">
                    <option value="Both" selected>Email or postal mail</option>
                    <option value="Email">Email only</option>
                    <option value="Postal Mail">Postal mail only</option>
                </select>                
            </div>
		
		    <div class="submit-btn">
                <input type="submit" value="Submit">
            </div>
		</form>
		
		<form action="emailList" method="post">
            <div class="return-email">
                <input type="hidden" name="action" value="join">
                <input type="submit" value="Return">
            </div>
		</form>
	</div>	
	
<%@ include file="/includes/footer.jsp" %> 