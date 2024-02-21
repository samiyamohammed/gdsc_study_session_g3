//#include <GL/glut.h>
//
//// Triangle vertices
//GLfloat vertices[3][2] = {{-0.5, -0.5}, {0.5, -0.5}, {0.0, 0.5}};
//
//// Rotation angle
//GLfloat angle = 0.0f;
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
//    // Apply the rotation matrix
//    glRotatef(angle, 0.0, 0.0, 1.0);
//
//    // Draw the rotated triangle in green
//    glColor3f(0.0, 1.0, 0.0);
//    glBegin(GL_TRIANGLES);
//    for (int i = 0; i < 3; i++)
//        glVertex2fv(vertices[i]);
//    glEnd();
//
//    glutSwapBuffers();
//}
//
//void idle() {
//    angle += 1.0; // Increment the angle by 1 degree
//    glutPostRedisplay(); // Redraw the scene
//}
//
//int main(int argc, char** argv) {
//    glutInit(&argc, argv);
//    glutInitDisplayMode(GLUT_DOUBLE | GLUT_RGB);
//    glutCreateWindow("OpenGL Rotation Example");
//
//    glClearColor(1.0, 1.0, 1.0, 1.0);
//    glMatrixMode(GL_PROJECTION);
//    gluOrtho2D(-2.0, 2.0, -2.0, 2.0);
//
//    glutDisplayFunc(display);
//    glutIdleFunc(idle);
//
//    glutMainLoop();
//    return 0;
//}

