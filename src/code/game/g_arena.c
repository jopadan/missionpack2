// By Dimmskii
// Only for if MISSIONPACK2 is defined
//

#include "g_local.h"

#ifdef MISSIONPACK2
void Arena_BeginRound( void ) {
	// Begin new round code
	level.warmupTime = level.time + g_warmup.integer * 1000;
	trap_SetConfigstring( CS_WARMUP, va("%i", level.warmupTime) );

	respawnAll();
}

vec3_t zeroVec3 = {0, 0, 0};
void Arena_EndRound( team_t winningTeam ) {
	AddTeamScore(zeroVec3, winningTeam, 1);
	
	trap_SetConfigstring( CS_SCORES1, va("%i", level.teamScores[TEAM_RED]) );
	trap_SetConfigstring( CS_SCORES2, va("%i", level.teamScores[TEAM_BLUE]) );
	
	if ( g_winlimit.integer ) {
		if ( level.teamScores[TEAM_RED] >= g_winlimit.integer || level.teamScores[TEAM_BLUE] >= g_winlimit.integer ) {
			return;
		}
	}
	
	level.arenaRoundQueued = level.time;
	
}

void Arena_TimeoutRound( void ) {
	 // TODO: You know what this is
	if ( Team_CountTotalHealth(TEAM_BLUE,qfalse)+Team_CountTotalArmor(TEAM_BLUE,qfalse) > Team_CountTotalHealth(TEAM_RED,qfalse)+Team_CountTotalArmor(TEAM_RED,qfalse) ) {
		Arena_EndRound( TEAM_BLUE );
		return;
	}
	Arena_EndRound( TEAM_RED );
}

void Arena_CheckRules( void ) {
	if ( g_gametype.integer != GT_TEAMARENA || level.warmupTime || level.intermissiontime || level.intermissionQueued ) {
		return;
	}
	
	if ( level.arenaRoundQueued ) {
		if ( level.time - level.arenaRoundQueued >= ARENA_ROUND_DELAY_TIME ) {
			level.arenaRoundQueued = 0;
			Arena_BeginRound();
		}
		return;
	}
	
	// Check if either team has no players remaining ; if so, call Arena_EndRound
	if ( Team_PlayerCountAlive(TEAM_RED) < 1 ) {
		Arena_EndRound( TEAM_BLUE ); // Blue wins the round
	} else if ( Team_PlayerCountAlive(TEAM_BLUE) < 1 ) {
		Arena_EndRound( TEAM_RED ); // Red wins the round
	}
}
#endif //MISSIONPACK2
