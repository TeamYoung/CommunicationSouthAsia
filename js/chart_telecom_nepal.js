$(document).ready(function(){
    $.getJSON('data/nepal_telecom_data.json', function(json){

        var chart = new Highcharts.Chart({
            chart: {
                renderTo: 'chart_telecom_nepal',
                type: 'line',
            },
            title: {
                text: 'Telephone Service Providers Reach In Nepal'
            },
            xAxis: {
                title: {
                    text: 'Year'
                },
                categories: [ "2004", "2005", "2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013"]
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