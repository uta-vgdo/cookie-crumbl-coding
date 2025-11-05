extends Control

@export var cookie_button : TextureButton

@export var score_label : Label

@export var grandma_timer : Timer

var cookies = 0
var grandma = 0

func _on_texture_button_pressed() -> void:
    cookies += 1
    score_label.text = str("Cookies: %s" % cookies)


func _on_grandma_button_pressed() -> void:
    if cookies >= 10:
        cookies -= 10
        score_label.text = str("Cookies: %s" % cookies)
        grandma += 1
        grandma_timer.start()
    else:
        score_label.text = str("Not enough cookies!")
        print("Not enough cookies")
        


func _on_grandma_timer_timeout() -> void:
    print("Grandma made cookie")
    cookies += grandma
    score_label.text = str("Cookies: %s" % cookies)
