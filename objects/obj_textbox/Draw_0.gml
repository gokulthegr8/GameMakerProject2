/// @description Insert description here
// You can write your code in this editor
draw_rectangle(x-2,y-2,x+boxWidth+2,y+boxHeight+2,false)
draw_sprite(spr_textbox,0,x,y)

draw_set_font(fnt_text)
if(charCount<string_length(text[page])){
charCount+=0.2
}
textPart=string_copy(text[page],1,charCount)
draw_set_color(c_yellow)
draw_text(x,y+10,name)
draw_set_color(c_white)
draw_text_ext(x+xBuffer,y+heightString+yBuffer+10,textPart,heightString,boxWidth - 2*(xBuffer))
