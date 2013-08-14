$(document).ready(function() {
	var options = {
		chart: {
            renderTo: 'chart_internet_pie_nepal',
            plotBackgroundColor: null,
            plotBorderWidth: null,
            plotShadow: false
        },
        title: {
            text: 'Internet Service Providers Penetration Status in Nepal, 2012'
        },
        tooltip: {
            formatter: function() {
                return '<b>'+ this.point.name +'</b>: '+ Math.round(this.percentage*100)/100 +' %';
            }
        },
        plotOptions: {
            pie: {
                allowPointSelect: true,
                cursor: 'pointer',
                dataLabels: {
                    enabled: true,
                    color: '#000000',
                    connectorColor: '#000000',
                    formatter: function() {
                        return '<b>'+ this.point.name +'</b>: '+ Math.round(this.percentage*100)/100 +' %';
                    }
                }
            }
        },
        series: [{
            type: 'pie',
            name: 'Penentration Status',
            data: []
        }]
    }
    
    $.getJSON("data/nepal_internet_pie_data.json", function(json) {
		options.series[0].data = json;
    	chart = new Highcharts.Chart(options);
    });
});