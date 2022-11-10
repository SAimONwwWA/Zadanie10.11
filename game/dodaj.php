<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styl1.css">
    <title>Baza</title>
</head>
<body id="bd">
    <div id="pj">
        <img src="logox.png">
    </div>
<div id="php">

    <br>
<?php

$vtytul=$_POST['tytul'];
echo $vtytul;
$vgatunek=$_POST['gatunki_id'];
echo $vgatunek;
$vrok=$_POST['rok'];
echo $vrok;
$vocena=$_POST['ocena'];
echo $vocena;

$query= "INSERT into gry (tytul, gatunki_id, rok, ocena) VALUES ('$vtytul', '$vgatunek' ,'$vrok', '$vocena')";
$conn=mysqli_connect('localhost','root','','game');
if ($conn){
    echo " :Gra została dodana do Bazy danych.";
    mysqli_query($conn,$query);
}
else {
    echo "Błąd";
}


mysqli_close($conn);
?>
    <ul class="menu">
        <a href="http://localhost/game/index.html"><li>Powrót do Strony</li></a>
        <a href="http://localhost/phpmyadmin/index.php?route=/sql&db=game&table=gry&pos=0"><li>Baza Danych</li></a>
      </ul>

<?php
$conn=mysqli_connect('localhost','root','','game');
$z1=mysqli_query($conn,'select * from gry');
echo "<p>Gry które są już w Bazie
<br>Tytuł | Rok | Ocena</p>";
$il_wierszy=mysqli_num_rows($z1);

for($i=0;$i<$il_wierszy;$i++){
    $result=mysqli_fetch_array($z1);
echo "<tr><b>".$result['tytul']."</tr>".'</b>,'.$result['rok'].','.$result['ocena'].'<br></tr>';

}echo"</table>";



mysqli_close($conn);
?>
</div>
</body>
</html>