#include "image.h"
#include "LCD_Test.h"
#include "LCD_1in28.h"
#include "DEV_Config.h"

// Function to draw a filled vertical ellipse
void Paint_DrawFilledEllipse(int center_x, int center_y, int a, int b, int color) {
    // Draw the filled ellipse by drawing horizontal lines for each y-value
    for (int y = -a; y <= a; y++) {
        // Calculate the width of the ellipse at this y value
        int ellipse_width = (int)(b * sqrt(1 - (y * y) / (float)(a * a)));
        // Draw the horizontal line from the left edge to the right edge of the ellipse
        Paint_DrawLine(center_x - ellipse_width, center_y + y, center_x + ellipse_width, center_y + y, color, DOT_PIXEL_1X1, LINE_STYLE_SOLID);
    }
}

void Robot_eyes()
{
	printf("LCD_1IN28_test Demo\r\n");
	DEV_Module_Init();

	printf("LCD_1IN28_ Init and Clear...\r\n");
	LCD_1IN28_SetBackLight(1000);
	LCD_1IN28_Init(VERTICAL);
	LCD_1IN28_Clear(BLACK);

	printf("Paint_NewImage\r\n");
	Paint_NewImage(LCD_1IN28_WIDTH, LCD_1IN28_HEIGHT, 0, BLACK);

	printf("Set Clear and Display Funtion\r\n");
	Paint_SetClearFuntion(LCD_1IN28_Clear);
	Paint_SetDisplayFuntion(LCD_1IN28_DrawPaint);

	printf("Paint_Clear\r\n");
	Paint_Clear(BLACK);

	//  DEV_Delay_ms(1000);
	    // Constants for the vertical ellipse, adjust for your display size
    int a = 60; // Semi-major axis (half the height of the ellipse)
    int b = 30; // Semi-minor axis (half the width of the ellipse)
    
    // Calculate the center positions of the two ellipses
    int left_eye_center_x = (LCD_1IN28_WIDTH / 2) - (2 * b);
    int right_eye_center_x = (LCD_1IN28_WIDTH / 2) + (2 * b);
    int eye_center_y = LCD_1IN28_HEIGHT / 2;

    // Clear the display
    LCD_1IN28_Clear(BLACK);

    // Draw the left eye
    Paint_DrawFilledEllipse(left_eye_center_x, eye_center_y, a, b, WHITE);
    
    // Draw the right eye
    Paint_DrawFilledEllipse(right_eye_center_x, eye_center_y, a, b, WHITE);
    

    // Add any additional drawing commands for expressions here

    printf("Display test complete\r\n");
	printf("quit...\r\n");
	// DEV_Module_Exit();
}
