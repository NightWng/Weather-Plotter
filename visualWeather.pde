import controlP5.*;
ControlP5 mainPage;
  boolean minPressed = false;
  boolean maxPressed = false;
  boolean ScatterPlotPressed = false;
  boolean BarChartPressed = false;
  boolean allPressed = false;

  
  ArrayList<TemperatureData>JanuaryTDs = new ArrayList<TemperatureData>();
  ArrayList<TemperatureData>FebruaryTDs = new ArrayList<TemperatureData>();
  ArrayList<TemperatureData>MarchTDs = new ArrayList<TemperatureData>();
  ArrayList<TemperatureData>AprilTDs = new ArrayList<TemperatureData>();
  ArrayList<TemperatureData>MayTDs = new ArrayList<TemperatureData>();
  ArrayList<TemperatureData>JuneTDs = new ArrayList<TemperatureData>();
  ArrayList<TemperatureData>JulyTDs = new ArrayList<TemperatureData>();
  ArrayList<TemperatureData>AugustTDs = new ArrayList<TemperatureData>();
  ArrayList<TemperatureData>SeptemberTDs = new ArrayList<TemperatureData>();
  ArrayList<TemperatureData>OctoberTDs = new ArrayList<TemperatureData>();
  ArrayList<TemperatureData>NovemberTDs = new ArrayList<TemperatureData>();
  ArrayList<TemperatureData>DecemberTDs = new ArrayList<TemperatureData>();

void setup(){
  FileIO test = new FileIO();  
  filler(test);

  mainPage = new ControlP5(this);
  ControlFont cf1 = new ControlFont(createFont("Arial",20));  
  //mainPage.addCheckBox("DISPLAY").setPosition(60, 50).setSize(200, 100).setFont(cf1).addItem("BARCHART", 20).addItem("SCATTERPLOT", 100);
  
  mainPage.addToggle("BARCHART").setPosition(60, 50).setSize(200, 100).setFont(cf1);//.setMode(ControlP5.SWITCH);
  mainPage.addToggle("SCATTERPOINT").setPosition(60, 200).setSize(200, 100).setFont(cf1);//.setMode(ControlP5.SWITCH);

  mainPage.addToggle("MIN").setPosition(350, 50).setSize(150, 100).setFont(cf1);//.setMode(ControlP5.SWITCH);
  mainPage.addToggle("MAX").setPosition(350, 200).setSize(150, 100).setFont(cf1);//.setMode(ControlP5.SWITCH);
  mainPage.addToggle("JANUARY").setPosition(550, 50).setSize(250, 100).setFont(cf1);//.setMode(ControlP5.SWITCH);
  mainPage.addToggle("FEBRURARY").setPosition(850, 50).setSize(250, 100).setFont(cf1);//.setMode(ControlP5.SWITCH);
  mainPage.addToggle("MARCH").setPosition(1150, 50).setSize(250, 100).setFont(cf1);//.setMode(ControlP5.SWITCH);
  mainPage.addToggle("APRIL").setPosition(1450, 50).setSize(250, 100).setFont(cf1);//.setMode(ControlP5.SWITCH);
  mainPage.addToggle("MAY").setPosition(1750, 50).setSize(250, 100).setFont(cf1);//.setMode(ControlP5.SWITCH);
  mainPage.addToggle("JUNE").setPosition(2050, 50).setSize(250, 100).setFont(cf1);//.setMode(ControlP5.SWITCH);
  mainPage.addToggle("JULY").setPosition(550, 200).setSize(250, 100).setFont(cf1);//.setMode(ControlP5.SWITCH);
  mainPage.addToggle("AUGUST").setPosition(850, 200).setSize(250, 100).setFont(cf1);//.setMode(ControlP5.SWITCH);
  mainPage.addToggle("SEPTEMBER").setPosition(1150, 200).setSize(250, 100).setFont(cf1);//.setMode(ControlP5.SWITCH);
  mainPage.addToggle("OCTOBER").setPosition(1450, 200).setSize(250, 100).setFont(cf1);//.setMode(ControlP5.SWITCH);
  mainPage.addToggle("NOVEMBER").setPosition(1750, 200).setSize(250, 100).setFont(cf1);//.setMode(ControlP5.SWITCH);
  mainPage.addToggle("DECEMBER").setPosition(2050, 200).setSize(250, 100).setFont(cf1);//.setMode(ControlP5.SWITCH);
  mainPage.addToggle("ALL").setPosition(2350, 200).setSize(250, 100).setFont(cf1);
 // mainPage.addSlider("YEARS").setRange(1990, 2019).setPosition(100, 900).setSize(2000, 10);
  background(120);
  size(3710, 1300); 
}

    void draw(){
      fill(0);
      rect(100, 380, 10, 870); //vertical axis
      rect(100, 900, 3600, 5); //horizontal axis
      textSize(25);
      rect(0,0, 3710, 380);
      rect(0, 1250, 3710, 50);
      
      for(int i = 0; i<9; i++){
        fill(0);
        textAlign(RIGHT);
        text(25-(5*i), 60, 410+(100*i));
        rect(90, 400+100*i, 10, 8);
      }//labelling vertical
    
        fill(0);
    for(int i = 0; i<30 ; i++){
      textAlign(LEFT);
        text(1990+2*i,150+(240*i), 950); //labelling horizontal
      }
   }

void BARCHART(boolean state){
  if(state){
    BarChartPressed = true;
  }
  else{
    BarChartPressed = false;
  }
}

void SCATTERPOINT(boolean state){
  if(state){
    ScatterPlotPressed = true;
  }
  else{
    ScatterPlotPressed= false;
  }
}

void MIN(boolean state){
  if(state){
    minPressed = true;
  }
  else{
    minPressed= false;
  }
}

void MAX(boolean state){
  if(state){
    maxPressed = true;
  }
  else{
    maxPressed= false;
  }
}

void JANUARY(boolean state){
  if(state)
  {
    BarChart barchart = new BarChart();
  barchart.drawBarChart(1, JanuaryTDs, maxPressed, minPressed, BarChartPressed);
  ScatterPoint scattergraph = new ScatterPoint();
  scattergraph.drawScatterPoint(1, JanuaryTDs, minPressed, maxPressed, ScatterPlotPressed);
  }
  else{
    clearGraph(1, JanuaryTDs);
  }
}
 
          
  void FEBRURARY(boolean state){
    if (state){
  BarChart barchart = new BarChart();
  barchart.drawBarChart(2, FebruaryTDs, maxPressed, minPressed, BarChartPressed);
  ScatterPoint scattergraph = new ScatterPoint();
  scattergraph.drawScatterPoint(2, FebruaryTDs, maxPressed, minPressed, ScatterPlotPressed);
    }
    else{
      clearGraph(2, FebruaryTDs);
    }
}    
    
      void MARCH(boolean state){
        if(state){
  BarChart barchart = new BarChart();
  barchart.drawBarChart(3, MarchTDs,  maxPressed, minPressed, BarChartPressed);
  ScatterPoint scattergraph = new ScatterPoint();
  scattergraph.drawScatterPoint(3, MarchTDs,  maxPressed, minPressed, ScatterPlotPressed);
        }else{
          clearGraph(3, MarchTDs);
        }
}
    
          void APRIL(boolean state){
            if(state){
  BarChart barchart = new BarChart();
  barchart.drawBarChart(4, AprilTDs, maxPressed, minPressed, BarChartPressed);
  ScatterPoint scattergraph = new ScatterPoint();
  scattergraph.drawScatterPoint(4, AprilTDs, maxPressed, minPressed, ScatterPlotPressed);
            }else{
              clearGraph(4, AprilTDs);
            }
}
       
          
   void MAY(boolean state){
     if(state){
  BarChart barchart = new BarChart();
  barchart.drawBarChart(5, MayTDs,  maxPressed, minPressed, BarChartPressed);
  ScatterPoint scattergraph = new ScatterPoint();
  scattergraph.drawScatterPoint(5, MayTDs,  maxPressed, minPressed, ScatterPlotPressed);
     }else{
       clearGraph(5, MayTDs);
     }
}

   void JUNE(boolean state){
     if(state){
  BarChart barchart = new BarChart();
  barchart.drawBarChart(6, JuneTDs,  maxPressed, minPressed, BarChartPressed);
  ScatterPoint scattergraph = new ScatterPoint();
  scattergraph.drawScatterPoint(6, JuneTDs,  maxPressed, minPressed, ScatterPlotPressed);
     }else{
       clearGraph(6, JuneTDs);
     }
}

   void JULY(boolean state){ 
     if(state){
  BarChart barchart = new BarChart();
  barchart.drawBarChart(7, JulyTDs,  maxPressed, minPressed, BarChartPressed);
  ScatterPoint scattergraph = new ScatterPoint();
  scattergraph.drawScatterPoint(7, JulyTDs,  maxPressed, minPressed, ScatterPlotPressed);
  }else{
       clearGraph(7, JulyTDs);
     }
}

   void AUGUST(boolean state){
     if(state){
  BarChart barchart = new BarChart();
  barchart.drawBarChart(8, AugustTDs, maxPressed, minPressed, BarChartPressed);
  ScatterPoint scattergraph = new ScatterPoint();
  scattergraph.drawScatterPoint(8, AugustTDs,  maxPressed, minPressed, ScatterPlotPressed);
  }else{
       clearGraph(8, AugustTDs);
     }
}
  
 void SEPTEMBER(boolean state){
   if(state){
  BarChart barchart = new BarChart();
  barchart.drawBarChart(9, SeptemberTDs, maxPressed, minPressed, BarChartPressed);
  ScatterPoint scattergraph = new ScatterPoint();
  scattergraph.drawScatterPoint(9, SeptemberTDs, maxPressed, minPressed, ScatterPlotPressed);
}else{
       clearGraph(9, SeptemberTDs);
     }
 }


 void OCTOBER(boolean state){
   if(state){
  BarChart barchart = new BarChart();
  barchart.drawBarChart(10, OctoberTDs,  maxPressed, minPressed, BarChartPressed);
  ScatterPoint scattergraph = new ScatterPoint();
  scattergraph.drawScatterPoint(10, OctoberTDs, maxPressed, minPressed, ScatterPlotPressed);
 }else{
       clearGraph(10, OctoberTDs);
     }
} 

 void NOVEMBER(boolean state){
   if(state){
  BarChart barchart = new BarChart();
  barchart.drawBarChart(11, NovemberTDs, maxPressed, minPressed, BarChartPressed);
  ScatterPoint scattergraph = new ScatterPoint();
  scattergraph.drawScatterPoint(11, NovemberTDs,  maxPressed, minPressed, ScatterPlotPressed);
  }else{
       clearGraph(11, NovemberTDs);
     }
} 

 void DECEMBER(boolean state){
   if(state){
  BarChart barchart = new BarChart();
  barchart.drawBarChart(12, DecemberTDs,  maxPressed, minPressed, BarChartPressed);
  ScatterPoint scattergraph = new ScatterPoint();
  scattergraph.drawScatterPoint(12, DecemberTDs, maxPressed, minPressed, ScatterPlotPressed);
  }else{
       clearGraph(12, DecemberTDs);
     }
} 

void ALL(boolean state){
  if(state){
  BarChart barchart = new BarChart();
  ScatterPoint scattergraph = new ScatterPoint();
  
  barchart.drawBarChart(1, JanuaryTDs, maxPressed, minPressed, BarChartPressed);
  barchart.drawBarChart(2, FebruaryTDs, maxPressed, minPressed, BarChartPressed);
  barchart.drawBarChart(3, MarchTDs, maxPressed, minPressed, BarChartPressed);
  barchart.drawBarChart(4, AprilTDs, maxPressed, minPressed, BarChartPressed);
  barchart.drawBarChart(5, MayTDs, maxPressed, minPressed, BarChartPressed);
  barchart.drawBarChart(6, JuneTDs, maxPressed, minPressed, BarChartPressed);
  barchart.drawBarChart(7, JulyTDs, maxPressed, minPressed, BarChartPressed);
  barchart.drawBarChart(8, AugustTDs, maxPressed, minPressed, BarChartPressed);
  barchart.drawBarChart(9, SeptemberTDs, maxPressed, minPressed, BarChartPressed);
  barchart.drawBarChart(10, OctoberTDs, maxPressed, minPressed, BarChartPressed);
  barchart.drawBarChart(11,NovemberTDs, maxPressed, minPressed, BarChartPressed);
  barchart.drawBarChart(12, DecemberTDs, maxPressed, minPressed, BarChartPressed);
  
  scattergraph.drawScatterPoint(1, JanuaryTDs, maxPressed, minPressed, ScatterPlotPressed);
  scattergraph.drawScatterPoint(2, FebruaryTDs, maxPressed, minPressed, ScatterPlotPressed);
  scattergraph.drawScatterPoint(3, MarchTDs, maxPressed, minPressed, ScatterPlotPressed);
  scattergraph.drawScatterPoint(4, AprilTDs, maxPressed, minPressed, ScatterPlotPressed);
  scattergraph.drawScatterPoint(5, MayTDs, maxPressed, minPressed, ScatterPlotPressed);
  scattergraph.drawScatterPoint(6, JuneTDs, maxPressed, minPressed, ScatterPlotPressed);
  scattergraph.drawScatterPoint(7, JulyTDs, maxPressed, minPressed, ScatterPlotPressed);
  scattergraph.drawScatterPoint(8, AugustTDs, maxPressed, minPressed, ScatterPlotPressed);
  scattergraph.drawScatterPoint(9, SeptemberTDs, maxPressed, minPressed, ScatterPlotPressed);
  scattergraph.drawScatterPoint(10, OctoberTDs, maxPressed, minPressed, ScatterPlotPressed);
  scattergraph.drawScatterPoint(11, NovemberTDs, maxPressed, minPressed, ScatterPlotPressed);
  scattergraph.drawScatterPoint(12, DecemberTDs, maxPressed, minPressed, ScatterPlotPressed);
  }
  else{
    clearGraph(1, JanuaryTDs);
    clearGraph(2, FebruaryTDs);
    clearGraph(3, MarchTDs);
    clearGraph(4, AprilTDs);
    clearGraph(5, MayTDs);
    clearGraph(6, JuneTDs);
    clearGraph(7, JulyTDs);
    clearGraph(8, AugustTDs);
    clearGraph(9, SeptemberTDs);
    clearGraph(10, OctoberTDs);
    clearGraph(11, NovemberTDs);
    clearGraph(12, DecemberTDs);
  }
  
}
           
