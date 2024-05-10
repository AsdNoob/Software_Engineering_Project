/* =========================================================
 * ====                   WARNING                        ===
 * =========================================================
 * The code in this tab has been generated from the GUI form
 * designer and care should be taken when editing this file.
 * Only add/edit code inside the event handlers i.e. only
 * use lines between the matching comment tags. e.g.

 void myBtnEvents(GButton button) { //_CODE_:button1:12356:
     // It is safe to enter your event code here  
 } //_CODE_:button1:12356:
 
 * Do not rename this tab!
 * =========================================================
 */

synchronized public void win_draw1(PApplet appc, GWinData data) { //_CODE_:window1:507794:
  appc.background(230);
} //_CODE_:window1:507794:

public void slider1_change1(GSlider source, GEvent event) { //_CODE_:slider1:391765:
  button1.moveTo(150, slider1.getValueF());
  println("slider1 - GSlider >> GEvent." + event + " @ " + millis());
  
} //_CODE_:slider1:391765:

public void button1_click1(GButton source, GEvent event) { //_CODE_:button1:902465:
  println("button1 - GButton >> GEvent." + event + " @ " + millis());
} //_CODE_:button1:902465:



// Create all the GUI controls. 
// autogenerated do not edit
public void createGUI(){
  G4P.messagesEnabled(false);
  G4P.setGlobalColorScheme(GCScheme.BLUE_SCHEME);
  G4P.setMouseOverEnabled(false);
  surface.setTitle("Sketch Window");
  window1 = GWindow.getWindow(this, "Window title", 0, 0, 500, 500, JAVA2D);
  window1.noLoop();
  window1.setActionOnClose(G4P.KEEP_OPEN);
  window1.addDrawHandler(this, "win_draw1");
  slider1 = new GSlider(window1, 515, -2, 494, 63, 10.0);
  slider1.setRotation(PI/2, GControlMode.CORNER);
  slider1.setLimits(0.5, -10.0, 300.0);
  slider1.setNumberFormat(G4P.DECIMAL, 2);
  slider1.setOpaque(false);
  slider1.addEventHandler(this, "slider1_change1");
  button1 = new GButton(window1, 210, 238, 80, 30);
  button1.setText("Face text");
  button1.addEventHandler(this, "button1_click1");
  window1.loop();
}

// Variable declarations 
// autogenerated do not edit
GWindow window1;
GSlider slider1; 
GButton button1; 
