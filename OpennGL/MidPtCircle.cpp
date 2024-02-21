//#include <GL/glut.h>
//#include <cmath>
//
//void drawCircle(int xc, int yc, int radius) {
//    int x = 0;
//    int y = radius;
//    int d = 1 - radius;
//
//    glBegin(GL_POINTS);
//
//    while (x <= y) {
//        glVertex2i(xc + x, yc + y);
//        glVertex2i(xc - x, yc + y);
//        glVertex2i(xc + x, yc - y);
//        glVertex2i(xc - x, yc - y);
//        glVertex2i(xc + y, yc + x);
//        glVertex2i(xc - y, yc + x);
//        glVertex2i(xc + y, yc - x);
//        glVertex2i(xc - y, yc - x);
//
//        if (d < 0) {
//            d += (2 * x) + 3;
//        } else {
//            d += (2 * (x - y)) + 5;
//            y--;
//        }
//
//        x++;
//    }
//
//    glEnd();
//}
//
//void display() {
//    glClearColor(0.0f, 0.0f, 0.0f, 1.0f);
//    glClear(GL_COLOR_BUFFER_BIT);
//    glColor3f(1.0, 1.0, 1.0);
//
//    // Call the drawCircle function with the desired coordinates and radius
//    drawCircle(250, 250, 100); // Example coordinates and radius for the circle
//
//    glFlush();
//}
//
//int main(int argc, char** argv) {
//    glutInit(&argc, argv);
//    glutInitDisplayMode(GLUT_SINGLE | GLUT_RGB);
//    glutInitWindowSize(500, 500);
//    glutCreateWindow("Midpoint Circle Drawing Algorithm");
//    gluOrtho2D(0, 500, 0, 500);
//
//    glutDisplayFunc(display);
//    glutMainLoop();
//    return 0;
//}
