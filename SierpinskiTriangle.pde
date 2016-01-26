public void setup()
{
	size(700, 700);
}
public void draw()
{
	sierpinski(100, 500, 500);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
	if(len > 20) {
		triangle(x, y, x+((len/2)/2), y-(len/2), x+(len/2), y); // triangle with height and width of len/2
		sierpinski(x+(len/2), y, len-1);
		// sierpinski(x+(len/4), y-(len/2), len-1);
	}
	else {
		triangle(x, y, x+(len/2), y+len, x+len, y); // triangle with height and width of len
	}
}