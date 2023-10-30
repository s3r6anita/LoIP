window.onload = function (e) { addRowEventListeners() };
let priceses = 0;

function addRowEventListeners() {
    let rows = document.getElementById('product-table').getElementsByTagName('tr');
    let table_orders = document.getElementById('order-table');
    for (let i = 0; i < rows.length; i++) {
        rows[i].addEventListener('click', function(event){
            let tr = event.target.closest('tr');
            let tds = tr.getElementsByTagName('td');

            let label = tds[0].innerText;
            let price = parseInt(tds[1].innerText);
            priceses += price;


            let html = `
                <tr>
                    <td>`+label+`</td>
                    <td>`+price+`</td>                    
                </tr>
            `;
            table_orders.innerHTML = html + table_orders.innerHTML;



        });
    }

    document.getElementById('calc').addEventListener('click', calcTotalPrice);

}

function calcTotalPrice() {
    alert('Всего: '+priceses);
}