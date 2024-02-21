//#include <GL/glut.h>
//#include <cmath>
//
//const int windowWidth = 800;
//const int windowHeight = 600;
//
//void drawArc(float cx, float cy, float radius, float startAngle, float endAngle, int numSegments) {
//    glBegin(GL_LINE_STRIP);
//    for (int i = 0; i <= numSegments; ++i) {
//        float angle = startAngle + (endAngle - startAngle) * static_cast<float>(i) / static_cast<float>(numSegments);
//        float x = cx + radius * cos(angle);
//        float y = cy + radius * sin(angle);
//        glVertex2f(x, y);
//    }
//    glEnd();
//}
//
//void display() {
//    glClear(GL_COLOR_BUFFER_BIT);
//
//    glColor3f(1.0, 1.0, 1.0);  // Set color to white
//
//    // Parameters for the arc
//    float centerX = windowWidth / 2.0;
//    float centerY = windowHeight / 2.0;
//    float radius = 200.0;
//    float startAngle = 0.0;  // in radians
//    float endAngle = 3.14;   // in radians
//    int numSegments = 100;
//
//    // Draw the arc
//    drawArc(centerX, centerY, radius, startAngle, endAngle, numSegments);
//
//    glFlush();
//}
//
//void init() {
//    glClearColor(0.0, 0.0, 0.0, 0.0);  // Set clear color to black
//    glMatrixMode(GL_PROJECTION);
//    gluOrtho2D(0, windowWidth, 0, windowHeight);
//}
//
//int main(int argc, char** argv) {
//    glutInit(&argc, argv);
//    glutInitDisplayMode(GLUT_SINGLE | GLUT_RGB);
//    glutInitWindowSize(windowWidth, windowHeight);
//    glutInitWindowPosition(100, 100);
//    glutCreateWindow("OpenGL Arc");
//
//    init();
//    glutDisplayFunc(display);
//    glutMainLoop();
//
//    return 0;
//}

