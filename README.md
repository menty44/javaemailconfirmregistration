# javaemailconfirmregistration

So many websites uses registration by email. Email registration is easy and economical also than registration with mobile phones. Now we will see how to do this stuff with Java, jQuery and MySQL.
Things which I have used
JDK 7
Tomcat 7
JQuery 
Bootstrap for jQuery
MySql
Eclipse

CREATE TABLE `demo_user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `email_verification_hash` varchar(45) DEFAULT NULL,
  `email_verification_attempts` int(11) DEFAULT NULL,
  `status` varchar(15) DEFAULT 'new',
  `created_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='User Table';

Flow of the program
User Enter Required details ( Email, Password...etc )
Create User Account, keep status as "new", create Account activation hash code
Send Account Activation Link with hash code to Registered Email
User will click on activation link. Now hash code will be submitted to server
Get the hash code from database. Check this hash code with User registered hash code
If hash code matches, Update User Account status as "active" , else Increment verification attempts by 1 
If verification attempts reaches 20, then regenerate verification code and resend activation link to user registered email
