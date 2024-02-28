extends Control
var b = 0
var a = 0
var c = false
var d = 1
var e = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	$CardX1.modulate = Color(0,0,0)
	$CardX2.set_scale(Vector2(0,0))
	$CardX5.set_scale(Vector2(0,0))
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if  a <= 0.63 and c == true:
		$CardX2.set_scale(Vector2(a,a))
		$CardX5.set_scale(Vector2(a,a))
		a = a + 0.02
		
	$CardX1.modulate = Color(b,b,b)
	if b <= 1:
		b = b + 0.01
	if d ==1:
		$CardX2/Sprite2D.set_texture(preload("res://sergie.jpg"))
		$CardX2/Sprite2D.set_scale(Vector2(0.36,0.36))
		$CardX5/RichTextLabel.set_text("Sergie korolov was a russia scientist who was behind the russian space mission but he never he didnt got any credit for it and was grossly misstreated by russian communist govt people knows werner von braun")
	if d==2:
		$CardX2/Sprite2D.set_texture(preload("res://casp.jpg"))
		$CardX2/Sprite2D.set_scale(Vector2(0.36,0.36))
		$CardX5/RichTextLabel.set_text("Guy was a painter I m not muchh into painting but when you will take a look at it his work you will know why he is in the list")
	if d ==3:
		$CardX2/Sprite2D.set_texture(preload("res://amelia.png"))
		$CardX2/Sprite2D.set_scale(Vector2(0.5,0.5))
		$CardX5/RichTextLabel.set_text("My Great grandma might never had seen a plane from a close distance and while on another part of  planet theres this woman who was just an average woman goes from nurse to first avitoress to fly over atlantic ocean")
		
	if d == 4:
		$CardX2/Sprite2D.set_texture(preload("res://vangelis.jpg"))
		$CardX2/Sprite2D.set_scale(Vector2(0.45,0.45))
		$CardX5/RichTextLabel.set_text("He is music composer i JUst like him because of his bgm in chariots of fire")
	if d == 5:
		$CardX2/Sprite2D.set_texture(preload("res://pawan.jpg"))
		$CardX2/Sprite2D.set_scale(Vector2(0.45,0.45))
		$CardX5/RichTextLabel.set_text("Ab main kya hi bolu.....")
	if d == 6:
		$CardX2/Sprite2D.set_texture(preload("res://feyn.jpg"))
		$CardX2/Sprite2D.set_scale(Vector2(0.4,0.4))
		$CardX5/RichTextLabel.set_text("I am aware He is well known beausese of the feynman technique which every second productivity/study tips youtuber talks about but his personality had much more than that and he actually dont seems to be a person who would have feynman technique kind of thing I would highly recommend his book sureyly youre joking mr feynman where you wouuld get an ideas of his wit  and his personality.")
	if d == 7:
		$CardX2/Sprite2D.set_texture(preload("res://orwell.jpg"))
		$CardX2/Sprite2D.set_scale(Vector2(0.3,0.3))
		$CardX5/RichTextLabel.set_text("I know orwell is pretty famous too even in india but many indians dont know the fact that he is technically indian author by birth Yes the 1984 and animal farm writer was born in India in Motihar which was then in bengal and  now in bihar")
	$CardX5/RichTextLabel.set_visible_characters(e)
func _on_touch_screen_button_released():
	$start_sound.play()
	c = true
	$TouchScreenButton.queue_free() #Replace with function body.

	


func _on_right_pressed():
	$switch_sound.play()
	if d < 7:
		d = d+1  # Replace with function body.
	e = 0


func _on_left_pressed():
	$switch_sound.play()
	if d > 1:
		d = d -1 # Replace with function body.

	e = 0

func _on_timer_timeout():
	if e < 5000:
		e = e+1 # Replace with function body.
		$Timer.start()
