counter = 0;
function traversal(element) {
    let list = document.getElementById("list-0");
    if (element.nodeType != 3) {
        console.log(element.nodeName);
        let li = document.createElement("li");
        li.setAttribute("class", "new");
        li.innerHTML = element.nodeName;
        list.appendChild(li);
    }
    for (let i = 0; i < element.childNodes.length; i++) {
        if (element.childNodes[i].className != "new") {
            traversal(element.childNodes[i]);
        }
    }
}

window.onload = function (e) { traversal(document) };