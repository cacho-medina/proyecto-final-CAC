
//elementos
const nombre = document.getElementById("nombre");
const apellido = document.getElementById("apellido");
const email = document.getElementById("email");
const cantidad = document.getElementById("cantidad");
const categoria = document.getElementById("categoria");

function crearTicket() {
    mostrarPrecio();
    //alert("TICKET GENERADO");
    setTimeout(()=>{},3000);
    Swal.fire({
        icon: "success",
        title: "Ticket generado",
        showConfirmButton: false,
        timer: 1500,
    });
}

const calcularPrecio = () => {
    const importe = 200;
    let descuento;
    let valorFinal;
    switch(categoria.value) {
				case 1:
					descuento = 0.8;
					break;
				case 2:
					descuento = 0.5;
					break;
				case 3:
					descuento = 0.015;
					break;
				default:
					descuento = 1;
					break;
	}
	valorFinal = cantidad.value * (200 * descuento);
	return valorFinal;
};

const mostrarPrecio = () => {
    const precio = document.getElementById("precio");
    precio.innerText += calcularPrecio();
};