//#include <GL/glut.h>
//#include <cmath>
//
//void drawEllipse(int xc, int yc, int a, int b) {
//    int x = 0;
//    int y = b;
//
//    float d1 = b * b - a * a * b + a * a / 4.0;
//    float d2;
//
//    glBegin(GL_POINTS);
//
//    // Region 1
//    while (2 * b * b * x <= 2 * a * a * y) {
//        glVertex2i(xc + x, yc + y);
//        glVertex2i(xc - x, yc + y);
//        glVertex2i(xc + x, yc - y);
//        glVertex2i(xc - x, yc - y);
//
//        if (d1 < 0) {
//            x++;
//            d1 += 2 * b * b * x + b * b;
//        } else {
//            x++;
//            y--;
//            d1 += 2 * b * b * x - 2 * a * a * y + b * b;
//        }
//    }
//
//    // Region 2
//    d2 = b * b * (x + 0.5) * (x + 0.5) + a * a * (y - 1) * (y - 1) - a * a * b * b;
//
//    while (y >= 0) {
//        glVertex2i(xc + x, yc + y);
//        glVertex2i(xc - x, yc + y);
//        glVertex2i(xc + x, yc - y);
//        glVertex2i(xc - x, yc - y);
//
//        if (d2 > 0) {
//            y--;
//            d2 -= 2 * a * a * y + a * a;
//        } else {
//            y--;
//            x++;
//            d2 += 2 * b * b * x - 2 * a * a * y + a * a;
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
//int main(int argc, char** argv) {
//    glutInit(&argc, argv);
//    glutInitDisplayMode(GLUT_SINGLE | GLUT_RGB);
//    glutInitWindowSize(500, 500);
//    glutCreateWindow("Midpoint Ellipse Drawing Algorithm");
//    gluOrtho2D(0, 500, 0, 500);
//
//    glutDisplayFunc(display);
//    glutMainLoop();
//    return 0;
//}
