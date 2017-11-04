if not instance_exists(target_) exit;
x = target_.x;
y = target_.y;
camera_set_view_pos(view_camera[0], x-width_/2, y-height_/2);