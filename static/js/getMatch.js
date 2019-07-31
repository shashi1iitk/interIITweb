$(document).ready(function() {
    $.ajax({
        data : {},
        type : 'POST',
        url : '/getLiveMatches'
    })
    .done(function(data) {
        alert("Data received");
        productsAdd(data);
    });
});

function productsAdd(data) {
    $.each(data.live, function(key, value){
        $("#mytable tbody").append(
            "<tr>" +
              "<td>"+value.id + "</td>" +
              "<td>"+value.level + "</td>" +
              "<td>"+value.venue + "</td>" +
            "</tr>"
        );
    });
  }