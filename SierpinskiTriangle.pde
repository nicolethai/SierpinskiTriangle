public int numTriangles = 20;
public void setup()
{
	size(700, 700);
}
public void draw()
{
	background(0);
	sierpinski(100, 600, 500);
}
public void mouseMoved()//optional
{
	// use currect mouseX and mouseY!
	if(numTriangles > 0){
		if(mouseX > width/2){
			numTriangles++;
			System.out.println(numTriangles);
		}
		else {
			numTriangles--;
			System.out.println(numTriangles);
		}
	}
	else {
		numTriangles = 20;
	}
}
public void sierpinski(int x, int y, int len) 
{
	if(len > numTriangles) { // len > num : num-- -> more triangles
	// BASE CLASS : Calls Sierpinski with w & h of len x3 in different places
		sierpinski(x, y, len/2); // triangle with height and width of len/2
		sierpinski(x+(len/2), y, len/2); // triangle next to ^
		sierpinski(x+(len/4), y-(len/2), len/2); // triangle on top of two ^
	}
	else {
		triangle(x, y, x+(len/2), y-len, x+len, y); // triangle with height and width of len
	}
}