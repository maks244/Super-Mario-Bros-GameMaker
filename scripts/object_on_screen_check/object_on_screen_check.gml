function object_on_screen_check(){
	cam = view_camera[0]
	x1 = camera_get_view_x(cam)
	y1 = camera_get_view_y(cam)
	x2 = x1 + camera_get_view_width(cam)
	y2 = y1 + camera_get_view_height(cam)
	return point_in_rectangle(x, y, x1, y1, x2, y2)
}