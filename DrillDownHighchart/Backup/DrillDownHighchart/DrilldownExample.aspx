<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DrilldownExample.aspx.cs"
    Inherits="DrillDownHighchart.DrilldownExample" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="Script/jquery.min.js" type="text/javascript"></script>
    <script src="Script/highcharts.js" type="text/javascript"></script>
    <script src="Script/drilldown.js" type="text/javascript"></script>
    <script type="text/javascript">

        $(document).ready(function () {
            $.ajax({
                type: "POST",
                contentType: "application/json; charset=utf-8",
                url: "Services/WebServiceChart.asmx/GetRevenueByYear",
                data: "{}",
                dataType: "json",
                success: function (Result) {

                    Result = Result.d;
                    var data = [];

                    for (var i in Result) {
                        var serie = { name: Result[i].year, y: Result[i].amount, drilldown: Result[i].drilldown };
                        data.push(serie);
                    }

                    BindChart(data);
                },
                error: function (Result) {
                    alert("Error");
                }
            });
        });

        function BindChart(seriesArr) {
            $('#container').highcharts({
                chart: {
                    type: 'column',
                    backgroundColor: '#CCE6FF',
                    borderColor: '#6495ED',
                    borderWidth: 2,
                    className: 'dark-container',
                    plotBackgroundColor: '#F0FFF0',
                    plotBorderColor: '#6495ED',
                    plotBorderWidth: 1,
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
                    text: 'Year wise Revenue Report'
                },
                xAxis: {
                    type: 'category'
                },


                plotOptions: {
                    series: {
                        borderWidth: 0,
                        dataLabels: {
                            enabled: true
                        }
                    }
                },
                series: [{
                    name: 'Year',
                    colorByPoint: true,
                    pointWidth: 50,
                    data: seriesArr
                }],

                drilldown: {
                    series: [{
                      pointWidth: 50
                    }]
                }
            });
        }

        function CallChild(name) {
            var Drilldowndata = [];
            $.ajax({
                type: "POST",
                contentType: "application/json; charset=utf-8",
                url: "Services/WebServiceChart.asmx/GetRevenueByQuarter",
                data: JSON.stringify({ year: name }),
                dataType: "json",
                success: function (Result) {
                    Result = Result.d;
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
    <div id="container" style="width 100px; height: 400px;">
    </div>
    </form>
</body>
</html>
