// Brock Ferrell
// CS2401
// November 23, 2015
// Project7

#include "game.h"
#include "othello.h"
using namespace main_savitch_14;

/**
 Plays a game called Othello
 @param none
 @return an inter value (0 for Exit Screen)
 */

int main()
{
	Othello theGame;
	theGame.restart();
	theGame.play();
}
