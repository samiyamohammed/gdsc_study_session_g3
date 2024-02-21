//#include <GL/glut.h>
//#include <cmath>
//
//void drawLine(int x0, int y0, int xf, int yf) {
//    int dx = fabs(xf - x0);
//    int dy = fabs(yf - y0);
//    int sx = (x0 < xf) ? 1 : -1;
//    int sy = (y0 < yf) ? 1 : -1;
//
//    int err = dx - dy;
//
//    glBegin(GL_POINTS);
//
//    while (true) {
//        glVertex2i(x0, y0);
//
//        if (x0 == xf && y0 == yf) {
//            break;
//        }
//
//        int e2 = 2 * err;
//        if (e2 > -dy) {
//            err -= dy;
//            x0 += sx;
//        }
//
//        if (e2 < dx) {
//            err += dx;
//            y0 += sy;
//        }
//    }
//
//    glEnd();
//}
//
//void display() {
//    glClear(GL_COLOR_BUFFER_BIT);
//    glColor3f(1.0, 1.0, 1.0);
//
//    // Call the drawLine function with the desired coordinates
//    drawLine(10, 10, 120		, 100); // Example coordinates for the line
//
//    glFlush();
//}
//
//int main(int argc, char** argv) {
//    glutInit(&argc, argv);
//    glutInitDisplayMode(GLUT_SINGLE | GLUT_RGB);
//    glutInitWindowSize(500, 500);
//    glutCreateWindow("Bresenham Line Drawing Algorithm");
//    glClearColor(0.0f, 0.0f, 0.0f, 1.0f);
//    gluOrtho2D(0, 500, 0, 500);
//
//    glutDisplayFunc(display);
//    glutMainLoop();
//    return 0;
//}
