$(document).ready(function() {
    var currentPage = 1;
    var loading = false;
    fetchResults("", currentPage);

    $('#bus-prod').keyup(function() {
        currentPage = 1;

        var input = $(this).val();

        fetchResults(input, currentPage);
    });

    function fetchResults(input, page) {
        $.ajax({
            url: "./acc/bus-prod.php",
            method: "POST",
            data: {
                input: input,
                page: page
            },
            beforeSend: function() {
                $("#loading-indicator").show();
                loading = true;
            },
            success: function(data) {
                $("#loading-indicator").hide();
                $("#bus-prod-res").css("display", "block");

                if (page === 1) {
                    $("#bus-prod-res").html(data);
                } else {
                    var newRows = $(data).find("tbody tr");
                    $("#bus-prod-res table tbody").append(newRows);
                }

                loading = false;
                checkShowMoreButton(data);
            }
        });
    }

    function checkShowMoreButton(data) {
        var resultCount = $(data).find('tbody tr').length;
        var resultsPerPage = 5;

        if (resultCount >= resultsPerPage) {
            $("#show-more-btn").show();
        } else {
            $("#show-more-btn").hide();
        }
    }

    $("#show-more-btn").click(function() {
        currentPage++;
        var input = $("#bus-prod").val();
        fetchResults(input, currentPage);
    });
});