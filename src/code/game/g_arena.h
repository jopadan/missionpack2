// By Dimmskii
// Only for if MISSIONPACK2 is defined
//


#ifdef MISSIONPACK2

#define	ARENA_ROUND_DELAY_TIME	2000

void 		Arena_BeginRound(void);
void 		Arena_EndRound(team_t winningTeam);
void 		Arena_TimeoutRound(void);
void 		Arena_CheckRules(void);

#endif //MISSIONPACK2
