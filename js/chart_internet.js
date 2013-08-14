$(document).ready(function(){
    $.getJSON('data/saarc_internet_data.json', function(json){

        var chart = new Highcharts.Chart({
            chart: {
                renderTo: 'saarc_internet',
                type: 'line',
            },
            title: {
                text: 'Internet Users per 100 people in South Asia'
            },
            xAxis: {
                title: {
                    text: 'Year'
                },
                categories: ["2001", "2002", "2003", "2004", "2005", "2006", "2007", "2008", "2009", "2010", "2011"]
            },
            yAxis: {
                title: {
                    text: 'Value'
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