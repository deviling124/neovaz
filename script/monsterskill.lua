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
-- Igsirt : �̱׽ø�Ʈ
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
-- Ruinte : ������
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
-- Stratus : ��Ʈ������
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
-- Lebigel : �����
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
-- Hellcargo : ��ī����
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
-- Death_Caizel : ����ī����
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
-- Groghto : �׷��� 
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
-- Belzev : ��������
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
-- Varsyon : �ٸ��ÿ� 
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
-- Aquarias : ����Ƹ�� 
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
-- Mock duck metal : ��Ż ��ũ�� 
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
-- Mega Mock duck robot : �ް� ��ũ�� �κ�
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
-- Ork Kinght	��ũ ����Ʈ
-------------------------------------------------------------------------------
trigger = g_LuaTiggerManager:f_create_trigger()
trigger:f_add_type(50042)

trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_LIFE_PERCENT_LESS", 50)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_LIFE_PERCENT_LESS", 10)


-------------------------------------------------------------------------------
-- Lezmund	����յ�
-------------------------------------------------------------------------------
trigger = g_LuaTiggerManager:f_create_trigger()
trigger:f_add_type(50043)

trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_LIFE_PERCENT_LESS", 50)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_LIFE_PERCENT_LESS", 10)


-------------------------------------------------------------------------------
-- Pixy Queen	�Ƚ� ��
-------------------------------------------------------------------------------
trigger = g_LuaTiggerManager:f_create_trigger()
trigger:f_add_type(50044)

trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_LIFE_PERCENT_LESS", 50)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_LIFE_PERCENT_LESS", 10)


-------------------------------------------------------------------------------
-- Cellinon nayar	������ ���߸�
-------------------------------------------------------------------------------
trigger = g_LuaTiggerManager:f_create_trigger()
trigger:f_add_type(50048)

trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_LIFE_PERCENT_LESS", 50)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_LIFE_PERCENT_LESS", 10)

-------------------------------------------------------------------------------
-- Valdeck Blaw	�ߵ� ��ο�
-------------------------------------------------------------------------------
trigger = g_LuaTiggerManager:f_create_trigger()
trigger:f_add_type(50050)

trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 90)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 60)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 30)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_DBUFF_COUNT_GREATER", 3)

trigger:f_add_skill_condition("M_CHAOSCRASH", "ITERATIVE_PER_TICK", 30)

-------------------------------------------------------------------------------
-- Blunt Santa_1 : ��Ʈ ��Ÿ1 - 40����
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
-- Blunt Santa_1 : ��Ʈ ��Ÿ2 - 60����
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
-- Soul Guardian : Ÿ���� ��ȥ�� ��ȣ�� - 45���� --------�׼� ��ų �߰�
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
-- Mino : ����ũ - 45����
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
-- BloodyLord : ���� �ε� - 51����
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
-- HornHeadpiece : ���� �� ������ ���� - 60����
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
-- Drangon1 : Ǫ������ �ϵ�ȣ�� - 65����
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
-- Drangon2 : �������� ����θ� - 65����
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
-- Demon Hezword : ��� ������� - 40����
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
-- D_BoomBoom : �պ� - 30����
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
-- D_Lord of the Darkness : ������ ������ - 65����
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
-- D_Amadeus_de_Roha : �Ƹ����콺 �� ���� - 70����
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
-- Janus_une_Roha : ���̴��� ��� ���� - 75����
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
-- Maera : ��2��� ������	
-------------------------------------------------------------------------------
trigger = g_LuaTiggerManager:f_create_trigger()
trigger:f_add_type(50051)

trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_LIFE_PERCENT_LESS", 50)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_LIFE_PERCENT_LESS", 10)

-------------------------------------------------------------------------------
-- Silian : ��3��� �Ǹ���
-------------------------------------------------------------------------------
trigger = g_LuaTiggerManager:f_create_trigger()
trigger:f_add_type(50052)

trigger:f_add_skill_condition("M_CHAOS_DISPEL", "ONETIME_LIFE_PERCENT_LESS", 80)
trigger:f_add_skill_condition("M_CHAOS_DISPEL", "ONETIME_LIFE_PERCENT_LESS", 40)

-------------------------------------------------------------------------------
-- Head Disciple of Devtor : �����丣�� ������
-------------------------------------------------------------------------------
trigger = g_LuaTiggerManager:f_create_trigger()
trigger:f_add_type(50054)

trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 80)
trigger:f_add_skill_condition("M_CHAOS_SILENCE", "ONETIME_LIFE_PERCENT_LESS", 40)

-------------------------------------------------------------------------------
-- Florenze : �÷η���
-------------------------------------------------------------------------------
trigger = g_LuaTiggerManager:f_create_trigger()
trigger:f_add_type(40012)

trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 80)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 45)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 10)

lua_trace("End Processing monsterskill.lua")


-------------------------------------------------------------------------------
-- Bisnable35 : �񽺳��� - 35����
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
-- Bisnadle50 : �񽺳��� - 50����
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
-- Bisnadle75  : �񽺳��� - 75���� 
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
-- silva of the wind : �ٶ��� ���� �ǹ�
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
-- syrephis of despair : ������ ���� �÷��ǽ�
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
-- sylia lon of vain : �㹫�� ���� �Ǹ��� ��
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
-- shuriel of dazzling : ��Ȥ�� ���� ������
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
-- Guard of silva : �ǹ��� ��ȣ��
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
-- Yama Boss : �߸� ����ε�
-------------------------------------------------------------------------------
trigger = g_LuaTiggerManager:f_create_trigger()
trigger:f_add_type(10494)

trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 80)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 45)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 10)

trigger:f_add_skill_condition("M_STUN", "ITERATIVE_PER_TICK", 20)
-------------------------------------------------------------------------------
-- Pile of stone Boss : �������� ��
-------------------------------------------------------------------------------
trigger = g_LuaTiggerManager:f_create_trigger()
trigger:f_add_type(10495)

trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_LIFE_PERCENT_LESS", 80)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_LIFE_PERCENT_LESS", 65)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_LIFE_PERCENT_LESS", 10)

trigger:f_add_skill_condition("M_STUN", "ITERATIVE_PER_TICK", 20)

-------------------------------------------------------------------------------
-- Surkha Boss : �ع�� �뿹
-------------------------------------------------------------------------------
trigger = g_LuaTiggerManager:f_create_trigger()
trigger:f_add_type(10496)

trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 80)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 65)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 10)

trigger:f_add_skill_condition("M_STUN", "ITERATIVE_PER_TICK", 20)

-------------------------------------------------------------------------------
-- Sylph5 Boss : ��ü����
-------------------------------------------------------------------------------
trigger = g_LuaTiggerManager:f_create_trigger()
trigger:f_add_type(10497)

trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 80)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 45)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 10)

trigger:f_add_skill_condition("M_STUN", "ITERATIVE_PER_TICK", 20)
-------------------------------------------------------------------------------
-- Ventus Boss : �������׽�
-------------------------------------------------------------------------------
trigger = g_LuaTiggerManager:f_create_trigger()
trigger:f_add_type(10498)

trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_LIFE_PERCENT_LESS", 80)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_LIFE_PERCENT_LESS", 65)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_LIFE_PERCENT_LESS", 10)

trigger:f_add_skill_condition("M_STUN", "ITERATIVE_PER_TICK", 20)

-------------------------------------------------------------------------------
-- Samael 5 Boss : ��۰��� ������
-------------------------------------------------------------------------------
trigger = g_LuaTiggerManager:f_create_trigger()
trigger:f_add_type(10499)

trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 80)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 65)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 10)

trigger:f_add_skill_condition("M_STUN", "ITERATIVE_PER_TICK", 20)

lua_trace("End Processing monsterskill.lua")


-------------------------------------------------------------------------------
-- New Middle Boss : �һ��� �׷���
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
-- New Middle Boss : �һ��� �׸�
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
-- New Middle Boss : ī��
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
-- Event Boss : ī���� ȯ��
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
-- Event Boss : ī���� ���
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
-- Event Boss : ī���� ����
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
-- Event Boss : ȭ���� ��ũ����
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
-- Makkatew : ��ī��
-------------------------------------------------------------------------------
trigger = g_LuaTiggerManager:f_create_trigger()
trigger:f_add_type(50101)

trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 70)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 55)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 20)

trigger:f_add_skill_condition("M_STUN", "ITERATIVE_PER_TICK", 44)


-------------------------------------------------------------------------------
-- Samanka : �縸ī
-------------------------------------------------------------------------------
trigger = g_LuaTiggerManager:f_create_trigger()
trigger:f_add_type(50102)

trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 90)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 75)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 45)

trigger:f_add_skill_condition("M_STUN", "ITERATIVE_PER_TICK", 44)


-------------------------------------------------------------------------------
-- Ber : ����
-------------------------------------------------------------------------------
trigger = g_LuaTiggerManager:f_create_trigger()
trigger:f_add_type(50103)

trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 70)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 55)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 20)

trigger:f_add_skill_condition("M_STUN", "ITERATIVE_PER_TICK", 44)


-------------------------------------------------------------------------------
-- Vaican : ����ĭ
-------------------------------------------------------------------------------
trigger = g_LuaTiggerManager:f_create_trigger()
trigger:f_add_type(50104)

trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 70)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 55)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 20)

trigger:f_add_skill_condition("M_STUN", "ITERATIVE_PER_TICK", 44)

-------------------------------------------------------------------------------
-- insur cap : �ݶ��� ����91
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
-- insur cap : �ݶ��� ����92
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
-- insur cap : �ݶ��� ����93
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
-- insur com : �ݶ��� ���ְ�
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
-- keeper cap : ���� ����
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
-- Dkeeper cap : ���� ����
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
-- gratedevil : ����� �����Ǹ�
-------------------------------------------------------------------------------
trigger = g_LuaTiggerManager:f_create_trigger()
trigger:f_add_type(16148)

trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_LIFE_PERCENT_LESS", 80)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_LIFE_PERCENT_LESS", 65)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_LIFE_PERCENT_LESS", 10)

trigger:f_add_skill_condition("M_STUN", "ITERATIVE_PER_TICK", 20)


-------------------------------------------------------------------------------
-- gratedevil : ������ �����Ǹ�
-------------------------------------------------------------------------------
trigger = g_LuaTiggerManager:f_create_trigger()
trigger:f_add_type(16149)

trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_LIFE_PERCENT_LESS", 90)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_LIFE_PERCENT_LESS", 80)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_LIFE_PERCENT_LESS", 65)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_LIFE_PERCENT_LESS", 10)

trigger:f_add_skill_condition("M_STUN", "ITERATIVE_PER_TICK", 20)


-------------------------------------------------------------------------------
-- Dkeeper cap : ģ���� ����
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
-- bishop : ���� ����
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
--Puma : ǻ��
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
--Elizabeth : ����ü��Ʈ
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
-- Bezemut : ������Ʈ
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
-- Galatea_NA : ������ �����׾� �̱� - 99���� --------Ÿ���� ��ȥ�� ��ȣ�� ����
-------------------------------------------------------------------------------
trigger = g_LuaTiggerManager:f_create_trigger()
trigger:f_add_type(33001)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 30)

trigger:f_add_skill_condition("M_CHAOSCRASH", "ITERATIVE_PER_TICK", 20)
trigger:f_add_skill_condition("M_STUN", "ITERATIVE_PER_TICK", 20)
trigger:f_add_skill_condition("M_STUN", "EVENT_CRITICAL_ATTACK", 20)


-------------------------------------------------------------------------------
-- bisnadle35_NA : �㹫�� �񽺳��� �̱� - 99���� --------Ÿ���� ��ȥ�� ��ȣ��
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
-- Demon Hezword_NA : ��� ������� �̱� - 99����
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
-- Iris_NA : ���帮���� �� ���̸��� �̱� - 99���� --------Ÿ���� ��ȥ�� ��ȣ��
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
-- Soul Guardian_NA : Ÿ���� ��ȥ�� ��ȣ�� �̱� - 99���� --------�׼� ��ų �߰�
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
-- Mino_NA : ����ũ_�̱� - 99����
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
-- Orc Leader_NA : ��ũ ���� �̱�
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
-- Florenze_NA : �÷η��� �̱� - 99����
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
-- BloodyLord_NA : ���� �ε� �̱� - 51����
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
-- HornHeadpiece_NA : ���� �� ������ ���� �̱� - 60����
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
-- Makkapitew_NA : �糪�� ��ī���� �̱� - 99���� --------Ÿ���� ��ȥ�� ��ȣ�� ����
-------------------------------------------------------------------------------
trigger = g_LuaTiggerManager:f_create_trigger()
trigger:f_add_type(33011)
trigger:f_add_skill_condition("M_CHAOSCRASH", "ONETIME_LIFE_PERCENT_LESS", 30)

trigger:f_add_skill_condition("M_CHAOSCRASH", "ITERATIVE_PER_TICK", 20)
trigger:f_add_skill_condition("M_STUN", "ITERATIVE_PER_TICK", 20)
trigger:f_add_skill_condition("M_STUN", "EVENT_CRITICAL_ATTACK", 20)

-------------------------------------------------------------------------------
-- Drangon1_NA : Ǫ������ �ϵ�ȣ�� �̱� - 99����
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
-- Drangon2_NA : �������� ����θ� �̱�- 99����
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
-- D_Lord of the Darkness_NA : ������ ������ �̱�- 99����
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
-- D_Amadeus_de_Roha_NA : �Ƹ����콺 �� ���� �̱� - 99����
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
-- Janus_une_Roha_NA : ���̴��� ��� ���� �̱�- 99����
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
-- Aquarias_NA : ����Ƹ�� �̱�
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
-- Death_Caizel_NA : ����ī���� �̱�
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
-- Groghto_NA : �׷��� �̱� 
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
-- Belzev_NA : �������� �̱�
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
-- Varsyon_NA : �ٸ��ÿ� �̱�
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
-- Igsirt_NA : �̱׽ø�Ʈ �̱�
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
-- Ruinte_NA : ������ �̱�
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
-- Stratus_NA : ��Ʈ������ �̱�
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
-- Lebigel_NA : ����� �̱�
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
-- Hellcargo-NA : ��ī���� �̱�
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
-- Yama Boss_NA : �߸� ����ε� �̱�
-------------------------------------------------------------------------------
trigger = g_LuaTiggerManager:f_create_trigger()
trigger:f_add_type(33027)

trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 80)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 45)
trigger:f_add_skill_condition("M_CHAOSSHOCK", "ONETIME_LIFE_PERCENT_LESS", 10)

trigger:f_add_skill_condition("M_STUN", "ITERATIVE_PER_TICK", 20)

-------------------------------------------------------------------------------
-- Ventus Boss_NA : �������׽� �̱�
-------------------------------------------------------------------------------
trigger = g_LuaTiggerManager:f_create_trigger()
trigger:f_add_type(33028)

trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_LIFE_PERCENT_LESS", 80)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_LIFE_PERCENT_LESS", 65)
trigger:f_add_skill_condition("M_CHAOSPOISON", "ONETIME_LIFE_PERCENT_LESS", 10)

trigger:f_add_skill_condition("M_STUN", "ITERATIVE_PER_TICK", 20)


-------------------------------------------------------------------------------
-- silva of the wind_NA : �ٶ��� ���� �ǹ� �̱�
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
-- syrephis of despair_NA : ������ ���� �÷��ǽ� �̱�
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
-- sylia lon of vain_NA : �㹫�� ���� �Ǹ��� �� �̱�
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
-- shuriel of dazzling_NA : ��Ȥ�� ���� ������ �̱�
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
-- New Middle Boss_NA : ī�� �̱�
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
-- Mock duck metal_NA : ��Ż ��ũ�� �̱� 
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
-- Mega Mock duck robot_NA : �ް� ��ũ�� �κ� �̱�
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
-- Taiwan santa_NA : ũ�������� ���� �̱�
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
--  : ����� �ʴ� ������ - 99����
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
--  : ������ ���� ������ - 99����
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
--  : ��� ������ ������ - 99����
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