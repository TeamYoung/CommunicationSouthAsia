$(document).ready(function(){
    $.getJSON('saarc_internet_users_data.php', function(json){

        var chart = new Highcharts.Chart({
            chart: {
                renderTo: 'saarc_internet_users',
                type: 'column',
            },
            title: {
                text: 'Internet Users vs. Total Population in South Asia'
            },
            xAxis: {
                title: {
                    text: 'Country'
                },
                categories: ["Afghnanistan", "Bangladesh", "Bhutan", "India", "Maldives", "Nepal", "Pakistan", "Sri Lanka"]
            },
            yAxis: {
                type: 'logarithmic',
                title: {
                    text: 'No. of people'
                },
            },
            tooltip: {
                formatter: function() {
                    return '<b>' + this.series.name + '</b><br />'+
                    this.x + ': ' + this.y;
                }
            },
            legend: {
                align: 'center'
            },
            series: json
        });
    });
});