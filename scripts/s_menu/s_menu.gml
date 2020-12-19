function s_menu() 
{
switch(mpos){
	case 0:
	{
		room_goto(Room1)
		break;
	}
	case 1:
	{
		room_goto(HowtoPlay)
		break;
	}
	case 2:
	{
		game_end()
		break;	
	}
	default: break;
}
}