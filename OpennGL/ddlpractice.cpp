//#include <GL/glut.h>
//#include <cmath>
//
//void ddl(int x0,int y0,int xf,int yf){
//	int dx = xf-x0;
//	int dy = yf-y0;
//	int step;
//	
//	if (fabs(dx) > fabs(dy)){
//		step = fabs(dx);
//		
//	} else if (fabs(dy) > fabs(dx)){
//		step = fabs(dy);
//		
//	}
//	
//	float xinc = static_cast<float>(dx)/static_cast<float>(step);
//	float yinc = static_cast<float>(dy)/static_cast<float>(step);
//	
//	glBegin(GL_POINTS);
//	
//	float x = x0, y = y0;
//	
//	 for(int i=0; i<step; ++i){
//	 	glVertex2i(round(x) , round(y));
//	 	x = x+xinc;
//	 	y = y+yinc;
//	 	
//	 }
//	 glEnd();
//	
//}
//
//void display (){
//	
//	glClear(GL_COLOR_BUFFER_BIT);
//	glColor3f(1.0, 1.0, 1.0);
//    ddl(15, 18, 200, 300); 
//    glFlush();
//}
//int main(int argc, char** argv) {
//    glutInit(&argc, argv);
//    glutInitDisplayMode(GLUT_SINGLE | GLUT_RGB);
//    glutInitWindowSize(500, 500);
//    glutCreateWindow("DDA Line Drawing Algorithm");
//    glClearColor(0.0f, 0.0f, 0.0f, 1.0f);
//    gluOrtho2D(0, 500, 0, 500);
//
//    glutDisplayFunc(display);
//    glutMainLoop();
//    return 0;
//}

