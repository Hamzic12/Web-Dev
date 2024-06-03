const addIng = document.querySelector(".addIngredient");
const divIng = document.querySelector(".moreIngredient");

function removeIng(){
    this.parentElement.remove();
}

function addIngredient(){
    const ingredient = document.createElement("input");
    ingredient.type = "text";
    ingredient.name = "ingredient[]"
    ingredient.className = "form-control";
    ingredient.placeholder = "Write another ingredient";
    ingredient.setAttribute('required', 'required');

    const deleteIng = document.createElement("button");
    deleteIng.innerHTML = "X";
    deleteIng.addEventListener("click", removeIng);

    const flexIng = document.createElement("div");
    flexIng.className = "flex";

    divIng.appendChild(flexIng);
    flexIng.appendChild(ingredient);
    flexIng.appendChild(deleteIng);
}

addIng.addEventListener("click", addIngredient);
