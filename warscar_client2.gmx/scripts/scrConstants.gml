// players
globalvar PLAYER1, PLAYER2;
PLAYER1 = 0
PLAYER2 = 1

// packet types from server
globalvar OBJ_CREATE, OBJ_POS, OBJ_DESTROY, SOUND_PLAY, EFFECT_CREATE;
OBJ_CREATE = 0
PLAYER_POS = 1
OBJ_DESTROY = 2
SOUND_PLAY = 3
EFFECT_CREATE = 4

// packet types to server
globalvar INPUT;
INPUT = 0

// object types
globalvar OBSTACLE, FLAG, BULLET;
OBSTACLE = 0
FLAG = 1
BULLET = 2

// sound types
globalvar MAIN_GUN;
MAIN_GUN = 0
