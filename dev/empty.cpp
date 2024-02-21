//#include <GL/glut.h>
//
//void display() {
//    // Empty display function
////glClear ( GL_COLOR_BUFFER_BIT ) ;
////glBegin ( GL_POINTS ) ;
////glVertex3f (0.0f , 0.0f , 0.0f ) ;
////glVertex3f (50.0f , 40.0f , 0.0f ) ;
////glVertex3f (50.0f , 50.0f , 50.0f ) ;
////glEnd () ;
////glutSwapBuffers () ;
//glClear ( GL_COLOR_BUFFER_BIT ) ;
//glBegin ( GL_LINES ) ;
//glVertex3f (0.0f , 0.0f , 0.0f ) ;
//glVertex3f (50.0f , 50.0f , 0.0f ) ;
//glEnd () ;
//glutSwapBuffers () ;
//}
//
//int main(int argc, char** argv) {
//    // Initialize GLUT
//    glutInit(&argc, argv);
//
//    // Set display mode to single-buffered RGB
//    glutInitDisplayMode(GLUT_SINGLE | GLUT_RGB);
//
//    // Set window size and position
//    glutInitWindowSize(500, 500);
//    glutInitWindowPosition(100, 100);
//
//    // Create a window with the specified title
//    glutCreateWindow("Simple OpenGL Window");
//
//    // Register the display function
//    glutDisplayFunc(display);
//
//    // Enter the GLUT event processing loop
//    glutMainLoop();
//
//    return 0;
//}
