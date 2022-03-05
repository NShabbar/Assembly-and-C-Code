extern void draw_pixel(unsigned char line_color, int y_coor, int x_coor );
extern void fill_bitmap(unsigned char bg_color);
void rectangle(unsigned char bg_color, unsigned char line_color, int left, int top, int right, int bottom){
	int pix;
	int line;
	fill_bitmap(bg_color);
	for(pix=top; pix<=bottom; pix++){
		if(pix==top){
			for(line=left; line<=right; line++){
				draw_pixel(line_color, top, line);
			}
		}
			
		else if(pix==bottom){
			for(line=left; line<=right; line++){
				draw_pixel(line_color, bottom, line);
			}
		}
		
		else{
			draw_pixel(line_color, bottom, right);
			draw_pixel(line_color, top, left);
		}
	}
}
void main(){
	rectangle(0x48, 0xb7, 1, 6, 31, 30);
}