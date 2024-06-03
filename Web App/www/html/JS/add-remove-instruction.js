const addIns = document.querySelector(".addInstruction");
const divIns = document.querySelector(".moreInstruction");

function removeIns(){
    this.parentElement.remove();
}

function addInstruction(){
    const instruction = document.createElement("input");
    instruction.type = "text";
    instruction.name = "instruction[]"
    instruction.className = "form-control";
    instruction.placeholder = "Write another instruction";
    instruction.setAttribute('required', 'required');

    const deleteIns = document.createElement("button");
    deleteIns.innerHTML = "X";
    deleteIns.addEventListener("click", removeIns);

    const flexIns = document.createElement("div");
    flexIns.className = "flex";

    divIns.appendChild(flexIns);
    flexIns.appendChild(instruction);
    flexIns.appendChild(deleteIns);
 
}   

addIns.addEventListener("click", addInstruction);
