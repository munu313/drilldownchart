<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Peichart.aspx.cs" Inherits="DrillDownHighchart.Peicharct" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     
    <script src="Script/jquery.min.js" type="text/javascript"></script>
    <script src="Script/highcharts.js" type="text/javascript"></script>
    <script src="Script/drilldown.js" type="text/javascript"></script>
    <script type="text/javascript">

        $(document).ready(function () {
            $.ajax({
                type: "GET",
                contentType: "application/json; charset=utf-8",
                url: "https://localhost:7172/api/ChartData",
                data: {
                    "ajaxid": 4,
                    "UserID": "UserID",
                    "EmailAddress": "EmailAddress"
                },
                dataType: "json",
                success: function (Result) {

                    // Result = Result.d;
                    var data = [];

                    for (var i in Result) {
                        //var serie = { name: Result[i].year, y: Result[i].amount, drilldown: Result[i].drilldown };
                        var serie = { name: Result[i].year, y: Result[i].amount, drilldown: Result[i].drilldown };
                        data.push(serie);
                    }

                    drawPieChart(data);
                },
                error: function (Result) {
                    alert("Error");
                }
            });
        });

        function drawPieChart1(seriesData) {

            $('#container').highcharts({
                chart: {
                    plotBackgroundColor: null,
                    plotBorderWidth: null,
                    plotShadow: false,
                    type: 'pie',
                    events: {

                       drilldown: function (e) {
                            //if (!e.seriesOptions) {
                            //    var chart = this;
                            //    chart.showLoading('Loading Quarter wise Revenue ...');
                            //    var dataArr = CallChild(e.point.name);
                            //    chart.setTitle({
                            //        text: 'Quarter wise Revenue Report'
                            //    });
                            //    data = {
                            //        name: e.point.name,
                            //        data: dataArr
                            //    }
                            //    setTimeout(function () {
                            //        chart.hideLoading();
                            //        chart.addSeriesAsDrilldown(e.point, data);
                            //    }, 1000);
                            //}
                        }
                    }
                },
                title: {
                    text: 'Population percentage city wise'
                },
                tooltip: {
                    pointFormat: '{series.name}: <b>{point.y}</b>'
                },
                plotOptions: {
                    pie: {
                        allowPointSelect: true,
                        cursor: 'pointer',
                        dataLabels: {
                            enabled: true,
                            format: '<b>{point.name}</b>: {point.y} ',
                            style: {
                                color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'
                            }
                        }
                    }
                },
                series: [{
                    name: "year",
                    colorByPoint: true,
                    data: seriesData
                }]
            });
        }



        function drawPieChart(seriesData) {

            $('#container').highcharts({
                chart: {
                    plotBackgroundColor: null,
                    plotBorderWidth: null,
                    plotShadow: false,
                    type: 'pie',
                    events: {

                        drilldown: function (e) {
                            if (!e.seriesOptions) {
                                var chart = this;
                                chart.showLoading('Loading Quarter wise Revenue ...');
                                var dataArr = CallChild(e.point.name);
                                chart.setTitle({
                                    text: 'Quarter wise Revenue Report'
                                });
                                data = {
                                    name: e.point.name,
                                    data: dataArr
                                }
                                setTimeout(function () {
                                    chart.hideLoading();
                                    chart.addSeriesAsDrilldown(e.point, data);
                                }, 1000);
                            }
                        }
                    }
                },
                title: {
                    text: 'Population percentage city wise'
                },
                tooltip: {
                    pointFormat: '{series.name}: <b>{point.y}</b>'
                },
                plotOptions: {
                    pie: {
                        allowPointSelect: true,
                        cursor: 'pointer',
                        dataLabels: {
                            enabled: true,
                            format: '<b>{point.name}</b>: {point.y} ',
                            style: {
                                color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'
                            }
                        }
                    }
                },
                series: [{
                    name: "year",
                    colorByPoint: true,
                    data: seriesData
                }]
            });
        }



        function CallChild(name) {
            var Drilldowndata = [];
            $.ajax({
                type: "GET",
                contentType: "application/json; charset=utf-8",
                url: "https://localhost:7172/api/ChartData/GetRevnueQuarter",
                data: {
                    "year": name
                },
                dataType: "json",
                success: function (Result) {

                    for (var i in Result) {
                        var serie = { name: Result[i].year, y: Result[i].amount };
                        Drilldowndata.push(serie);
                    }
                },
                error: function (Result) {
                    alert("Error");
                }
            })
            return Drilldowndata;
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <div id="container" style="width 100px; height: 400px;">
        <div id="container2" style="width 100px; height: 400px;">
    </div>
    </form>
</body>
</html>
