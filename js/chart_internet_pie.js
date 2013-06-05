$(document).ready(function() {
	var options = {
		chart: {
            renderTo: 'saarc_internet_pie',
            plotBackgroundColor: null,
            plotBorderWidth: null,
            plotShadow: false
        },
        title: {
            text: 'Internet Penentration Status in South Asia, 2012'
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
            name: 'Browser share',
            data: []
        }]
    }
    
    $.getJSON("saarc_internet_pie_data.php", function(json) {
		options.series[0].data = json;
		chart = new Highcharts.Chart(options);
    });
});   