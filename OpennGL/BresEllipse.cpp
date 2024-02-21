//#include <GL/glut.h>
//#include <cmath>
//
//void drawEllipse(int xc, int yc, int a, int b) {
//    int x = 0;
//    int y = b;
//    int a2 = a * a;
//    int b2 = b * b;
//    int d = b2 - a2 * b + a2 / 4;
//    int dx = 2 * b2 * x;
//    int dy = 2 * a2 * y;
//
//    glBegin(GL_POINTS);
//
//    // Region 1
//    while (dx < dy) {
//        glVertex2i(xc + x, yc + y);
//        glVertex2i(xc - x, yc + y);
//        glVertex2i(xc + x, yc - y);
//        glVertex2i(xc - x, yc - y);
//
//        if (d < 0) {
//            x++;
//            dx += 2 * b2;
//            d += b2 + dx;
//        } else {
//            x++;
//            y--;
//            dx += 2 * b2;
//            dy -= 2 * a2;
//            d += b2 + dx - dy;
//        }
//    }
//
//    // Region 2
//    d = b2 * (x + 0.5) * (x + 0.5) + a2 * (y - 1) * (y - 1) - a2 * b2;
//
//    while (y >= 0) {
//        glVertex2i(xc + x, yc + y);
//        glVertex2i(xc - x, yc + y);
//        glVertex2i(xc + x, yc - y);
//        glVertex2i(xc - x, yc - y);
//
//        if (d > 0) {
//            y--;
//            dy -= 2 * a2;
//            d += a2 - dy;
//        } else {
//            y--;
//            x++;
//            dx += 2 * b2;
//            dy -= 2 * a2;
//            d += a2 + dx - dy;
//        }
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
//    // Call the drawEllipse function with the desired coordinates and radii
//    drawEllipse(250, 250, 150, 100); // Example coordinates and radii for the ellipse
//
//    glFlush();
//}
//
//int main(int argc, char** argv) {
//    glutInit(&argc, argv);
//    glutInitDisplayMode(GLUT_SINGLE | GLUT_RGB);
//    glutInitWindowSize(500, 500);
//    glutCreateWindow("Bresenham Ellipse Drawing Algorithm");
//    gluOrtho2D(0, 500, 0, 500);
//
//    glutDisplayFunc(display);
//    glutMainLoop();
//    return 0;
//}
