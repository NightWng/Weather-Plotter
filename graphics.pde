class ScatterPoint{
  
  void drawScatterPoint(int index, ArrayList<TemperatureData> arraylist, boolean max, boolean min, boolean draw){
    if(draw){
      if(min && max){
      for(int j = 0; j<arraylist.size(); j++){ 
    TemperatureData output = arraylist.get(j); //makes each bar (month)
    pushStyle();
    strokeWeight(10);
    stroke(0,0,255);
    point((110+ index*10)+(j*120),(900- (output.minTemperature*20))); 
    stroke(255, 0,0);
    point((110+ index*10)+(j*120),(900- (output.maxTemperature*20))); 
    popStyle();
     }
      }
     else if (min){
       for(int j = 0; j<arraylist.size(); j++){ 
    TemperatureData output = arraylist.get(j); //makes each bar (month)
    pushStyle();
    strokeWeight(10);
    stroke(0,0,255);
    point((110+ index*10)+(j*120),(900- (output.minTemperature*20)));
    popStyle();
       }
     }else if (max){
       for(int j = 0; j<arraylist.size(); j++){ 
    TemperatureData output = arraylist.get(j); //makes each bar (month)
    pushStyle();
    strokeWeight(10);
    stroke(255, 0 , 0);
    point((110+ index*10)+(j*120),(900- (output.maxTemperature*20))); 
    popStyle();
         } 
      }
    }
  }
}
  
void clearGraph(int index, ArrayList<TemperatureData> arraylist){
 for(int j = 0; j<arraylist.size(); j++){  
        TemperatureData output = arraylist.get(j); //makes each bar (month)
            pushStyle();
            strokeWeight(11);
            stroke(120);
            line((110+ index*10)+(j*120), 900, (110+ index*10)+(j*120), (900- (output.minTemperature*20))); 
            line((110+ index*10)+(j*120), 900, (110+ index*10)+(j*120), (900- (output.maxTemperature*20)));
            popStyle();
         } 
}



class BarChart{
 
  void drawBarChart (int index, ArrayList<TemperatureData> arraylist, boolean max, boolean min, boolean draw){
    if(draw){
       if(max&&min){ 
        for(int j = 0; j<arraylist.size(); j++){  
        TemperatureData output = arraylist.get(j); //makes each bar (month)
          if(abs(output.minTemperature)>abs(output.maxTemperature)){
            pushStyle();
            strokeWeight(9);
            stroke(0,0,255);
            line((110+ index*10)+(j*120), 900, (110+ index*10)+(j*120), (900- (output.minTemperature*20))); 
            stroke(255,0,0);
            line((110+ index*10)+(j*120), 900, (110+ index*10)+(j*120), (900- (output.maxTemperature*20)));
            popStyle();
          }else{
            pushStyle();
            strokeWeight(9);
            stroke(255,0,0);
            line((110+ index*10)+(j*120), 900, (110+ index*10)+(j*120), (900- (output.maxTemperature*20))); 
            stroke(0,0,255);
            line((110+ index*10)+(j*120), 900, (110+ index*10)+(j*120), (900- (output.minTemperature*20)));
            popStyle();
           }
        }
       }
        
      else if(max){
        for(int j = 0; j<arraylist.size(); j++){  
        TemperatureData output = arraylist.get(j);
        pushStyle();
            strokeWeight(9);
            stroke(255,0,0);
            line((110+ index*10)+(j*120), 900, (110+ index*10)+(j*120), (900- (output.maxTemperature*20))); 
        popStyle();
        }
      }
      else if (min){
        for(int j = 0; j<arraylist.size(); j++){  
        TemperatureData output = arraylist.get(j);
        pushStyle();
            strokeWeight(9);
            stroke(0,0,255);
            line((110+ index*10)+(j*120), 900, (110+ index*10)+(j*120), (900- (output.minTemperature*20))); 
        popStyle();
        }  
      

      }
          fill(0);
    for(int i = 0; i<30 ; i++){
      textAlign(LEFT);
        text(1990+2*i,150+(240*i), 950); //labelling horizontal
    }
  }
}
}

    
