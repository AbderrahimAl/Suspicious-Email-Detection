<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<title>Composer un E-mail</title>
	<link rel="stylesheet" type="text/css" href="lahsen2.css">
</head>
<body>
	<a href="/Suspicious-Email-Detection/dashbord.jsp">Se déconnecter</a>
	<section>
		<a href="/Suspicious-Email-Detection/compose.jsp" target="_self">Composer un E-mail</a><br><br>
		<a href="inbox.html" target="_self">Boîte de réception</a><br><br>
		<a href="outbox.html" target="_self">Boîte d'envoi</a><br><br>
	</section>
	<form>
		<label>À :</label>
		<input type="email" name="to" required><br><br>
		<label>De :</label>
		<input type="email" name="from" required><br><br>
		<label>Objet : </label>
		<input type="text" name="subject"><br><br>
		<label>Message :</label>
		<textarea name="message" placeholder="Ecrivez votre message ici ..."></textarea><br><br>
		<button style="background-color: saddlebrown; color: white;">Envoyer</button>
	</form><br><br>
</body>
</html>