function post (){
  const priceInput = document.getElementById("item-price");
  priceInput.addEventListener("input", (e) => {
    const inputValue = priceInput.value;
    const addTaxDom = document.getElementById("add-tax-price");
    const addTax = Math.floor (inputValue * 0.1)
    addTaxDom.innerHTML = addTax
    const Profit = document.getElementById("profit")
    Profit.innerHTML = Math.floor (inputValue - addTax)
    e.preventDefault();
  });
};

window.addEventListener('load', post);