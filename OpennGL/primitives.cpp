//#include <GL/glut.h>
//
//float x1, y1, x2, y2; // Coordinates of line endpoints
//
//void display() {
//  glClear(GL_COLOR_BUFFER_BIT); // Clear the window
//
//  // Calculate increments for DDA algorithm
//  float dx = x2 - x1;
//  float dy = y2 - y1;
//  float steps = abs(dx) > abs(dy) ? abs(dx) : abs(dy);
//  float Xin = dx / steps;
//  float Yin = dy / steps;
//
//  // Initialize and iterate through DDA steps
//  float x = x1, y = y1;
//  for (int i = 0; i <= steps; ++i) {
//    // Draw current point using OpenGL
//    glBegin(GL_POINTS);
//    glVertex2f(x, y);
//    glEnd();
//
//    // Update coordinates for next step
//    x += Xin;
//    y += Yin;
//  }
//
//  glFlush(); // Flush drawing commands to GPU
//}
//
//void init() {
//  // Set background color
//  glClearColor(0.0f, 0.0f, 0.0f, 1.0f);
//
//  // Specify projection mode and coordinate system
//  glMatrixMode(GL_PROJECTION);
//  glLoadIdentity();
//  gluOrtho2D(-100.0f, 100.0f, -100.0f, 100.0f);
//}
//
//int main(int argc, char** argv) {
//  // Initialize GLUT library
//  glutInit(&argc, argv);
//  glutInitDisplayMode(GLUT_SINGLE | GLUT_RGB);
//
//  // Set window size and position
//  glutInitWindowSize(500, 500);
//  glutInitWindowPosition(100, 100);
//
//  // Create window and initialize OpenGL context
//  glutCreateWindow("DDA Line Drawing");
//  init();
//
//  // Register display callback function
//  glutDisplayFunc(display);
//
//  // Start event loop
//  glutMainLoop();
//
//  return 0;
//}

