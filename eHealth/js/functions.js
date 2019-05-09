function getXMLHTTP()
{
  var xmlhttp;
  
  if (window.XMLHttpRequest)
  {// code for IE7+, Firefox, Chrome, Opera, Safari
    xmlhttp=new XMLHttpRequest();
  }
  else
  {// code for IE6, IE5
    xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
  }
  return xmlhttp;
}

function showHome() {
  var xmlhttp = getXMLHTTP();  /*Crea un objecte XMLHttpRequest per dur a terme la crida asíncrona al servidor*/
  /* Que fer quan es rep la resposta assincrona del servidor */
  xmlhttp.onreadystatechange = function(){
  if(xmlhttp.readyState == 4 && xmlhttp.status == 200){
      document.getElementById("main").innerHTML = xmlhttp.responseText; 
  }
  }
  xmlhttp.open("GET","controllers/controllerBody.php", true);
  xmlhttp.send();
}