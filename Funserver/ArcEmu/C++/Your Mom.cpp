//###########################################
//  yourmom Scripted                        #
//  By Slade1000                            #
//###########################################
#include "StdAfx.h"
#include "Setup.h"
#include "Base.h"

// Boss
#define yourmom 652343

// Spells
#define spiritbolts 43383
#define wellfed 44101
#define slam 52058
#define chockingcloud 58965
#define decimate 28374
#define felcleave 38742
#define shadowbolt 47809

class yourmomAI : public ArcScriptBossAI
{
    ARCSCRIPT_FACTORY_FUNCTION(yourmomAI, ArcScriptBossAI);
    yourmomAI(Creature* pCreature) : ArcScriptBossAI(pCreature)
        {
            AddSpell(felcleave, Target_Current, 15, 0, 10);
            Addspell(shadowbolt, Target_RandomPlayer, 15, 0, 10);
            AddEmote(Event_OnCombatStart, "Im will always love you ", Text_Yell);
            AddEmote(Event_OnTargetDied, "why me", Text_Yell);
            AddEmote(Event_OnTargetDied, "no no did i beat you to hard", Text_Yell);
            AddEmote(Event_OnDied, "Its your fathers fault", Text_Yell);
        }
\tab void AIUpdate()
\tab\{
if(GetHealthPercent()<=100)  // Phase one
\tab\{
\tab      AddSpell(wellfed, Target_RandomPlayer, 100, 0, 30, 0, 0, false, "you look hungary dear here have some food", Text_Yell);
        \}       
\tab   if(GetHealthPercent()<=70) // Phase 2
\tab\
\tab\tab AddSpell(chockingcloud, Target_SecondMostHated, 100, 0, 100, 0,0, false, "oops dear burned the food", Text_Yell);
\tab}
\tab    if(GetHealthPercent()<=40) // Phase 2
\tab\{
\tab\tab AddSpell(spiritbolts, Target_ClosestPlayer, 100, 0, 100, 0,0, false, "Ahh now im getting Agrivated its ok you were always a notty child", Text_Yell);
\tab\}
\tab     if(GetHealthPercent()<=3) // Phase 2
\tab\{
\tab\tab AddSpell(decimate, Target_RandomPlayer, 100, 0, 100, 0,0, false, "I will always love you but you need a spanking", Text_Yell);
\tab\}
\tab      ParentClass::AIUpdate();     \par
             ParentClass::AIUpdate();\par
             ParentClass::AIUpdate();     \par
             ParentClass::AIUpdate();\par
\par
\tab\}\par
\};\par
\par
\par
void Setupyourmom(ScriptMgr* pScriptMgr)\par
\{\par
\tab pScriptMgr->register_creature_script(yourmom, &yourmomAI::Create);\par
\tab\par
\}\par
}
�
