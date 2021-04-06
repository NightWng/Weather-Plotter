class FileIO
{
  String filePath;
  Table table;
}

void filler (FileIO data)
{
  data.filePath = dataPath("CalgaryWeather");
  data.table = loadTable("CalgaryWeather.csv", "header"); 
  
      for (TableRow i : data.table.rows()) {
          if(i.getInt("Month")==1){
            TemperatureData JanuaryTemp;
            float minT= i.getFloat("Min Temperature");
            float maxT= i.getFloat("Max Temperature");
            float snow = i.getFloat("Snow Fall");
            int month= i.getInt("Month");
            int year= i.getInt("Year");
            JanuaryTemp = new TemperatureData(minT, maxT, snow, month, year);
            JanuaryTDs.add(JanuaryTemp);
          }
        }
    
        for (TableRow k : data.table.rows()) {
          if(k.getInt("Month")==2){
            TemperatureData FebruaryTemp;
            float minT= k.getFloat("Min Temperature");
            float maxT= k.getFloat("Max Temperature");
            float snow = k.getFloat("Snow Fall");
            int month= k.getInt("Month");
            int year= k.getInt("Year");
            FebruaryTemp = new TemperatureData(minT, maxT, snow, month, year);
            FebruaryTDs.add(FebruaryTemp);
          }
        } 
    
        for (TableRow oneRow : data.table.rows()) {
          if(oneRow.getInt("Month")==3){
            TemperatureData MarchTemp;
            float minT= oneRow.getFloat("Min Temperature");
            float maxT= oneRow.getFloat("Max Temperature");
            float snow = oneRow.getFloat("Snow Fall");
            int month= oneRow.getInt("Month");
            int year= oneRow.getInt("Year");
            MarchTemp = new TemperatureData(minT, maxT, snow, month, year);
            MarchTDs.add(MarchTemp);
          }
        }
        
        for (TableRow theRow : data.table.rows()) {
          if(theRow.getInt("Month")==4){
            TemperatureData AprilTemp;
            float minT= theRow.getFloat("Min Temperature");
            float maxT= theRow.getFloat("Max Temperature");
            float snow = theRow.getFloat("Snow Fall");
            int month= theRow.getInt("Month");
            int year= theRow.getInt("Year");
            AprilTemp = new TemperatureData(minT, maxT, snow, month, year);
            AprilTDs.add(AprilTemp);
          }
        }
        
        for (TableRow aRow : data.table.rows()) {
          if(aRow.getInt("Month")==5){
            TemperatureData MayTemp;
            float minT= aRow.getFloat("Min Temperature");
            float maxT= aRow.getFloat("Max Temperature");
            float snow = aRow.getFloat("Snow Fall");
            int month= aRow.getInt("Month");
            int year= aRow.getInt("Year");
            MayTemp = new TemperatureData(minT, maxT, snow, month, year);
            MayTDs.add(MayTemp);
          }
        }
        
        for (TableRow x : data.table.rows()) {
          if(x.getInt("Month")==6){
            TemperatureData JuneTemp;
            float minT= x.getFloat("Min Temperature");
            float maxT= x.getFloat("Max Temperature");
            float snow = x.getFloat("Snow Fall");
            int month= x.getInt("Month");
            int year= x.getInt("Year");
            JuneTemp = new TemperatureData(minT, maxT, snow, month, year);
            JuneTDs.add(JuneTemp);
          }
        }
        
        for (TableRow a : data.table.rows()) {
          if(a.getInt("Month")==7){
            TemperatureData JulyTemp;
            float minT= a.getFloat("Min Temperature");
            float maxT= a.getFloat("Max Temperature");
            float snow = a.getFloat("Snow Fall");
            int month= a.getInt("Month");
            int year= a.getInt("Year");
            JulyTemp = new TemperatureData(minT, maxT, snow, month, year);
            JulyTDs.add(JulyTemp);
          }
        }
        
        for (TableRow c : data.table.rows()) {
          if(c.getInt("Month")==8){
            TemperatureData AugustTemp;
            float minT=  c.getFloat("Min Temperature");
            float maxT=  c.getFloat("Max Temperature");
            float snow =  c.getFloat("Snow Fall");
            int month=  c.getInt("Month");
            int year=  c.getInt("Year");
            AugustTemp = new TemperatureData(minT, maxT, snow, month, year);
            AugustTDs.add(AugustTemp);
          }
        }
         
        for (TableRow d: data.table.rows()) {
          if(d.getInt("Month")==9){
            TemperatureData SeptemberTemp;
            float minT= d.getFloat("Min Temperature");
            float maxT= d.getFloat("Max Temperature");
            float snow = d.getFloat("Snow Fall");
            int month= d.getInt("Month");
            int year= d.getInt("Year");
            SeptemberTemp = new TemperatureData(minT, maxT, snow, month, year);
            SeptemberTDs.add(SeptemberTemp);
          }
        }
        
        for (TableRow e : data.table.rows()) {
          if(e.getInt("Month")==10){
            TemperatureData OctoberTemp;
            float minT= e.getFloat("Min Temperature");
            float maxT= e.getFloat("Max Temperature");
            float snow = e.getFloat("Snow Fall");
            int month= e.getInt("Month");
            int year= e.getInt("Year");
            OctoberTemp = new TemperatureData(minT, maxT, snow, month, year);
            OctoberTDs.add(OctoberTemp);
          }
        }
        
        for (TableRow f : data.table.rows()) {
          if(f.getInt("Month")==11){
            TemperatureData NovemberTemp;
            float minT= f.getFloat("Min Temperature");
            float maxT= f.getFloat("Max Temperature");
            float snow = f.getFloat("Snow Fall");
            int month= f.getInt("Month");
            int year= f.getInt("Year");
            NovemberTemp = new TemperatureData(minT, maxT, snow, month, year);
            NovemberTDs.add(NovemberTemp);
          }
        }
        
        
        for (TableRow g : data.table.rows()) {
          if(g.getInt("Month")==12){
            TemperatureData DecemberTemp;
            float minT= g.getFloat("Min Temperature");
            float maxT= g.getFloat("Max Temperature");
            float snow = g.getFloat("Snow Fall");
            int month= g.getInt("Month");
            int year= g.getInt("Year");
            DecemberTemp = new TemperatureData(minT, maxT, snow, month, year);
            DecemberTDs.add(DecemberTemp);
          }
        }
        
  }
        
        
        
       
