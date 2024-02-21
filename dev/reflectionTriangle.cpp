//#include <GL/glut.h>
//
//// Triangle vertices
//GLfloat vertices[3][2] = {{-0.5, -0.5}, {0.5, -0.5}, {0.0, 0.5}};
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
//    // Apply the reflection matrix about the x-axis
//    glPushMatrix();
//    glScalef(1.0, -1.0, 1.0);
//
//    // Draw the reflected triangle in green
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
//int main(int argc, char** argv) {
//    glutInit(&argc, argv);
//    glutInitDisplayMode(GLUT_DOUBLE | GLUT_RGB);
//    glutCreateWindow("OpenGL Reflection Example");
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
