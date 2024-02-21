//#include <GL/glut.h>
//
//// Triangle vertices
//GLfloat vertices[3][2] = {{-0.5, -0.5}, {0.5, -0.5}, {0.0, 0.5}};
//
//// Shearing parameters
//GLfloat shx = 0.5;
//GLfloat shy = 0.0;
//
//// Function declaration
//GLfloat* shearXY();
//
//void display() {
//    glClear(GL_COLOR_BUFFER_BIT);
//
//    // Draw the original triangle in red
//    glColor3f(1.0, 0.0, 0.0);
//    glBegin(GL_TRIANGLES);
//    for (int i = 0; i < 3; i++)
//        glVertex2fv(vertices[i]);
//    glEnd();
//
//    // Apply the shearing matrix
//    glPushMatrix();
//    glTranslatef(1.0, 0.0, 0.0);  // Move to the right for clarity
//    glMultMatrixf(shearXY());
//
//    // Draw the sheared triangle in green
//    glColor3f(0.0, 1.0, 0.0);
//    glBegin(GL_TRIANGLES);
//    for (int i = 0; i < 3; i++)
//        glVertex2fv(vertices[i]);
//    glEnd();
//
//    glPopMatrix();
//    glutSwapBuffers();
//}
//
//GLfloat* shearXY() {
//    // Define the shearing matrix
//    static GLfloat S[16] = {1.0, shx, 0.0, 0.0, shy, 1.0, 0.0, 0.0, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0, 0.0, 1.0};
//    return S;
//}
//
//int main(int argc, char** argv) {
//    glutInit(&argc, argv);
//    glutInitDisplayMode(GLUT_DOUBLE | GLUT_RGB);
//    glutCreateWindow("OpenGL Shearing Example");
//
//    glClearColor(1.0, 1.0, 1.0, 1.0);
//    glMatrixMode(GL_PROJECTION);
//    gluOrtho2D(-2.0, 2.0, -2.0, 2.0);
//
//    glutDisplayFunc(display);
//
//    glutMainLoop();
//    return 0;
//}
