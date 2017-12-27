var urlWS = "";
$(document).ready(function () {
    urlWS = "http://tiagolex.byethost7.com/server";
    crearTablaKendo();
});

function crearTablaKendo() {
    $("#tablaKendo").kendoGrid({
        dataSource: {
            pageSize: 5,
            transport: {
                read: {
                    url: urlWS + "/tipoemoji/leer",
                    dataType: "json"
                }
            }
        },
        columns: [
            { field: "idTipo", title: "Id" },
            { field: "tipo", title: "Tipo de Emoji" }
        ],
        pageable: true,
        selectable: true,
        filterable: {
            mode: "row",
            extra: false,
            operators: {
                String: {
                    contains: "Contains"
                }
            }
        },
        change: itemSeleccionado
    });
}

function itemSeleccionado() {
    var datos = $("#tablaKendo").data("kendoGrid");
    var selectedItem = datos.dataItem(datos.select());
    alert('El tipo de emoticon es el numero ' + selectedItem.idTipo + ' y es de tipo : ' + selectedItem.tipo);
}

function limpiar() {
    document.getElementById("idTipo").value = "";
    document.getElementById("tipo").value = "";
}

function leer() {
    crearTablaKendo();
}

function borrar() {
    idTipo = document.getElementById("idTipo").value;
    urltorequest = urlWS + "/tipoemoji/borrar?idTipo=" + idTipo;
    $.ajax({
        type: "get",
        url: urltorequest,
        async: false,
        success: function (respuesta) {
            if (respuesta == "false") {
                alert("Error al borrar el registro " + idTipo + ".");
            } else {
                alert("Registro borrado: " + idTipo + ".");
            }
        }
    });
    leer();
}

function crear() {
    idTipo = document.getElementById("idTipo").value;
    tipo = document.getElementById("tipo").value;
    urltorequest = urlWS + "/tipoemoji/crear";
    $.ajax({
        type: "post",
        url: urltorequest,
        data: JSON.stringify({ idTipo: idTipo, tipo: tipo }),
        async: false,
        success: function (respuesta) {
            if (respuesta == "false") {
                alert("Error al crear el registro");
            } else {
                alert("Registro creado.");
            }
        }
    });
    leer();
}

function actualizar() {
    idTipo = document.getElementById("idTipo").value;
    tipo = document.getElementById("tipo").value;
    urltorequest = urlWS + "/tipoemoji/actualizar";
    $.ajax({
        type: "post",
        url: urltorequest,
        data: JSON.stringify({ idTipo: idTipo, tipo: tipo }),
        async: false,
        success: function (respuesta) {
            if (respuesta == "false") {
                alert("Error al actualizar el registro");
            } else {
                alert("Registro actualizado.");
            }
        }
    });
    leer();
}