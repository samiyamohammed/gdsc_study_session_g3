//#include <GL/glut.h>
//
//// Triangle vertices
//GLfloat vertices[3][2] = {{-0.5, -0.5}, {0.5, -0.5}, {0.0, 0.5}};
//
//// Scaling factors
//GLfloat sx = 2.0;
//GLfloat sy = 0.5;
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
//    // Apply the scaling matrix
//    glScalef(sx, sy, 1.0);
//
//    // Draw the scaled triangle in green
//    glColor3f(0.0, 1.0, 0.0);
//    glBegin(GL_TRIANGLES);
//    for (int i = 0; i < 3; i++)
//        glVertex2fv(vertices[i]);
//    glEnd();
//
//    glutSwapBuffers();
//}
//
//int main(int argc, char** argv) {
//    glutInit(&argc, argv);
//    glutInitDisplayMode(GLUT_DOUBLE | GLUT_RGB);
//    glutCreateWindow("OpenGL Scaling Example");
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

