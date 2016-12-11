///DisplayText (x, y, text)
textx = argument0;
texty = argument1;
text = argument2;

len = string_length(text);
for(i=1;i<=len;i+=1)
{
    letter = string_char_at(text, i);
    ascii = ord(letter);
    if ascii >= 65 && ascii <= 90
        draw_sprite(spr_font,ascii - 65,textx + i*7,texty);
    if ascii == 58
        draw_sprite(spr_font,68,textx + i*7,texty);
    if ascii >= 49 && ascii <=57
        draw_sprite(spr_font,ascii + 3,textx + i*7,texty);
    if ascii == 48
        draw_sprite(spr_font,61,textx + i*7,texty);
    if ascii >= 97
        draw_sprite(spr_font,ascii - 71,textx + i*7,texty);
}
