extends ParallaxBackground

const MAX_LAYERS = 5
const MIN_SCALE = 0.2
const MAX_SCALE = 1.5
const MAX_SPEED = 0.01
const MIN_SPEED = 0.03
const MIN_X_POSITION = -500
const MAX_X_POSITION = 500
const MIN_Y_POSITION = -300
const MAX_Y_POSITION = 300

func _ready():
	# Create the first parallax layer
	var layer1 = ParallaxLayer.new()
	layer1.motion_scale = Vector2(0.2, 0.2)
	add_child(layer1)

	# Add a StaticBody2D with CollisionShape2D to the first layer
	var static_body1 = StaticBody2D.new()
	layer1.add_child(static_body1)
	var collision_shape1 = CollisionShape2D.new()
	var shape1 = RectangleShape2D.new()
	shape1.extents = Vector2(32, 32)
	collision_shape1.shape = shape1
	static_body1.add_child(collision_shape1)

	# Create the second parallax layer
	var layer2 = ParallaxLayer.new()
	layer2.motion_scale = Vector2(0.5, 0.5)
	add_child(layer2)

	# Add a StaticBody2D with CollisionShape2D to the second layer
	var static_body2 = StaticBody2D.new()
	layer2.add_child(static_body2)
	var collision_shape2 = CollisionShape2D.new()
	var shape2 = RectangleShape2D.new()
	shape2.extents = Vector2(64, 64)
	collision_shape2.shape = shape2
	static_body2.add_child(collision_shape2)

	# Create the third parallax layer
	var layer3 = ParallaxLayer.new()
	layer3.motion_scale = Vector2(1.0, 1.0)
	add_child(layer3)

	# Add a StaticBody2D with CollisionShape2D to the third layer
	var static_body3 = StaticBody2D.new()
	layer3.add_child(static_body3)
	var collision_shape3 = CollisionShape2D.new()
	var shape3 = RectangleShape2D.new()
	shape3.extents = Vector2(128, 128)
	collision_shape3.shape = shape3
	static_body3.add_child(collision_shape3)
	
	for i in range(MAX_LAYERS):
		create_random_layer()

func create_random_layer():
	#add a new parallax layer with a random motion scale
	var layer = ParallaxLayer.new()
	var scale = lerp(MIN_SCALE, MAX_SCALE, randf())
	layer.motion_scale = Vector2(scale, scale)
	var x_position = randf_range(MIN_X_POSITION, MAX_X_POSITION)
	var y_position = randf_range(MIN_Y_POSITION, MAX_Y_POSITION)
	layer.global_transform.origin.x = x_position
	layer.global_transform.origin.y = y_position
	add_child(layer)
	
	#add a staticbody2D and collition to the new layer
	var static_body = StaticBody2D.new()
	layer.add_child(static_body)
	var collision_shape = CollisionShape2D.new()
	var shape = RectangleShape2D.new()
	shape.extents = Vector2(32, 32)
	collision_shape.shape = shape
	static_body.add_child(collision_shape)
	
	
	
