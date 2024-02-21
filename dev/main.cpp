//#include<windows.h>
//#include<gl/glut.h>
//
//// Initializes OpenGL
//void init(void) {
//  glClearColor(1.0, 1.0, 1.0, 0.0); // Sets the background color to white
//  glLineWidth(2.0); // Sets the line width to 2 pixels
//  glMatrixMode(GL_PROJECTION); // Sets the matrix mode to projection
//  gluOrtho2D(0.0, 300.0, 0.0, 300.0); // Sets the projection matrix to orthographic
//}
//
//// Draws a red line from (20, 20) to (150, 150)
//void Line(void) {
//  glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT); // Clears the color and depth buffers
//  glColor3f(1.0, 0.0, 0.0); // Sets the drawing color to red
//  glBegin(GL_LINES); // Starts drawing lines
//    glVertex2i(20, 20); // Specifies the first vertex of the line
//    glVertex2i(150, 150); // Specifies the second vertex of the line
//  glEnd(); // Finishes drawing lines
//  glFlush(); // Flushes the OpenGL pipeline
//}
//
//// Main function
//int main(int argc, char **argv) {
//  glutInit(&argc, argv); // Initializes GLUT
//  glutInitDisplayMode(GLUT_RGB | GLUT_SINGLE); // Sets the display mode to RGB and single buffering
//  glutInitWindowPosition(100, 100); // Sets the initial window position
//  glutInitWindowSize(400, 400); // Sets the initial window size
//  glutCreateWindow("Line Tutorial"); // Creates a window with the title "Line Tutorial"
//
//  init(); // Initializes OpenGL
//  glutDisplayFunc(Line); // Sets the display function to Line()
//
//  glutMainLoop(); // Enters the main loop
//
//  return 0;
//}
