drawPie("ingre.csv");



function drawPie(filename){
	
  //csv파일의 데이터를 불러옴.
  d3.csv(filename, function(error, data){

    if(error) throw error;

    console.log(data);

    var dataSet = [ ];
    for(var i in data[0]){
    	console.log("herreeeee" + i);	
    	dataSet.push(data[0][i]);
    }

    var svgEle = document.getElementById("myGraph");
    var svgWidth = window.getComputedStyle(svgEle,
       null).getPropertyValue("width");
    var svgHeight = window.getComputedStyle(svgEle,
      null).getPropertyValue("height");

      svgWidth = parseFloat(svgWidth);
      svgHeight = parseFloat(svgHeight);

      var pie = d3.layout.pie()
      var arc = d3.svg.arc().innerRadius(50).outerRadius(100)
      var pieElements = d3.select("#myGraph")
        .selectAll("g")
        .data(pie(dataSet))
        .enter()
        .append("g")
        .attr("transform", "translate("+svgWidth/2+", "+svgHeight/2+")")

      pieElements
        .append("path")
        .attr("class","pie")
        .style("fill", function(d, i){
          return ["#00bcd4", "#FF9800", "#673ab7d6", "#e84c81", "#8bc34a"][i];
        })
        .transition()
        .duration(200)
        .delay(function(d, i){
          return i*200;
        })
        .ease("linear")
        .attrTween("d", function(d, i){
          var interpolate = d3.interpolate(
            { startAngle : d.startAngle, endAngle : d.startAngle },
            { startAngle : d.startAngle, endAngle : d.endAngle }
          );

        return function(t){
          return arc(interpolate(t));
        }
        })

        var textElements = d3.select("#myGraph")
          .append("text")
          .attr("class","total")
          .attr("transform", "translate("+svgWidth/2+", "+(svgHeight/2+5)+")")
          .text("영양소")

          pieElements
            .append("text")
            .attr("class","pieNum")
            .attr("transform", function(d, i){
              return "translate("+arc.centroid(d)+")";
            })
            .text(function(d, i){
              return d.value ;
            })

  });

}
