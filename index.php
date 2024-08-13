<?php

// Paramètres de connexion
$host = "db";
$user = "username";
$pass = "password";
$db = "artists";

// Création de la connexion à la Bdd MySQL
$conn = new mysqli($host, $user, $pass, $db);

// Vérification de la connexion
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT * FROM MusicTitles ORDER BY id";
$result = $conn->query($sql);

echo "<style>"
. "table, th, td { border: 1px solid black; }"
. "table { border-collapse: collapse; }"
. "th, td { padding: 10px; }"
. "th { text-align: left; }"
. "table { width: 100%; }"
. "body { font-family: Arial, sans-serif; height: 100vh; display: flex; flex-direction: column; justify-content: center; align-items: center; }"
. "</style>"
. "<table>"
. "<tr><th>ID</th><th>Title</th><th>Artist</th><th>Year</th></tr>";

echo "<h1>Table MusicTitles</h1>";
while ($row = $result->fetch_assoc()) {
    echo "<tr><td>" . $row["id"] . "</td><td>" . $row["title"] . "</td><td>" . $row["artist"] . "</td><td>" . $row["year"] . "</td></tr>";
}

echo "</table>";

// Fermeture de la connexion
$conn->close();
?>
