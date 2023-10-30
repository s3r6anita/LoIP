function showMsg() {
	// alert("Hello, push the button please")
  copyText = document.getElementById("t1");
  document.getElementById("p1").innerHTML = copyText.value;
}

function createEl() {
	copyText = document.getElementById("t1").value;
	elem = document.createElement("p");
	elem.innerHTML = copyText;
	// a = new Array("blue", "green", "red");
	elem.setAttribute("style", "color: red")
	document.body.appendChild(elem);
  	elem.setAttribute("onclick", "remove(this)")
}

function remove(element) {
	element.remove();


async function getData() {
	fetch("www.ya.ru").then((response) => console.log(response)).then((data) => alert(data)).then((error) => log_to_metrics(error))
}