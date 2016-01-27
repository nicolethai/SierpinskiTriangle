public void setup()
{
	size(700, 700);
}
public void draw()
{
	background(0);
	sierpinski(100, 600, 500);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
	if(len > 20) {
		sierpinski(x, y, len/2); // triangle with height and width of len/2
		sierpinski(x+(len/2), y, len/2);
		sierpinski(x+(len/4), y-(len/2), len/2);
	}
	else {
		triangle(x, y, x+(len/2), y-len, x+len, y); // triangle with height and width of len
	}
}