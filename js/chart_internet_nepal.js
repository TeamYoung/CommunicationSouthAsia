$(document).ready(function(){
    $.getJSON('data/nepal_internet_data.json', function(json){

        var chart = new Highcharts.Chart({
            chart: {
                renderTo: 'chart_internet_nepal',
                type: 'line',
            },
            title: {
                text: 'Internet Service Providers Reach in Nepal'
            },
            xAxis: {
                title: {
                    text: 'Date'
                },
                categories: [ "2009, Aug", "2010, Feb", "2010, Aug", "2011, Feb", "2011, Aug", "2012, Feb", "2012, Aug", "2013, Feb"]
            },
            yAxis: {
                title: {
                    text: 'No. of Users'
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