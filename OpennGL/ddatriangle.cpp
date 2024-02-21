#include <GL/glut.h>
#include <cmath>

void drawLine(int x0, int y0, int xf, int yf) {
    int dx = xf - x0;
    int dy = yf - y0;
    int steps;

    if (fabs(dx) > fabs(dy)) {
        steps = fabs(dx);
    } else {
        steps = fabs(dy);
    }

    float xIncrement = static_cast<float>(dx) / static_cast<float>(steps);
    float yIncrement = static_cast<float>(dy) / static_cast<float>(steps);

    glBegin(GL_POINTS);

    float x = x0, y = y0;
    for (int i = 0; i < steps; ++i) {
        glVertex2i(round(x), round(y));
        x += xIncrement;
        y += yIncrement;
    }
    glEnd();
}

void drawTriangle() {
    drawLine(100, 100, 300, 100);
    drawLine(300, 100, 200, 300); 
    drawLine(200, 300, 100, 100); 
}

void display() {
    glClear(GL_COLOR_BUFFER_BIT);
    glClearColor(0.0f, 0.0f, 0.0f, 1.0f);
    
    glBegin(GL_TRIANGLES);
    glColor3f(1.0, 1.0, 0.0);
    
    glVertex2i(100, 100); 
    glVertex2i(300, 100); 
    glVertex2i(200, 300); 

    glEnd();

    glFlush();
}
int main(int argc, char** argv) {
    glutInit(&argc, argv);
    glutInitWindowSize(500, 500);
    glutCreateWindow("Triangle Drawing");
    glClearColor(0.0f, 0.0f, 0.0f, 1.0f);
    gluOrtho2D(0, 500, 0, 500);

    glutDisplayFunc(display);
    glutMainLoop();
    return 0;
}
