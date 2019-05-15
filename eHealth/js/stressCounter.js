$(function () {

    $('#container').highcharts({

        chart: {
            type: 'gauge'
        },

        title: {
            text: 'Stress level'
        },
        credits:{
            enabled: false
        },

        pane: {
            startAngle: -90,
            endAngle: 90, 
            background: null
        },

        // the value axis
        yAxis: {
            min: 0,
            max: 200,

            minorTickInterval: 'auto',
            minorTickWidth: 0,
            minorTickLength: 10,
            minorTickPosition: '0',
            minorTickColor: '#666',

            tickPixelInterval: '',
            tickWidth: 2,
            tickPosition: 'inside',
            tickLength: 10,
            tickColor: '#666',
            labels: {
                step: 2,
                rotation: 'auto'
            },
            title: {
                text: 'stress'
            },
            plotBands: [{
                from: 0,
                to: 40,
                color: 'blue' // blue
            }, {
                from: 40,
                to: 80,
                color: 'green' // green
            }, {
                from: 80,
                to: 120,
                color: 'yellow' // yellow
            }, {
                from: 120,
                to: 160,
                color: 'orange' // yellow
            }, {
                from: 160,
                to: 200,
                color: 'red' // red
            },]
        },

        series: [{
            name: 'Stress',
            data: [80],
            tooltip: {
                valueSuffix: ''
            }
        }]

    },
    // Add some life
    function (chart) {
        if (!chart.renderer.forExport) {
            setInterval(function () {
                var point = chart.series[0].points[0],
                    newVal,
                    inc = Math.round((Math.random() - 0.5) * 20);

                newVal = point.y + inc;
                if (newVal < 0 || newVal > 200) {
                    newVal = point.y - inc;
                }

                point.update(newVal);

            }, 3000);
        }
    });
});
