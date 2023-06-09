$(document).ready(function() {
    var currentPage = 1;
    var loading = false;
    var orderDirection = 'ASC';

    fetchResults("", currentPage, "", orderDirection, "");

    $('#search-btn').click(function() {
        currentPage = 1;

        var input = $('#bus-prod').val();
        var orderBy = $('#order-by').val();
        var category = $('#category').val();

        fetchResults(input, currentPage, orderBy, orderDirection, category);
    });

    $('#bus-prod').keydown(function(event) {
        if (event.keyCode === 13) {
            event.preventDefault();
            currentPage = 1;

            var input = $('#bus-prod').val();
            var orderBy = $('#order-by').val();
            var category = $('#category').val();

            fetchResults(input, currentPage, orderBy, orderDirection, category);
        }
    });

    function fetchResults(input, page, orderBy, orderDirection, category) {
        $.ajax({
            url: "./acc/bus-prod-v.php",
            method: "POST",
            data: {
                input: input,
                page: page,
                orderBy: orderBy,
                orderDirection: orderDirection,
                category: category
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
        var orderBy = $('#order-by').val();
        var category = $('#category').val();

        fetchResults(input, currentPage, orderBy, orderDirection, category);
    });

    $("#order-direction").click(function() {
        var icon = $(this).find("i");

        if (orderDirection === 'ASC') {
            orderDirection = 'DESC';
            icon.removeClass('bi-arrow-up').addClass('bi-arrow-down');
        } else {
            orderDirection = 'ASC';
            icon.removeClass('bi-arrow-down').addClass('bi-arrow-up');
        }
    });
});