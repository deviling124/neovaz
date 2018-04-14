--[[
===============================================================================
	filename : monsterskill.lua
	path     : Epoch\data\script 
===============================================================================

	1. one time condition 
		ONETIME_LIFE_PERCENT_LESS, // p1:hp
		ONETIME_MANA_PERCENT_LESS, // p1:mp
		ONETIME_DBUFF_COUNT_GREATER, // p1:dbuff count 
		
	2. iterative condition
		ITERATIVE_PER_TICK, // p1: probability of firing skill
		
	3. event condition
		EVENT_CRITICAL_ATTACKED, // p1: probability of firing skill
		EVENT_CRITICAL_ATTACK,   // p1: probability of firing skill
===============================================================================
--]] 



-------------------------------------------------------------------------------

lua_trace("Begin Processing monsterskill.lua")


-------------------------------------------------------------------------------
-- Igsirt : 이그시르트
-------------------------------------------------------------------------------
trigger = g_LuaTiggerManager:f_create_trigger()
trigger:f_add_type(20003)

trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 90)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 80)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 70)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 60)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 50)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 30)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 30)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_DBUFF_COUNT_GREATER", 3)

trigger:f_add_skill_condition("M_CHAOSPOISON", "ITERATIVE_PER_TICK", 30)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ITERATIVE_PER_TICK", 30)
trigger:f_add_skill_condition("M_STUN", "ITERATIVE_PER_TICK", 30)
trigger:f_add_skill_condition("M_STUN", "EVENT_CRITICAL_ATTACK", 30)

-------------------------------------------------------------------------------
-- Ruinte : 루인테
-------------------------------------------------------------------------------
trigger = g_LuaTiggerManager:f_create_trigger()
trigger:f_add_type(20004)

trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 90)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_LIFE_PERCENT_LESS", 80)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 70)
trigger:f_add_skill_condition("M_STUN", "ITERATIVE_PER_TICK", 30)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ITERATIVE_PER_TICK", 30)

trigger:f_add_skill_condition("M_STUN", "EVENT_CRITICAL_ATTACK", 30)


-------------------------------------------------------------------------------
-- Stratus : 스트라투스
-------------------------------------------------------------------------------
trigger = g_LuaTiggerManager:f_create_trigger()
trigger:f_add_type(20005)

trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 80)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 50)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_LIFE_PERCENT_LESS", 40)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 35)
trigger:f_add_skill_condition("M_STUN", "ITERATIVE_PER_TICK", 30)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ITERATIVE_PER_TICK", 20)

-------------------------------------------------------------------------------
-- Lebigel : 레비겔
-------------------------------------------------------------------------------
trigger = g_LuaTiggerManager:f_create_trigger()
trigger:f_add_type(20006)

trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 90)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_LIFE_PERCENT_LESS", 70)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_LIFE_PERCENT_LESS", 50)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 30)
trigger:f_add_skill_condition("M_STUN", "ITERATIVE_PER_TICK", 40)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ITERATIVE_PER_TICK", 30)

-------------------------------------------------------------------------------
-- Hellcargo : 헬카르고
-------------------------------------------------------------------------------
trigger = g_LuaTiggerManager:f_create_trigger()
trigger:f_add_type(20007)

trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 90)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 70)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 30)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 30)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_DBUFF_COUNT_GREATER", 3)

trigger:f_add_skill_condition("M_CHAOSPOISON", "ITERATIVE_PER_TICK", 30)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ITERATIVE_PER_TICK", 30)

trigger:f_add_skill_condition("M_STUN", "ITERATIVE_PER_TICK", 30)
trigger:f_add_skill_condition("M_STUN", "EVENT_CRITICAL_ATTACK", 30)

-------------------------------------------------------------------------------
-- Death_Caizel : 데스카이젤
-------------------------------------------------------------------------------
trigger = g_LuaTiggerManager:f_create_trigger()
trigger:f_add_type(20008)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 50)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 30)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 30)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_DBUFF_COUNT_GREATER", 3)

trigger:f_add_skill_condition("M_CHAOSCRASH", "ITERATIVE_PER_TICK", 30)

trigger:f_add_skill_condition("M_STUN", "ITERATIVE_PER_TICK", 30)
trigger:f_add_skill_condition("M_STUN", "EVENT_CRITICAL_ATTACK", 30)

-------------------------------------------------------------------------------
-- Groghto : 그로토 
-------------------------------------------------------------------------------
trigger = g_LuaTiggerManager:f_create_trigger()
trigger:f_add_type(20009)

trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 50)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 40)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 30)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_DBUFF_COUNT_GREATER", 3)

trigger:f_add_skill_condition("M_CHAOSPOISON", "ITERATIVE_PER_TICK", 30)

trigger:f_add_skill_condition("M_STUN", "ITERATIVE_PER_TICK", 30)
trigger:f_add_skill_condition("M_STUN", "EVENT_CRITICAL_ATTACK", 30)

-------------------------------------------------------------------------------
-- Belzev : 베르제브
-------------------------------------------------------------------------------
trigger = g_LuaTiggerManager:f_create_trigger()
trigger:f_add_type(20010)

trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 50)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_LIFE_PERCENT_LESS", 40)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 30)

trigger:f_add_skill_condition("M_CHAOSSHOCK", "ITERATIVE_PER_TICK", 30)

trigger:f_add_skill_condition("M_STUN", "ITERATIVE_PER_TICK", 30)
trigger:f_add_skill_condition("M_STUN", "EVENT_CRITICAL_ATTACK", 30)

-------------------------------------------------------------------------------
-- Varsyon : 바르시온 
-------------------------------------------------------------------------------
trigger = g_LuaTiggerManager:f_create_trigger()
trigger:f_add_type(20011)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 40)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_MANA_PERCENT_LESS", 30)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_DBUFF_COUNT_GREATER", 3)

trigger:f_add_skill_condition("M_CHAOSPOISON", "ITERATIVE_PER_TICK", 30)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ITERATIVE_PER_TICK", 30)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ITERATIVE_PER_TICK", 30)

trigger:f_add_skill_condition("M_STUN", "ITERATIVE_PER_TICK", 30)
trigger:f_add_skill_condition("M_STUN", "EVENT_CRITICAL_ATTACKED", 30)
trigger:f_add_skill_condition("M_STUN", "EVENT_CRITICAL_ATTACK", 30)

-------------------------------------------------------------------------------
-- Aquarias : 아쿠아리어스 
-------------------------------------------------------------------------------
trigger = g_LuaTiggerManager:f_create_trigger()
trigger:f_add_type(20012)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 40)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_MANA_PERCENT_LESS", 30)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_DBUFF_COUNT_GREATER", 3)

trigger:f_add_skill_condition("M_CHAOSPOISON", "ITERATIVE_PER_TICK", 30)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ITERATIVE_PER_TICK", 30)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ITERATIVE_PER_TICK", 30)

trigger:f_add_skill_condition("M_STUN", "ITERATIVE_PER_TICK", 30)
trigger:f_add_skill_condition("M_STUN", "EVENT_CRITICAL_ATTACKED", 30)
trigger:f_add_skill_condition("M_STUN", "EVENT_CRITICAL_ATTACK", 30)


-------------------------------------------------------------------------------
-- Mock duck metal : 메탈 모크덕 
-------------------------------------------------------------------------------
trigger = g_LuaTiggerManager:f_create_trigger()
trigger:f_add_type(40001)

trigger:f_add_skill_condition("M_CHAOS_MIND", "ONETIME_LIFE_PERCENT_LESS", 90)
trigger:f_add_skill_condition("M_CHAOS_MIND", "ONETIME_LIFE_PERCENT_LESS", 60)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 50)

trigger:f_add_skill_condition("M_CHAOSCRASH", "ITERATIVE_PER_TICK", 30)

trigger:f_add_skill_condition("M_STUN", "ITERATIVE_PER_TICK", 30)
trigger:f_add_skill_condition("M_STUN", "EVENT_CRITICAL_ATTACKED", 30)
trigger:f_add_skill_condition("M_STUN", "EVENT_CRITICAL_ATTACK", 30)

-------------------------------------------------------------------------------
-- Mega Mock duck robot : 메가 모크덕 로보
-------------------------------------------------------------------------------
trigger = g_LuaTiggerManager:f_create_trigger()
trigger:f_add_type(40008)

trigger:f_add_skill_condition("M_CHAOS_DISPEL", "ONETIME_LIFE_PERCENT_LESS", 95)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 60)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_MANA_PERCENT_LESS", 30)

trigger:f_add_skill_condition("M_CHAOSCRASH", "ITERATIVE_PER_TICK", 30)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ITERATIVE_PER_TICK", 30)

trigger:f_add_skill_condition("M_STUN", "ITERATIVE_PER_TICK", 20)
trigger:f_add_skill_condition("M_STUN", "EVENT_CRITICAL_ATTACKED", 20)
trigger:f_add_skill_condition("M_STUN", "EVENT_CRITICAL_ATTACK", 20)


-------------------------------------------------------------------------------
-- Ork Kinght	오크 나이트
-------------------------------------------------------------------------------
trigger = g_LuaTiggerManager:f_create_trigger()
trigger:f_add_type(50042)

trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_LIFE_PERCENT_LESS", 50)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_LIFE_PERCENT_LESS", 10)


-------------------------------------------------------------------------------
-- Lezmund	레즈먼드
-------------------------------------------------------------------------------
trigger = g_LuaTiggerManager:f_create_trigger()
trigger:f_add_type(50043)

trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_LIFE_PERCENT_LESS", 50)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_LIFE_PERCENT_LESS", 10)


-------------------------------------------------------------------------------
-- Pixy Queen	픽시 퀸
-------------------------------------------------------------------------------
trigger = g_LuaTiggerManager:f_create_trigger()
trigger:f_add_type(50044)

trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_LIFE_PERCENT_LESS", 50)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_LIFE_PERCENT_LESS", 10)


-------------------------------------------------------------------------------
-- Cellinon nayar	셀리논 나야르
-------------------------------------------------------------------------------
trigger = g_LuaTiggerManager:f_create_trigger()
trigger:f_add_type(50048)

trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_LIFE_PERCENT_LESS", 50)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_LIFE_PERCENT_LESS", 10)

-------------------------------------------------------------------------------
-- Valdeck Blaw	발덱 블로우
-------------------------------------------------------------------------------
trigger = g_LuaTiggerManager:f_create_trigger()
trigger:f_add_type(50050)

trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 90)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 60)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 30)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_DBUFF_COUNT_GREATER", 3)

trigger:f_add_skill_condition("M_CHAOSCRASH", "ITERATIVE_PER_TICK", 30)

-------------------------------------------------------------------------------
-- Blunt Santa_1 : 블런트 산타1 - 40레벨
-------------------------------------------------------------------------------
trigger = g_LuaTiggerManager:f_create_trigger()
trigger:f_add_type(40009)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 50)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 30)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 30)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_DBUFF_COUNT_GREATER", 3)

trigger:f_add_skill_condition("M_CHAOSCRASH", "ITERATIVE_PER_TICK", 30)

trigger:f_add_skill_condition("M_STUN", "ITERATIVE_PER_TICK", 30)
trigger:f_add_skill_condition("M_STUN", "EVENT_CRITICAL_ATTACK", 30)

-------------------------------------------------------------------------------
-- Blunt Santa_1 : 블런트 산타2 - 60레벨
-------------------------------------------------------------------------------
trigger = g_LuaTiggerManager:f_create_trigger()
trigger:f_add_type(40010)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 50)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 30)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 30)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_DBUFF_COUNT_GREATER", 3)

trigger:f_add_skill_condition("M_CHAOSCRASH", "ITERATIVE_PER_TICK", 30)

trigger:f_add_skill_condition("M_STUN", "ITERATIVE_PER_TICK", 30)
trigger:f_add_skill_condition("M_STUN", "EVENT_CRITICAL_ATTACK", 30)

-------------------------------------------------------------------------------
-- Soul Guardian : 타락한 영혼의 수호자 - 45레벨 --------테섭 스킬 추가
-------------------------------------------------------------------------------
trigger = g_LuaTiggerManager:f_create_trigger()
trigger:f_add_type(508)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 50)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 40)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 30)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_DBUFF_COUNT_GREATER", 3)

trigger:f_add_skill_condition("M_CHAOSCRASH", "ITERATIVE_PER_TICK", 20)
trigger:f_add_skill_condition("M_STUN", "ITERATIVE_PER_TICK", 20)
trigger:f_add_skill_condition("M_STUN", "EVENT_CRITICAL_ATTACK", 20)

-------------------------------------------------------------------------------
-- Mino : 몰레크 - 45레벨
-------------------------------------------------------------------------------
trigger = g_LuaTiggerManager:f_create_trigger()
trigger:f_add_type(509)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 50)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 40)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 30)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_DBUFF_COUNT_GREATER", 3)

trigger:f_add_skill_condition("M_CHAOSCRASH", "ITERATIVE_PER_TICK", 20)

trigger:f_add_skill_condition("M_STUN", "ITERATIVE_PER_TICK", 20)
trigger:f_add_skill_condition("M_STUN", "EVENT_CRITICAL_ATTACK", 20)

-------------------------------------------------------------------------------
-- BloodyLord : 블러디 로드 - 51레벨
-------------------------------------------------------------------------------
trigger = g_LuaTiggerManager:f_create_trigger()
trigger:f_add_type(510)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 80)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 60)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 50)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 40)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_DBUFF_COUNT_GREATER", 3)

trigger:f_add_skill_condition("M_CHAOSCRASH", "ITERATIVE_PER_TICK", 20)

trigger:f_add_skill_condition("M_STUN", "ITERATIVE_PER_TICK", 20)
trigger:f_add_skill_condition("M_STUN", "EVENT_CRITICAL_ATTACK", 20)

-------------------------------------------------------------------------------
-- HornHeadpiece : 빅터 블렌 남작의 망령 - 60레벨
-------------------------------------------------------------------------------
trigger = g_LuaTiggerManager:f_create_trigger()
trigger:f_add_type(559)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 80)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 60)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 40)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_DBUFF_COUNT_GREATER", 3)

trigger:f_add_skill_condition("M_CHAOSCRASH", "ITERATIVE_PER_TICK", 20)

trigger:f_add_skill_condition("M_STUN", "ITERATIVE_PER_TICK", 20)
trigger:f_add_skill_condition("M_STUN", "EVENT_CRITICAL_ATTACK", 20)

-------------------------------------------------------------------------------
-- Drangon1 : 푸른수염 니드호그 - 65레벨
-------------------------------------------------------------------------------
trigger = g_LuaTiggerManager:f_create_trigger()
trigger:f_add_type(569)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 80)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 50)
trigger:f_add_skill_condition("M_CHAOS_VACUUM", "ONETIME_LIFE_PERCENT_LESS", 30)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_DBUFF_COUNT_GREATER", 3)

trigger:f_add_skill_condition("M_CHAOSCRASH", "ITERATIVE_PER_TICK", 20)

trigger:f_add_skill_condition("M_STUN", "ITERATIVE_PER_TICK", 20)
trigger:f_add_skill_condition("M_STUN", "EVENT_CRITICAL_ATTACK", 20)

-------------------------------------------------------------------------------
-- Drangon2 : 붉은수염 린드부름 - 65레벨
-------------------------------------------------------------------------------
trigger = g_LuaTiggerManager:f_create_trigger()
trigger:f_add_type(570)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 80)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 50)
trigger:f_add_skill_condition("M_CHAOS_VACUUM", "ONETIME_LIFE_PERCENT_LESS", 30)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_DBUFF_COUNT_GREATER", 3)

trigger:f_add_skill_condition("M_CHAOSCRASH", "ITERATIVE_PER_TICK", 20)

trigger:f_add_skill_condition("M_STUN", "ITERATIVE_PER_TICK", 20)
trigger:f_add_skill_condition("M_STUN", "EVENT_CRITICAL_ATTACK", 20)

-------------------------------------------------------------------------------
-- Demon Hezword : 드몬 헤즈워드 - 40레벨
-------------------------------------------------------------------------------
trigger = g_LuaTiggerManager:f_create_trigger()
trigger:f_add_type(2019)
trigger:f_add_skill_condition("M_CHAOS_DISPEL", "ONETIME_LIFE_PERCENT_LESS", 60)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 50)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 30)
trigger:f_add_skill_condition("M_CHAOS_DISPEL", "ONETIME_DBUFF_COUNT_GREATER", 3)

trigger:f_add_skill_condition("M_CHAOSCRASH", "ITERATIVE_PER_TICK", 20)

trigger:f_add_skill_condition("M_STUN", "ITERATIVE_PER_TICK", 20)
trigger:f_add_skill_condition("M_STUN", "EVENT_CRITICAL_ATTACK", 20)

-------------------------------------------------------------------------------
-- D_BoomBoom : 붐붐 - 30레벨
-------------------------------------------------------------------------------
trigger = g_LuaTiggerManager:f_create_trigger()
trigger:f_add_type(2020)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 80)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_LIFE_PERCENT_LESS", 60)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 40)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 20)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_DBUFF_COUNT_GREATER", 3)

trigger:f_add_skill_condition("M_CHAOSCRASH", "ITERATIVE_PER_TICK", 20)

trigger:f_add_skill_condition("M_STUN", "ITERATIVE_PER_TICK", 20)
trigger:f_add_skill_condition("M_STUN", "EVENT_CRITICAL_ATTACK", 20)

-------------------------------------------------------------------------------
-- D_Lord of the Darkness : 암흑의 지배자 - 65레벨
-------------------------------------------------------------------------------
trigger = g_LuaTiggerManager:f_create_trigger()
trigger:f_add_type(20000)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_LIFE_PERCENT_LESS", 80)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 60)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 50)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 30)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_DBUFF_COUNT_GREATER", 3)

trigger:f_add_skill_condition("M_CHAOSCRASH", "ITERATIVE_PER_TICK", 20)

trigger:f_add_skill_condition("M_STUN", "ITERATIVE_PER_TICK", 20)
trigger:f_add_skill_condition("M_STUN", "EVENT_CRITICAL_ATTACK", 20)

-------------------------------------------------------------------------------
-- D_Amadeus_de_Roha : 아마데우스 데 로하 - 70레벨
-------------------------------------------------------------------------------
trigger = g_LuaTiggerManager:f_create_trigger()
trigger:f_add_type(20001)
trigger:f_add_skill_condition("M_CHAOS_SILENCE", "ONETIME_LIFE_PERCENT_LESS", 70)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 50)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_LIFE_PERCENT_LESS", 50)
trigger:f_add_skill_condition("M_CHAOS_SILENCE", "ONETIME_LIFE_PERCENT_LESS", 40)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 30)
trigger:f_add_skill_condition("M_CHAOS_SILENCE", "ONETIME_DBUFF_COUNT_GREATER", 3)

trigger:f_add_skill_condition("M_CHAOSCRASH", "ITERATIVE_PER_TICK", 20)

trigger:f_add_skill_condition("M_STUN", "ITERATIVE_PER_TICK", 20)
trigger:f_add_skill_condition("M_STUN", "EVENT_CRITICAL_ATTACK", 20)


-------------------------------------------------------------------------------
-- Janus_une_Roha : 자이누스 우네 로하 - 75레벨
-------------------------------------------------------------------------------
trigger = g_LuaTiggerManager:f_create_trigger()
trigger:f_add_type(20002)
trigger:f_add_skill_condition("M_CHAOS_SILENCE", "ONETIME_LIFE_PERCENT_LESS", 70)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 50)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_LIFE_PERCENT_LESS", 50)
trigger:f_add_skill_condition("M_CHAOS_SILENCE", "ONETIME_LIFE_PERCENT_LESS", 40)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 30)
trigger:f_add_skill_condition("M_CHAOS_SILENCE", "ONETIME_DBUFF_COUNT_GREATER", 3)

trigger:f_add_skill_condition("M_CHAOSCRASH", "ITERATIVE_PER_TICK", 20)

trigger:f_add_skill_condition("M_STUN", "ITERATIVE_PER_TICK", 20)
trigger:f_add_skill_condition("M_STUN", "EVENT_CRITICAL_ATTACK", 20)




-------------------------------------------------------------------------------
-- Maera : 제2재상 마에라	
-------------------------------------------------------------------------------
trigger = g_LuaTiggerManager:f_create_trigger()
trigger:f_add_type(50051)

trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_LIFE_PERCENT_LESS", 50)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_LIFE_PERCENT_LESS", 10)

-------------------------------------------------------------------------------
-- Silian : 제3재상 실리안
-------------------------------------------------------------------------------
trigger = g_LuaTiggerManager:f_create_trigger()
trigger:f_add_type(50052)

trigger:f_add_skill_condition("M_CHAOS_DISPEL", "ONETIME_LIFE_PERCENT_LESS", 80)
trigger:f_add_skill_condition("M_CHAOS_DISPEL", "ONETIME_LIFE_PERCENT_LESS", 40)

-------------------------------------------------------------------------------
-- Head Disciple of Devtor : 데브토르의 수제자
-------------------------------------------------------------------------------
trigger = g_LuaTiggerManager:f_create_trigger()
trigger:f_add_type(50054)

trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 80)
trigger:f_add_skill_condition("M_CHAOS_SILENCE", "ONETIME_LIFE_PERCENT_LESS", 40)

-------------------------------------------------------------------------------
-- Florenze : 플로렌스
-------------------------------------------------------------------------------
trigger = g_LuaTiggerManager:f_create_trigger()
trigger:f_add_type(40012)

trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 80)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 45)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 10)

lua_trace("End Processing monsterskill.lua")


-------------------------------------------------------------------------------
-- Bisnable35 : 비스나들 - 35레벨
-------------------------------------------------------------------------------
trigger = g_LuaTiggerManager:f_create_trigger()
trigger:f_add_type(40033)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 50)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 40)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 30)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_DBUFF_COUNT_GREATER", 3)

trigger:f_add_skill_condition("M_CHAOSCRASH", "ITERATIVE_PER_TICK", 20)

trigger:f_add_skill_condition("M_STUN", "ITERATIVE_PER_TICK", 20)
trigger:f_add_skill_condition("M_STUN", "EVENT_CRITICAL_ATTACK", 20)


-------------------------------------------------------------------------------
-- Bisnadle50 : 비스나들 - 50레벨
-------------------------------------------------------------------------------
trigger = g_LuaTiggerManager:f_create_trigger()
trigger:f_add_type(40034)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_LIFE_PERCENT_LESS", 80)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 60)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 50)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 30)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_DBUFF_COUNT_GREATER", 3)

trigger:f_add_skill_condition("M_CHAOSCRASH", "ITERATIVE_PER_TICK", 20)

trigger:f_add_skill_condition("M_STUN", "ITERATIVE_PER_TICK", 20)
trigger:f_add_skill_condition("M_STUN", "EVENT_CRITICAL_ATTACK", 20)


-------------------------------------------------------------------------------
-- Bisnadle75  : 비스나들 - 75레벨 
-------------------------------------------------------------------------------
trigger = g_LuaTiggerManager:f_create_trigger()
trigger:f_add_type(40035)

trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 50)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 40)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 30)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_DBUFF_COUNT_GREATER", 3)

trigger:f_add_skill_condition("M_CHAOSPOISON", "ITERATIVE_PER_TICK", 30)

trigger:f_add_skill_condition("M_STUN", "ITERATIVE_PER_TICK", 30)
trigger:f_add_skill_condition("M_STUN", "EVENT_CRITICAL_ATTACK", 30)

-------------------------------------------------------------------------------
-- silva of the wind : 바람의 여신 실바
-------------------------------------------------------------------------------
trigger = g_LuaTiggerManager:f_create_trigger()
trigger:f_add_type(20013)

trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 85)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 80)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_LIFE_PERCENT_LESS", 65)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 50)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 45)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 40)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_LIFE_PERCENT_LESS", 35)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 33)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 30)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_LIFE_PERCENT_LESS", 25)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 20)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 18)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 15)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 10)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 8)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 5)

trigger:f_add_skill_condition("M_CHAOSPOISON", "ITERATIVE_PER_TICK", 30)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ITERATIVE_PER_TICK", 30)
trigger:f_add_skill_condition("M_STUN", "ITERATIVE_PER_TICK", 30)
trigger:f_add_skill_condition("M_STUN", "EVENT_CRITICAL_ATTACK", 30)


-------------------------------------------------------------------------------
-- syrephis of despair : 절망의 여신 시레피스
-------------------------------------------------------------------------------
trigger = g_LuaTiggerManager:f_create_trigger()
trigger:f_add_type(20014)

trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 80)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_LIFE_PERCENT_LESS", 70)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 60)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 50)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_LIFE_PERCENT_LESS", 45)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 40)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 35)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 30)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 25)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 20)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 15)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 5)

trigger:f_add_skill_condition("M_CHAOSPOISON", "ITERATIVE_PER_TICK", 25)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ITERATIVE_PER_TICK", 25)
trigger:f_add_skill_condition("M_STUN", "ITERATIVE_PER_TICK", 25)
trigger:f_add_skill_condition("M_STUN", "EVENT_CRITICAL_ATTACK", 25)

-------------------------------------------------------------------------------
-- sylia lon of vain : 허무의 여신 실리아 론
-------------------------------------------------------------------------------
trigger = g_LuaTiggerManager:f_create_trigger()
trigger:f_add_type(20015)

trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 80)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_LIFE_PERCENT_LESS", 70)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 60)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 50)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_LIFE_PERCENT_LESS", 40)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 30)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 20)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 10)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 5)

trigger:f_add_skill_condition("M_CHAOSCRASH", "ITERATIVE_PER_TICK", 20)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ITERATIVE_PER_TICK", 10)
trigger:f_add_skill_condition("M_STUN", "ITERATIVE_PER_TICK", 35)
trigger:f_add_skill_condition("M_STUN", "EVENT_CRITICAL_ATTACK", 35)


-------------------------------------------------------------------------------
-- shuriel of dazzling : 현혹의 여신 슈리엘
-------------------------------------------------------------------------------
trigger = g_LuaTiggerManager:f_create_trigger()
trigger:f_add_type(20016)

trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 80)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_LIFE_PERCENT_LESS", 70)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 60)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 50)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_LIFE_PERCENT_LESS", 40)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 30)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 20)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 10)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 5)

trigger:f_add_skill_condition("M_CHAOSPOISON", "ITERATIVE_PER_TICK", 30 )
trigger:f_add_skill_condition("M_CHAOSCRASH", "ITERATIVE_PER_TICK", 10)
trigger:f_add_skill_condition("M_STUN", "ITERATIVE_PER_TICK", 20)
trigger:f_add_skill_condition("M_STUN", "EVENT_CRITICAL_ATTACK", 20)


-------------------------------------------------------------------------------
-- Guard of silva : 실바의 수호자
-------------------------------------------------------------------------------
trigger = g_LuaTiggerManager:f_create_trigger()
trigger:f_add_type(20017)

trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 80)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_LIFE_PERCENT_LESS", 60)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 45)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 20)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 10)

trigger:f_add_skill_condition("M_CHAOS_SILENCE", "ITERATIVE_PER_TICK", 50)
trigger:f_add_skill_condition("M_STUN", "ITERATIVE_PER_TICK", 80)


-------------------------------------------------------------------------------
-- Yama Boss : 야마 스톰로드
-------------------------------------------------------------------------------
trigger = g_LuaTiggerManager:f_create_trigger()
trigger:f_add_type(10494)

trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 80)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 45)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 10)

trigger:f_add_skill_condition("M_STUN", "ITERATIVE_PER_TICK", 20)
-------------------------------------------------------------------------------
-- Pile of stone Boss : 돌무리의 왕
-------------------------------------------------------------------------------
trigger = g_LuaTiggerManager:f_create_trigger()
trigger:f_add_type(10495)

trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_LIFE_PERCENT_LESS", 80)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_LIFE_PERCENT_LESS", 65)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_LIFE_PERCENT_LESS", 10)

trigger:f_add_skill_condition("M_STUN", "ITERATIVE_PER_TICK", 20)

-------------------------------------------------------------------------------
-- Surkha Boss : 해방된 노예
-------------------------------------------------------------------------------
trigger = g_LuaTiggerManager:f_create_trigger()
trigger:f_add_type(10496)

trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 80)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 65)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 10)

trigger:f_add_skill_condition("M_STUN", "ITERATIVE_PER_TICK", 20)

-------------------------------------------------------------------------------
-- Sylph5 Boss : 시체발톱
-------------------------------------------------------------------------------
trigger = g_LuaTiggerManager:f_create_trigger()
trigger:f_add_type(10497)

trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 80)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 45)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 10)

trigger:f_add_skill_condition("M_STUN", "ITERATIVE_PER_TICK", 20)
-------------------------------------------------------------------------------
-- Ventus Boss : 벤투모테스
-------------------------------------------------------------------------------
trigger = g_LuaTiggerManager:f_create_trigger()
trigger:f_add_type(10498)

trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_LIFE_PERCENT_LESS", 80)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_LIFE_PERCENT_LESS", 65)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_LIFE_PERCENT_LESS", 10)

trigger:f_add_skill_condition("M_STUN", "ITERATIVE_PER_TICK", 20)

-------------------------------------------------------------------------------
-- Samael 5 Boss : 장송곡의 연주자
-------------------------------------------------------------------------------
trigger = g_LuaTiggerManager:f_create_trigger()
trigger:f_add_type(10499)

trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 80)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 65)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 10)

trigger:f_add_skill_condition("M_STUN", "ITERATIVE_PER_TICK", 20)

lua_trace("End Processing monsterskill.lua")


-------------------------------------------------------------------------------
-- New Middle Boss : 불사조 그레이
-------------------------------------------------------------------------------
trigger = g_LuaTiggerManager:f_create_trigger()
trigger:f_add_type(20018)

trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 80)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_LIFE_PERCENT_LESS", 70)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 60)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 50)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_LIFE_PERCENT_LESS", 40)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 30)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 20)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 10)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 5)

trigger:f_add_skill_condition("M_CHAOSPOISON", "ITERATIVE_PER_TICK", 30 )
trigger:f_add_skill_condition("M_CHAOSCRASH", "ITERATIVE_PER_TICK", 10)
trigger:f_add_skill_condition("M_STUN", "ITERATIVE_PER_TICK", 20)
trigger:f_add_skill_condition("M_STUN", "EVENT_CRITICAL_ATTACK", 20)


-------------------------------------------------------------------------------
-- New Middle Boss : 불사조 그린
-------------------------------------------------------------------------------
trigger = g_LuaTiggerManager:f_create_trigger()
trigger:f_add_type(20019)

trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 85)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_LIFE_PERCENT_LESS", 80)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 75)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 60)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_LIFE_PERCENT_LESS", 50)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 40)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 35)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 15)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 5)

trigger:f_add_skill_condition("M_CHAOSPOISON", "ITERATIVE_PER_TICK", 30 )
trigger:f_add_skill_condition("M_CHAOSCRASH", "ITERATIVE_PER_TICK", 10)
trigger:f_add_skill_condition("M_STUN", "ITERATIVE_PER_TICK", 20)
trigger:f_add_skill_condition("M_STUN", "EVENT_CRITICAL_ATTACK", 20)


-------------------------------------------------------------------------------
-- New Middle Boss : 카사
-------------------------------------------------------------------------------
trigger = g_LuaTiggerManager:f_create_trigger()
trigger:f_add_type(20020)

trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 80)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_LIFE_PERCENT_LESS", 70)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 60)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 50)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_LIFE_PERCENT_LESS", 40)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 30)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 20)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 10)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 5)

trigger:f_add_skill_condition("M_CHAOS_SILENCE", "ITERATIVE_PER_TICK", 50)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ITERATIVE_PER_TICK", 30 )
trigger:f_add_skill_condition("M_CHAOSCRASH", "ITERATIVE_PER_TICK", 10)
trigger:f_add_skill_condition("M_STUN", "ITERATIVE_PER_TICK", 20)
trigger:f_add_skill_condition("M_STUN", "EVENT_CRITICAL_ATTACK", 20)


-------------------------------------------------------------------------------
-- Event Boss : 카사의 환영
-------------------------------------------------------------------------------
trigger = g_LuaTiggerManager:f_create_trigger()
trigger:f_add_type(30015)

trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 80)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_LIFE_PERCENT_LESS", 70)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 60)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 50)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_LIFE_PERCENT_LESS", 40)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 30)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 20)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 10)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 5)

trigger:f_add_skill_condition("M_CHAOS_SILENCE", "ITERATIVE_PER_TICK", 50)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ITERATIVE_PER_TICK", 30 )
trigger:f_add_skill_condition("M_CHAOSCRASH", "ITERATIVE_PER_TICK", 10)
trigger:f_add_skill_condition("M_STUN", "ITERATIVE_PER_TICK", 20)
trigger:f_add_skill_condition("M_STUN", "EVENT_CRITICAL_ATTACK", 20)


-------------------------------------------------------------------------------
-- Event Boss : 카사의 사념
-------------------------------------------------------------------------------
trigger = g_LuaTiggerManager:f_create_trigger()
trigger:f_add_type(30016)

trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 80)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_LIFE_PERCENT_LESS", 70)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 60)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 50)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_LIFE_PERCENT_LESS", 40)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 30)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 20)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 10)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 5)

trigger:f_add_skill_condition("M_CHAOS_SILENCE", "ITERATIVE_PER_TICK", 50)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ITERATIVE_PER_TICK", 30 )
trigger:f_add_skill_condition("M_CHAOSCRASH", "ITERATIVE_PER_TICK", 10)
trigger:f_add_skill_condition("M_STUN", "ITERATIVE_PER_TICK", 20)
trigger:f_add_skill_condition("M_STUN", "EVENT_CRITICAL_ATTACK", 20)


-------------------------------------------------------------------------------
-- Event Boss : 카사의 형상
-------------------------------------------------------------------------------
trigger = g_LuaTiggerManager:f_create_trigger()
trigger:f_add_type(30017)

trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 80)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_LIFE_PERCENT_LESS", 70)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 60)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 50)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_LIFE_PERCENT_LESS", 40)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 30)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 20)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 10)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 5)

trigger:f_add_skill_condition("M_CHAOS_SILENCE", "ITERATIVE_PER_TICK", 50)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ITERATIVE_PER_TICK", 30 )
trigger:f_add_skill_condition("M_CHAOSCRASH", "ITERATIVE_PER_TICK", 10)
trigger:f_add_skill_condition("M_STUN", "ITERATIVE_PER_TICK", 20)
trigger:f_add_skill_condition("M_STUN", "EVENT_CRITICAL_ATTACK", 20)


-------------------------------------------------------------------------------
-- Event Boss : 화염의 세크리드
-------------------------------------------------------------------------------
trigger = g_LuaTiggerManager:f_create_trigger()
trigger:f_add_type(30018)

trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 80)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_LIFE_PERCENT_LESS", 70)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 60)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 50)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_LIFE_PERCENT_LESS", 40)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 30)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 20)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 10)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 5)

trigger:f_add_skill_condition("M_CHAOS_SILENCE", "ITERATIVE_PER_TICK", 50)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ITERATIVE_PER_TICK", 30 )
trigger:f_add_skill_condition("M_CHAOSCRASH", "ITERATIVE_PER_TICK", 10)
trigger:f_add_skill_condition("M_STUN", "ITERATIVE_PER_TICK", 20)
trigger:f_add_skill_condition("M_STUN", "EVENT_CRITICAL_ATTACK", 20)


-------------------------------------------------------------------------------
-- Makkatew : 마카츄
-------------------------------------------------------------------------------
trigger = g_LuaTiggerManager:f_create_trigger()
trigger:f_add_type(50101)

trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 70)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 55)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 20)

trigger:f_add_skill_condition("M_STUN", "ITERATIVE_PER_TICK", 44)


-------------------------------------------------------------------------------
-- Samanka : 사만카
-------------------------------------------------------------------------------
trigger = g_LuaTiggerManager:f_create_trigger()
trigger:f_add_type(50102)

trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 90)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 75)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 45)

trigger:f_add_skill_condition("M_STUN", "ITERATIVE_PER_TICK", 44)


-------------------------------------------------------------------------------
-- Ber : 베르
-------------------------------------------------------------------------------
trigger = g_LuaTiggerManager:f_create_trigger()
trigger:f_add_type(50103)

trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 70)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 55)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 20)

trigger:f_add_skill_condition("M_STUN", "ITERATIVE_PER_TICK", 44)


-------------------------------------------------------------------------------
-- Vaican : 바이칸
-------------------------------------------------------------------------------
trigger = g_LuaTiggerManager:f_create_trigger()
trigger:f_add_type(50104)

trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 70)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 55)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 20)

trigger:f_add_skill_condition("M_STUN", "ITERATIVE_PER_TICK", 44)

-------------------------------------------------------------------------------
-- insur cap : 반란군 대장91
-------------------------------------------------------------------------------
trigger = g_LuaTiggerManager:f_create_trigger()
trigger:f_add_type(16122)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 50)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 40)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 30)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_DBUFF_COUNT_GREATER", 3)

trigger:f_add_skill_condition("M_CHAOSCRASH", "ITERATIVE_PER_TICK", 20)
trigger:f_add_skill_condition("M_STUN", "ITERATIVE_PER_TICK", 20)
trigger:f_add_skill_condition("M_STUN", "EVENT_CRITICAL_ATTACK", 20)


-------------------------------------------------------------------------------
-- insur cap : 반란군 대장92
-------------------------------------------------------------------------------
trigger = g_LuaTiggerManager:f_create_trigger()
trigger:f_add_type(16123)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 80)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 50)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 40)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 30)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_DBUFF_COUNT_GREATER", 3)

trigger:f_add_skill_condition("M_CHAOSCRASH", "ITERATIVE_PER_TICK", 20)
trigger:f_add_skill_condition("M_STUN", "ITERATIVE_PER_TICK", 20)
trigger:f_add_skill_condition("M_STUN", "EVENT_CRITICAL_ATTACK", 20)


-------------------------------------------------------------------------------
-- insur cap : 반란군 대장93
-------------------------------------------------------------------------------
trigger = g_LuaTiggerManager:f_create_trigger()
trigger:f_add_type(16124)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 80)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 60)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 50)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 40)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 30)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_DBUFF_COUNT_GREATER", 3)

trigger:f_add_skill_condition("M_CHAOSCRASH", "ITERATIVE_PER_TICK", 20)
trigger:f_add_skill_condition("M_STUN", "ITERATIVE_PER_TICK", 20)
trigger:f_add_skill_condition("M_STUN", "EVENT_CRITICAL_ATTACK", 20)


-------------------------------------------------------------------------------
-- insur com : 반란군 지휘관
-------------------------------------------------------------------------------
trigger = g_LuaTiggerManager:f_create_trigger()
trigger:f_add_type(16125)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 80)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 60)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 50)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 40)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 30)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_DBUFF_COUNT_GREATER", 3)

trigger:f_add_skill_condition("M_CHAOSCRASH", "ITERATIVE_PER_TICK", 20)
trigger:f_add_skill_condition("M_STUN", "ITERATIVE_PER_TICK", 20)
trigger:f_add_skill_condition("M_STUN", "EVENT_CRITICAL_ATTACK", 20)


-------------------------------------------------------------------------------
-- keeper cap : 경비대 대장
-------------------------------------------------------------------------------
trigger = g_LuaTiggerManager:f_create_trigger()
trigger:f_add_type(16134)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 80)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 60)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 50)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 40)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 30)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_DBUFF_COUNT_GREATER", 3)

trigger:f_add_skill_condition("M_CHAOSCRASH", "ITERATIVE_PER_TICK", 20)
trigger:f_add_skill_condition("M_STUN", "ITERATIVE_PER_TICK", 20)
trigger:f_add_skill_condition("M_STUN", "EVENT_CRITICAL_ATTACK", 20)


-------------------------------------------------------------------------------
-- Dkeeper cap : 경비대 대장
-------------------------------------------------------------------------------
trigger = g_LuaTiggerManager:f_create_trigger()
trigger:f_add_type(16166)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 80)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 60)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 50)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 40)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 30)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_DBUFF_COUNT_GREATER", 3)

trigger:f_add_skill_condition("M_CHAOSCRASH", "ITERATIVE_PER_TICK", 20)
trigger:f_add_skill_condition("M_STUN", "ITERATIVE_PER_TICK", 20)
trigger:f_add_skill_condition("M_STUN", "EVENT_CRITICAL_ATTACK", 20)


-------------------------------------------------------------------------------
-- gratedevil : 어둠의 지옥악마
-------------------------------------------------------------------------------
trigger = g_LuaTiggerManager:f_create_trigger()
trigger:f_add_type(16148)

trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_LIFE_PERCENT_LESS", 80)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_LIFE_PERCENT_LESS", 65)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_LIFE_PERCENT_LESS", 10)

trigger:f_add_skill_condition("M_STUN", "ITERATIVE_PER_TICK", 20)


-------------------------------------------------------------------------------
-- gratedevil : 지배의 지옥악마
-------------------------------------------------------------------------------
trigger = g_LuaTiggerManager:f_create_trigger()
trigger:f_add_type(16149)

trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_LIFE_PERCENT_LESS", 90)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_LIFE_PERCENT_LESS", 80)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_LIFE_PERCENT_LESS", 65)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_LIFE_PERCENT_LESS", 10)

trigger:f_add_skill_condition("M_STUN", "ITERATIVE_PER_TICK", 20)


-------------------------------------------------------------------------------
-- Dkeeper cap : 친위대 대장
-------------------------------------------------------------------------------
trigger = g_LuaTiggerManager:f_create_trigger()
trigger:f_add_type(16167)

trigger:f_add_skill_condition("M_CHAOS_SILENCE", "ONETIME_LIFE_PERCENT_LESS", 70)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 50)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_LIFE_PERCENT_LESS", 50)
trigger:f_add_skill_condition("M_CHAOS_SILENCE", "ONETIME_LIFE_PERCENT_LESS", 40)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 30)
trigger:f_add_skill_condition("M_CHAOS_SILENCE", "ONETIME_DBUFF_COUNT_GREATER", 3)

trigger:f_add_skill_condition("M_CHAOSCRASH", "ITERATIVE_PER_TICK", 20)

trigger:f_add_skill_condition("M_STUN", "ITERATIVE_PER_TICK", 20)
trigger:f_add_skill_condition("M_STUN", "EVENT_CRITICAL_ATTACK", 20)


-------------------------------------------------------------------------------
-- bishop : 수석 사제
-------------------------------------------------------------------------------
trigger = g_LuaTiggerManager:f_create_trigger()
trigger:f_add_type(16168)

trigger:f_add_skill_condition("M_CHAOS_SILENCE", "ONETIME_LIFE_PERCENT_LESS", 70)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 50)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_LIFE_PERCENT_LESS", 50)
trigger:f_add_skill_condition("M_CHAOS_SILENCE", "ONETIME_LIFE_PERCENT_LESS", 40)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 30)
trigger:f_add_skill_condition("M_CHAOS_SILENCE", "ONETIME_DBUFF_COUNT_GREATER", 3)

trigger:f_add_skill_condition("M_CHAOSCRASH", "ITERATIVE_PER_TICK", 20)

trigger:f_add_skill_condition("M_STUN", "ITERATIVE_PER_TICK", 20)
trigger:f_add_skill_condition("M_STUN", "EVENT_CRITICAL_ATTACK", 20)


-------------------------------------------------------------------------------
--Puma : 퓨마
-------------------------------------------------------------------------------
trigger = g_LuaTiggerManager:f_create_trigger()
trigger:f_add_type(20023)

trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 40)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_MANA_PERCENT_LESS", 30)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_DBUFF_COUNT_GREATER", 3)

trigger:f_add_skill_condition("M_CHAOSPOISON", "ITERATIVE_PER_TICK", 30)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ITERATIVE_PER_TICK", 30)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ITERATIVE_PER_TICK", 30)

trigger:f_add_skill_condition("M_STUN", "ITERATIVE_PER_TICK", 30)
trigger:f_add_skill_condition("M_STUN", "EVENT_CRITICAL_ATTACKED", 30)
trigger:f_add_skill_condition("M_STUN", "EVENT_CRITICAL_ATTACK", 30)


-------------------------------------------------------------------------------
--Elizabeth : 에르체베트
-------------------------------------------------------------------------------
trigger = g_LuaTiggerManager:f_create_trigger()
trigger:f_add_type(20022)

trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 80)
trigger:f_add_skill_condition("M_VOLCANO", "ONETIME_LIFE_PERCENT_LESS", 70)
trigger:f_add_skill_condition("M_BLACK_HOLE", "ONETIME_LIFE_PERCENT_LESS", 60)
trigger:f_add_skill_condition("M_VOLCANO", "ONETIME_LIFE_PERCENT_LESS", 50)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 45)
trigger:f_add_skill_condition("M_VOLCANO", "ONETIME_LIFE_PERCENT_LESS", 20)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 10)

trigger:f_add_skill_condition("M_CHAOS_SILENCE", "ITERATIVE_PER_TICK", 50)
trigger:f_add_skill_condition("M_BLACK_HOLE", "ITERATIVE_PER_TICK", 30)
trigger:f_add_skill_condition("M_VOLCANO", "ITERATIVE_PER_TICK", 10)


-------------------------------------------------------------------------------
-- Bezemut : 베제뮤트
-------------------------------------------------------------------------------
trigger = g_LuaTiggerManager:f_create_trigger()
trigger:f_add_type(20021)

trigger:f_add_skill_condition("M_VOLCANO", "ONETIME_LIFE_PERCENT_LESS", 85)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 80)
trigger:f_add_skill_condition("M_VOLCANO", "ONETIME_LIFE_PERCENT_LESS", 75)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 70)
trigger:f_add_skill_condition("M_BLACK_HOLE", "ONETIME_LIFE_PERCENT_LESS", 65)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 50)
trigger:f_add_skill_condition("M_VOLCANO", "ONETIME_LIFE_PERCENT_LESS", 45)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 40)
trigger:f_add_skill_condition("M_BLACK_HOLE", "ONETIME_LIFE_PERCENT_LESS", 35)
trigger:f_add_skill_condition("M_VOLCANO", "ONETIME_LIFE_PERCENT_LESS", 33)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 30)
trigger:f_add_skill_condition("M_BLACK_HOLE", "ONETIME_LIFE_PERCENT_LESS", 25)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 20)
trigger:f_add_skill_condition("M_VOLCANO", "ONETIME_LIFE_PERCENT_LESS", 18)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 15)
trigger:f_add_skill_condition("M_BLACK_HOLE", "ONETIME_LIFE_PERCENT_LESS", 10)
trigger:f_add_skill_condition("M_VOLCANO", "ONETIME_LIFE_PERCENT_LESS", 8)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 5)

trigger:f_add_skill_condition("M_CHAOS_SILENCE", "ITERATIVE_PER_TICK", 50)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ITERATIVE_PER_TICK", 30)
trigger:f_add_skill_condition("M_BLACK_HOLE", "ITERATIVE_PER_TICK", 20)
trigger:f_add_skill_condition("M_VOLCANO", "ITERATIVE_PER_TICK", 15)



-------------------------------------------------------------------------------
-- Galatea_NA : 고통의 갈라테아 미국 - 99레벨 --------타락한 영혼의 수호자 변형
-------------------------------------------------------------------------------
trigger = g_LuaTiggerManager:f_create_trigger()
trigger:f_add_type(33001)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 30)

trigger:f_add_skill_condition("M_CHAOSCRASH", "ITERATIVE_PER_TICK", 20)
trigger:f_add_skill_condition("M_STUN", "ITERATIVE_PER_TICK", 20)
trigger:f_add_skill_condition("M_STUN", "EVENT_CRITICAL_ATTACK", 20)


-------------------------------------------------------------------------------
-- bisnadle35_NA : 허무의 비스나들 미국 - 99레벨 --------타락한 영혼의 수호자
-------------------------------------------------------------------------------
trigger = g_LuaTiggerManager:f_create_trigger()
trigger:f_add_type(33002)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 50)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 40)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 30)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_DBUFF_COUNT_GREATER", 3)

trigger:f_add_skill_condition("M_CHAOSCRASH", "ITERATIVE_PER_TICK", 20)
trigger:f_add_skill_condition("M_STUN", "ITERATIVE_PER_TICK", 20)
trigger:f_add_skill_condition("M_STUN", "EVENT_CRITICAL_ATTACK", 20)



-------------------------------------------------------------------------------
-- Demon Hezword_NA : 드몬 헤즈워드 미국 - 99레벨
-------------------------------------------------------------------------------
trigger = g_LuaTiggerManager:f_create_trigger()
trigger:f_add_type(33003)
trigger:f_add_skill_condition("M_CHAOS_DISPEL", "ONETIME_LIFE_PERCENT_LESS", 60)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 50)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 30)
trigger:f_add_skill_condition("M_CHAOS_DISPEL", "ONETIME_DBUFF_COUNT_GREATER", 3)

trigger:f_add_skill_condition("M_CHAOSCRASH", "ITERATIVE_PER_TICK", 20)

trigger:f_add_skill_condition("M_STUN", "ITERATIVE_PER_TICK", 20)
trigger:f_add_skill_condition("M_STUN", "EVENT_CRITICAL_ATTACK", 20)

-------------------------------------------------------------------------------
-- Iris_NA : 엘드리스의 딸 아이리스 미국 - 99레벨 --------타락한 영혼의 수호자
-------------------------------------------------------------------------------
trigger = g_LuaTiggerManager:f_create_trigger()
trigger:f_add_type(33004)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 50)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 40)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 30)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_DBUFF_COUNT_GREATER", 3)

trigger:f_add_skill_condition("M_CHAOSCRASH", "ITERATIVE_PER_TICK", 20)
trigger:f_add_skill_condition("M_STUN", "ITERATIVE_PER_TICK", 20)
trigger:f_add_skill_condition("M_STUN", "EVENT_CRITICAL_ATTACK", 20)


-------------------------------------------------------------------------------
-- Soul Guardian_NA : 타락한 영혼의 수호자 미국 - 99레벨 --------테섭 스킬 추가
-------------------------------------------------------------------------------
trigger = g_LuaTiggerManager:f_create_trigger()
trigger:f_add_type(33005)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 50)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 40)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 30)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_DBUFF_COUNT_GREATER", 3)

trigger:f_add_skill_condition("M_CHAOSCRASH", "ITERATIVE_PER_TICK", 20)
trigger:f_add_skill_condition("M_STUN", "ITERATIVE_PER_TICK", 20)
trigger:f_add_skill_condition("M_STUN", "EVENT_CRITICAL_ATTACK", 20)


-------------------------------------------------------------------------------
-- Mino_NA : 몰레크_미국 - 99레벨
-------------------------------------------------------------------------------
trigger = g_LuaTiggerManager:f_create_trigger()
trigger:f_add_type(33006)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 50)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 40)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 30)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_DBUFF_COUNT_GREATER", 3)

trigger:f_add_skill_condition("M_CHAOSCRASH", "ITERATIVE_PER_TICK", 20)

trigger:f_add_skill_condition("M_STUN", "ITERATIVE_PER_TICK", 20)
trigger:f_add_skill_condition("M_STUN", "EVENT_CRITICAL_ATTACK", 20)

-------------------------------------------------------------------------------
-- Orc Leader_NA : 오크 족장 미국
-------------------------------------------------------------------------------
trigger = g_LuaTiggerManager:f_create_trigger()
trigger:f_add_type(33007)

trigger:f_add_skill_condition("M_CHAOS_DISPEL", "ONETIME_LIFE_PERCENT_LESS", 95)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 60)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_MANA_PERCENT_LESS", 30)

trigger:f_add_skill_condition("M_CHAOSCRASH", "ITERATIVE_PER_TICK", 30)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ITERATIVE_PER_TICK", 30)

trigger:f_add_skill_condition("M_STUN", "ITERATIVE_PER_TICK", 20)
trigger:f_add_skill_condition("M_STUN", "EVENT_CRITICAL_ATTACKED", 20)
trigger:f_add_skill_condition("M_STUN", "EVENT_CRITICAL_ATTACK", 20)


-------------------------------------------------------------------------------
-- Florenze_NA : 플로렌스 미국 - 99레벨
-------------------------------------------------------------------------------
trigger = g_LuaTiggerManager:f_create_trigger()
trigger:f_add_type(33008)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 50)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 40)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 30)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_DBUFF_COUNT_GREATER", 3)

trigger:f_add_skill_condition("M_CHAOSCRASH", "ITERATIVE_PER_TICK", 20)

trigger:f_add_skill_condition("M_STUN", "ITERATIVE_PER_TICK", 20)
trigger:f_add_skill_condition("M_STUN", "EVENT_CRITICAL_ATTACK", 20)

-------------------------------------------------------------------------------
-- BloodyLord_NA : 블러디 로드 미국 - 51레벨
-------------------------------------------------------------------------------
trigger = g_LuaTiggerManager:f_create_trigger()
trigger:f_add_type(33009)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 80)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 60)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 50)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 40)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_DBUFF_COUNT_GREATER", 3)

trigger:f_add_skill_condition("M_CHAOSCRASH", "ITERATIVE_PER_TICK", 20)

trigger:f_add_skill_condition("M_STUN", "ITERATIVE_PER_TICK", 20)
trigger:f_add_skill_condition("M_STUN", "EVENT_CRITICAL_ATTACK", 20)


-------------------------------------------------------------------------------
-- HornHeadpiece_NA : 빅터 블렌 남작의 망령 미국 - 60레벨
-------------------------------------------------------------------------------
trigger = g_LuaTiggerManager:f_create_trigger()
trigger:f_add_type(33010)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 80)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 60)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 40)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_DBUFF_COUNT_GREATER", 3)

trigger:f_add_skill_condition("M_CHAOSCRASH", "ITERATIVE_PER_TICK", 20)

trigger:f_add_skill_condition("M_STUN", "ITERATIVE_PER_TICK", 20)
trigger:f_add_skill_condition("M_STUN", "EVENT_CRITICAL_ATTACK", 20)


-------------------------------------------------------------------------------
-- Makkapitew_NA : 사나운 마카피츄 미국 - 99레벨 --------타락한 영혼의 수호자 변형
-------------------------------------------------------------------------------
trigger = g_LuaTiggerManager:f_create_trigger()
trigger:f_add_type(33011)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 30)

trigger:f_add_skill_condition("M_CHAOSCRASH", "ITERATIVE_PER_TICK", 20)
trigger:f_add_skill_condition("M_STUN", "ITERATIVE_PER_TICK", 20)
trigger:f_add_skill_condition("M_STUN", "EVENT_CRITICAL_ATTACK", 20)

-------------------------------------------------------------------------------
-- Drangon1_NA : 푸른수염 니드호그 미국 - 99레벨
-------------------------------------------------------------------------------
trigger = g_LuaTiggerManager:f_create_trigger()
trigger:f_add_type(33012)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 80)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 50)
trigger:f_add_skill_condition("M_CHAOS_VACUUM", "ONETIME_LIFE_PERCENT_LESS", 30)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_DBUFF_COUNT_GREATER", 3)

trigger:f_add_skill_condition("M_CHAOSCRASH", "ITERATIVE_PER_TICK", 20)

trigger:f_add_skill_condition("M_STUN", "ITERATIVE_PER_TICK", 20)
trigger:f_add_skill_condition("M_STUN", "EVENT_CRITICAL_ATTACK", 20)

-------------------------------------------------------------------------------
-- Drangon2_NA : 붉은수염 린드부름 미국- 99레벨
-------------------------------------------------------------------------------
trigger = g_LuaTiggerManager:f_create_trigger()
trigger:f_add_type(33013)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 80)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 50)
trigger:f_add_skill_condition("M_CHAOS_VACUUM", "ONETIME_LIFE_PERCENT_LESS", 30)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_DBUFF_COUNT_GREATER", 3)

trigger:f_add_skill_condition("M_CHAOSCRASH", "ITERATIVE_PER_TICK", 20)

trigger:f_add_skill_condition("M_STUN", "ITERATIVE_PER_TICK", 20)
trigger:f_add_skill_condition("M_STUN", "EVENT_CRITICAL_ATTACK", 20)


-------------------------------------------------------------------------------
-- D_Lord of the Darkness_NA : 암흑의 지배자 미국- 99레벨
-------------------------------------------------------------------------------
trigger = g_LuaTiggerManager:f_create_trigger()
trigger:f_add_type(33014)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_LIFE_PERCENT_LESS", 80)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 60)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 50)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 30)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_DBUFF_COUNT_GREATER", 3)

trigger:f_add_skill_condition("M_CHAOSCRASH", "ITERATIVE_PER_TICK", 20)

trigger:f_add_skill_condition("M_STUN", "ITERATIVE_PER_TICK", 20)
trigger:f_add_skill_condition("M_STUN", "EVENT_CRITICAL_ATTACK", 20)

-------------------------------------------------------------------------------
-- D_Amadeus_de_Roha_NA : 아마데우스 데 로하 미국 - 99레벨
-------------------------------------------------------------------------------
trigger = g_LuaTiggerManager:f_create_trigger()
trigger:f_add_type(33015)
trigger:f_add_skill_condition("M_CHAOS_SILENCE", "ONETIME_LIFE_PERCENT_LESS", 70)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 50)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_LIFE_PERCENT_LESS", 50)
trigger:f_add_skill_condition("M_CHAOS_SILENCE", "ONETIME_LIFE_PERCENT_LESS", 40)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 30)
trigger:f_add_skill_condition("M_CHAOS_SILENCE", "ONETIME_DBUFF_COUNT_GREATER", 3)

trigger:f_add_skill_condition("M_CHAOSCRASH", "ITERATIVE_PER_TICK", 20)

trigger:f_add_skill_condition("M_STUN", "ITERATIVE_PER_TICK", 20)
trigger:f_add_skill_condition("M_STUN", "EVENT_CRITICAL_ATTACK", 20)


-------------------------------------------------------------------------------
-- Janus_une_Roha_NA : 자이누스 우네 로하 미국- 99레벨
-------------------------------------------------------------------------------
trigger = g_LuaTiggerManager:f_create_trigger()
trigger:f_add_type(33016)
trigger:f_add_skill_condition("M_CHAOS_SILENCE", "ONETIME_LIFE_PERCENT_LESS", 70)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 50)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_LIFE_PERCENT_LESS", 50)
trigger:f_add_skill_condition("M_CHAOS_SILENCE", "ONETIME_LIFE_PERCENT_LESS", 40)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 30)
trigger:f_add_skill_condition("M_CHAOS_SILENCE", "ONETIME_DBUFF_COUNT_GREATER", 3)

trigger:f_add_skill_condition("M_CHAOSCRASH", "ITERATIVE_PER_TICK", 20)

trigger:f_add_skill_condition("M_STUN", "ITERATIVE_PER_TICK", 20)
trigger:f_add_skill_condition("M_STUN", "EVENT_CRITICAL_ATTACK", 20)


-------------------------------------------------------------------------------
-- Aquarias_NA : 아쿠아리어스 미국
-------------------------------------------------------------------------------
trigger = g_LuaTiggerManager:f_create_trigger()
trigger:f_add_type(33017)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 40)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_MANA_PERCENT_LESS", 30)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_DBUFF_COUNT_GREATER", 3)

trigger:f_add_skill_condition("M_CHAOSPOISON", "ITERATIVE_PER_TICK", 30)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ITERATIVE_PER_TICK", 30)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ITERATIVE_PER_TICK", 30)

trigger:f_add_skill_condition("M_STUN", "ITERATIVE_PER_TICK", 30)
trigger:f_add_skill_condition("M_STUN", "EVENT_CRITICAL_ATTACKED", 30)
trigger:f_add_skill_condition("M_STUN", "EVENT_CRITICAL_ATTACK", 30)


-------------------------------------------------------------------------------
-- Death_Caizel_NA : 데스카이젤 미국
-------------------------------------------------------------------------------
trigger = g_LuaTiggerManager:f_create_trigger()
trigger:f_add_type(33018)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 50)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 30)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 30)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_DBUFF_COUNT_GREATER", 3)

trigger:f_add_skill_condition("M_CHAOSCRASH", "ITERATIVE_PER_TICK", 30)

trigger:f_add_skill_condition("M_STUN", "ITERATIVE_PER_TICK", 30)
trigger:f_add_skill_condition("M_STUN", "EVENT_CRITICAL_ATTACK", 30)

-------------------------------------------------------------------------------
-- Groghto_NA : 그로토 미국 
-------------------------------------------------------------------------------
trigger = g_LuaTiggerManager:f_create_trigger()
trigger:f_add_type(33019)

trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 50)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 40)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 30)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_DBUFF_COUNT_GREATER", 3)

trigger:f_add_skill_condition("M_CHAOSPOISON", "ITERATIVE_PER_TICK", 30)

trigger:f_add_skill_condition("M_STUN", "ITERATIVE_PER_TICK", 30)
trigger:f_add_skill_condition("M_STUN", "EVENT_CRITICAL_ATTACK", 30)

-------------------------------------------------------------------------------
-- Belzev_NA : 베르제브 미국
-------------------------------------------------------------------------------
trigger = g_LuaTiggerManager:f_create_trigger()
trigger:f_add_type(33020)

trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 50)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_LIFE_PERCENT_LESS", 40)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 30)

trigger:f_add_skill_condition("M_CHAOSSHOCK", "ITERATIVE_PER_TICK", 30)

trigger:f_add_skill_condition("M_STUN", "ITERATIVE_PER_TICK", 30)
trigger:f_add_skill_condition("M_STUN", "EVENT_CRITICAL_ATTACK", 30)

-------------------------------------------------------------------------------
-- Varsyon_NA : 바르시온 미국
-------------------------------------------------------------------------------
trigger = g_LuaTiggerManager:f_create_trigger()
trigger:f_add_type(33021)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 40)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_MANA_PERCENT_LESS", 30)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_DBUFF_COUNT_GREATER", 3)

trigger:f_add_skill_condition("M_CHAOSPOISON", "ITERATIVE_PER_TICK", 30)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ITERATIVE_PER_TICK", 30)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ITERATIVE_PER_TICK", 30)

trigger:f_add_skill_condition("M_STUN", "ITERATIVE_PER_TICK", 30)
trigger:f_add_skill_condition("M_STUN", "EVENT_CRITICAL_ATTACKED", 30)
trigger:f_add_skill_condition("M_STUN", "EVENT_CRITICAL_ATTACK", 30)



-------------------------------------------------------------------------------
-- Igsirt_NA : 이그시르트 미국
-------------------------------------------------------------------------------
trigger = g_LuaTiggerManager:f_create_trigger()
trigger:f_add_type(33022)

trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 90)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 80)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 70)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 60)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 50)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 30)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 30)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_DBUFF_COUNT_GREATER", 3)

trigger:f_add_skill_condition("M_CHAOSPOISON", "ITERATIVE_PER_TICK", 30)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ITERATIVE_PER_TICK", 30)
trigger:f_add_skill_condition("M_STUN", "ITERATIVE_PER_TICK", 30)
trigger:f_add_skill_condition("M_STUN", "EVENT_CRITICAL_ATTACK", 30)


-------------------------------------------------------------------------------
-- Ruinte_NA : 루인테 미국
-------------------------------------------------------------------------------
trigger = g_LuaTiggerManager:f_create_trigger()
trigger:f_add_type(33023)

trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 90)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_LIFE_PERCENT_LESS", 80)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 70)
trigger:f_add_skill_condition("M_STUN", "ITERATIVE_PER_TICK", 30)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ITERATIVE_PER_TICK", 30)

trigger:f_add_skill_condition("M_STUN", "EVENT_CRITICAL_ATTACK", 30)


-------------------------------------------------------------------------------
-- Stratus_NA : 스트라투스 미국
-------------------------------------------------------------------------------
trigger = g_LuaTiggerManager:f_create_trigger()
trigger:f_add_type(33024)

trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 80)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 50)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_LIFE_PERCENT_LESS", 40)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 35)
trigger:f_add_skill_condition("M_STUN", "ITERATIVE_PER_TICK", 30)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ITERATIVE_PER_TICK", 20)

-------------------------------------------------------------------------------
-- Lebigel_NA : 레비겔 미국
-------------------------------------------------------------------------------
trigger = g_LuaTiggerManager:f_create_trigger()
trigger:f_add_type(33025)

trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 90)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_LIFE_PERCENT_LESS", 70)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_LIFE_PERCENT_LESS", 50)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 30)
trigger:f_add_skill_condition("M_STUN", "ITERATIVE_PER_TICK", 40)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ITERATIVE_PER_TICK", 30)

-------------------------------------------------------------------------------
-- Hellcargo-NA : 헬카르고 미국
-------------------------------------------------------------------------------
trigger = g_LuaTiggerManager:f_create_trigger()
trigger:f_add_type(33026)

trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 90)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 70)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 30)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 30)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_DBUFF_COUNT_GREATER", 3)

trigger:f_add_skill_condition("M_CHAOSPOISON", "ITERATIVE_PER_TICK", 30)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ITERATIVE_PER_TICK", 30)

trigger:f_add_skill_condition("M_STUN", "ITERATIVE_PER_TICK", 30)
trigger:f_add_skill_condition("M_STUN", "EVENT_CRITICAL_ATTACK", 30)



-------------------------------------------------------------------------------
-- Yama Boss_NA : 야마 스톰로드 미국
-------------------------------------------------------------------------------
trigger = g_LuaTiggerManager:f_create_trigger()
trigger:f_add_type(33027)

trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 80)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 45)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 10)

trigger:f_add_skill_condition("M_STUN", "ITERATIVE_PER_TICK", 20)

-------------------------------------------------------------------------------
-- Ventus Boss_NA : 벤투모테스 미국
-------------------------------------------------------------------------------
trigger = g_LuaTiggerManager:f_create_trigger()
trigger:f_add_type(33028)

trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_LIFE_PERCENT_LESS", 80)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_LIFE_PERCENT_LESS", 65)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_LIFE_PERCENT_LESS", 10)

trigger:f_add_skill_condition("M_STUN", "ITERATIVE_PER_TICK", 20)


-------------------------------------------------------------------------------
-- silva of the wind_NA : 바람의 여신 실바 미국
-------------------------------------------------------------------------------
trigger = g_LuaTiggerManager:f_create_trigger()
trigger:f_add_type(33029)

trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 85)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 80)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_LIFE_PERCENT_LESS", 65)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 50)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 45)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 40)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_LIFE_PERCENT_LESS", 35)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 33)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 30)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_LIFE_PERCENT_LESS", 25)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 20)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 18)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 15)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 10)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 8)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 5)

trigger:f_add_skill_condition("M_CHAOSPOISON", "ITERATIVE_PER_TICK", 30)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ITERATIVE_PER_TICK", 30)
trigger:f_add_skill_condition("M_STUN", "ITERATIVE_PER_TICK", 30)
trigger:f_add_skill_condition("M_STUN", "EVENT_CRITICAL_ATTACK", 30)


-------------------------------------------------------------------------------
-- syrephis of despair_NA : 절망의 여신 시레피스 미국
-------------------------------------------------------------------------------
trigger = g_LuaTiggerManager:f_create_trigger()
trigger:f_add_type(33030)

trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 80)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_LIFE_PERCENT_LESS", 70)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 60)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 50)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_LIFE_PERCENT_LESS", 45)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 40)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 35)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 30)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 25)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 20)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 15)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 5)

trigger:f_add_skill_condition("M_CHAOSPOISON", "ITERATIVE_PER_TICK", 25)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ITERATIVE_PER_TICK", 25)
trigger:f_add_skill_condition("M_STUN", "ITERATIVE_PER_TICK", 25)
trigger:f_add_skill_condition("M_STUN", "EVENT_CRITICAL_ATTACK", 25)

-------------------------------------------------------------------------------
-- sylia lon of vain_NA : 허무의 여신 실리아 론 미국
-------------------------------------------------------------------------------
trigger = g_LuaTiggerManager:f_create_trigger()
trigger:f_add_type(33031)

trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 80)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_LIFE_PERCENT_LESS", 70)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 60)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 50)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_LIFE_PERCENT_LESS", 40)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 30)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 20)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 10)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 5)

trigger:f_add_skill_condition("M_CHAOSCRASH", "ITERATIVE_PER_TICK", 20)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ITERATIVE_PER_TICK", 10)
trigger:f_add_skill_condition("M_STUN", "ITERATIVE_PER_TICK", 35)
trigger:f_add_skill_condition("M_STUN", "EVENT_CRITICAL_ATTACK", 35)


-------------------------------------------------------------------------------
-- shuriel of dazzling_NA : 현혹의 여신 슈리엘 미국
-------------------------------------------------------------------------------
trigger = g_LuaTiggerManager:f_create_trigger()
trigger:f_add_type(33032)

trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 80)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_LIFE_PERCENT_LESS", 70)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 60)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 50)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_LIFE_PERCENT_LESS", 40)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 30)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 20)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 10)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 5)

trigger:f_add_skill_condition("M_CHAOSPOISON", "ITERATIVE_PER_TICK", 30 )
trigger:f_add_skill_condition("M_CHAOSCRASH", "ITERATIVE_PER_TICK", 10)
trigger:f_add_skill_condition("M_STUN", "ITERATIVE_PER_TICK", 20)
trigger:f_add_skill_condition("M_STUN", "EVENT_CRITICAL_ATTACK", 20)


-------------------------------------------------------------------------------
-- New Middle Boss_NA : 카사 미국
-------------------------------------------------------------------------------
trigger = g_LuaTiggerManager:f_create_trigger()
trigger:f_add_type(33033)

trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 80)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_LIFE_PERCENT_LESS", 70)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 60)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 50)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_LIFE_PERCENT_LESS", 40)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 30)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 20)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 10)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 5)

trigger:f_add_skill_condition("M_CHAOS_SILENCE", "ITERATIVE_PER_TICK", 50)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ITERATIVE_PER_TICK", 30 )
trigger:f_add_skill_condition("M_CHAOSCRASH", "ITERATIVE_PER_TICK", 10)
trigger:f_add_skill_condition("M_STUN", "ITERATIVE_PER_TICK", 20)
trigger:f_add_skill_condition("M_STUN", "EVENT_CRITICAL_ATTACK", 20)


-------------------------------------------------------------------------------
-- Mock duck metal_NA : 메탈 모크덕 미국 
-------------------------------------------------------------------------------
trigger = g_LuaTiggerManager:f_create_trigger()
trigger:f_add_type(33034)

trigger:f_add_skill_condition("M_CHAOS_MIND", "ONETIME_LIFE_PERCENT_LESS", 90)
trigger:f_add_skill_condition("M_CHAOS_MIND", "ONETIME_LIFE_PERCENT_LESS", 60)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 50)

trigger:f_add_skill_condition("M_CHAOSCRASH", "ITERATIVE_PER_TICK", 30)

trigger:f_add_skill_condition("M_STUN", "ITERATIVE_PER_TICK", 30)
trigger:f_add_skill_condition("M_STUN", "EVENT_CRITICAL_ATTACKED", 30)
trigger:f_add_skill_condition("M_STUN", "EVENT_CRITICAL_ATTACK", 30)

-------------------------------------------------------------------------------
-- Mega Mock duck robot_NA : 메가 모크덕 로보 미국
-------------------------------------------------------------------------------
trigger = g_LuaTiggerManager:f_create_trigger()
trigger:f_add_type(33035)

trigger:f_add_skill_condition("M_CHAOS_DISPEL", "ONETIME_LIFE_PERCENT_LESS", 95)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 60)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_MANA_PERCENT_LESS", 30)

trigger:f_add_skill_condition("M_CHAOSCRASH", "ITERATIVE_PER_TICK", 30)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ITERATIVE_PER_TICK", 30)

trigger:f_add_skill_condition("M_STUN", "ITERATIVE_PER_TICK", 20)
trigger:f_add_skill_condition("M_STUN", "EVENT_CRITICAL_ATTACKED", 20)
trigger:f_add_skill_condition("M_STUN", "EVENT_CRITICAL_ATTACK", 20)


-------------------------------------------------------------------------------
-- Taiwan santa_NA : 크리스마스 몬스터 미국
-------------------------------------------------------------------------------
trigger = g_LuaTiggerManager:f_create_trigger()
trigger:f_add_type(33036)

trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 90)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_LIFE_PERCENT_LESS", 70)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_LIFE_PERCENT_LESS", 50)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 30)
trigger:f_add_skill_condition("M_STUN", "ITERATIVE_PER_TICK", 40)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ITERATIVE_PER_TICK", 30)


-------------------------------------------------------------------------------
--  : 잠들지 않는 감시자 - 99레벨
-------------------------------------------------------------------------------
trigger = g_LuaTiggerManager:f_create_trigger()
trigger:f_add_type(38021)
trigger:f_add_skill_condition("M_CHAOS_SILENCE", "ONETIME_LIFE_PERCENT_LESS", 70)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 50)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_LIFE_PERCENT_LESS", 50)
trigger:f_add_skill_condition("M_CHAOS_SILENCE", "ONETIME_LIFE_PERCENT_LESS", 40)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 30)
trigger:f_add_skill_condition("M_CHAOS_SILENCE", "ONETIME_DBUFF_COUNT_GREATER", 3)

trigger:f_add_skill_condition("M_CHAOSCRASH", "ITERATIVE_PER_TICK", 20)

trigger:f_add_skill_condition("M_STUN", "ITERATIVE_PER_TICK", 20)
trigger:f_add_skill_condition("M_STUN", "EVENT_CRITICAL_ATTACK", 20)

-------------------------------------------------------------------------------
--  : 광기의 서슬 감시자 - 99레벨
-------------------------------------------------------------------------------
trigger = g_LuaTiggerManager:f_create_trigger()
trigger:f_add_type(38022)
trigger:f_add_skill_condition("M_CHAOS_SILENCE", "ONETIME_LIFE_PERCENT_LESS", 70)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 50)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_LIFE_PERCENT_LESS", 50)
trigger:f_add_skill_condition("M_CHAOS_SILENCE", "ONETIME_LIFE_PERCENT_LESS", 40)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 30)
trigger:f_add_skill_condition("M_CHAOS_SILENCE", "ONETIME_DBUFF_COUNT_GREATER", 3)

trigger:f_add_skill_condition("M_CHAOSCRASH", "ITERATIVE_PER_TICK", 20)

trigger:f_add_skill_condition("M_STUN", "ITERATIVE_PER_TICK", 20)
trigger:f_add_skill_condition("M_STUN", "EVENT_CRITICAL_ATTACK", 20)


-------------------------------------------------------------------------------
--  : 고대 암흑의 지배자 - 99레벨
-------------------------------------------------------------------------------
trigger = g_LuaTiggerManager:f_create_trigger()
trigger:f_add_type(38033)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 40)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_MANA_PERCENT_LESS", 30)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_DBUFF_COUNT_GREATER", 3)

trigger:f_add_skill_condition("M_CHAOSPOISON", "ITERATIVE_PER_TICK", 30)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ITERATIVE_PER_TICK", 30)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ITERATIVE_PER_TICK", 30)

trigger:f_add_skill_condition("M_STUN", "ITERATIVE_PER_TICK", 30)
trigger:f_add_skill_condition("M_STUN", "EVENT_CRITICAL_ATTACKED", 30)
trigger:f_add_skill_condition("M_STUN", "EVENT_CRITICAL_ATTACK", 30)