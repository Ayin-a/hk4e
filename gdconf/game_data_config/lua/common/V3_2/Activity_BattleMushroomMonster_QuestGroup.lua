--[[======================================
||	filename:       Activity_BattleMushroomMonster_QuestGroup
||	owner:          chen.chen
||	description:    蕈兽任务战斗
||	LogName:        TD
||	Protection:     [Protection]
=======================================]]
--[[
--参考配置
local create_partner_fungus=
{
	[4008206]={},
	[4008206]=
	{
		[1]={config_id=1023},
	},
}

local create_enemy_fungus=
{
	[4008206]=
	{
		[1]={config_id=1033},
		[2]={config_id=1034},
		[3]={config_id=1035},
		[4]={config_id=1036,affix={5223}},
	}
	
}
]]--

local global_infotwo=
{
	awardball_cd=10,
	max_skill_count=6,
	awardball_gadget_id=70290663,
}


-- 打印日志
function PrintLog_Quest(context, content)
	local log = "## [Activity_BattleMushroomMonster_QuestGroup] TD: "..content
	ScriptLib.PrintContextLog(context, log)
end

local extraTriggersQuest = 
{
    { config_id = 41000001, name = "group_load_quest", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_QUEST", trigger_count = 0 },
	{ config_id = 41000002, name = "quest_finish", event = EventType.EVENT_QUEST_FINISH, source = "", condition = "", action = "action_EVENT_QUEST_FINISH", trigger_count = 0 },
	{ config_id = 41000003, name = "quest_start", event = EventType.EVENT_QUEST_START, source = "", condition = "", action = "action_EVENT_QUEST_START", trigger_count = 0 },
	{ config_id = 41000004, name = "monster_die_quest", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_QUEST", trigger_count = 0 },
	{ config_id = 41000005, name = "monster_hp_change", event = EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE, source = tostring(10001023), condition = "", action = "action_EVENT_SPECIFIC_MONSTER_HP_CHANGE", trigger_count = 0 },
	{ config_id = 41000006, name = "time_axis_pass", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "", action = "action_EVENT_TIME_AXIS_PASS", trigger_count = 0},
	{ config_id = 41000007, name = "gadget_create", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "", action = "action_EVENT_GADGET_CREATE", trigger_count = 0},
	{ config_id = 41000008, name = "gadget_die", event = EventType.EVENT_ANY_GADGET_DIE,source = "", condition = "", action = "action_EVENT_ANY_GADGET_DIE", trigger_count = 0},
	{ config_id = 41000009, name = "dungeon_all_avatar_die", event = EventType.EVENT_DUNGEON_ALL_AVATAR_DIE, source = "", condition = "", action = "action_EVENT_DUNGEON_ALL_AVATAR_DIE", trigger_count = 0},
	{ config_id = 41000010, name = "dungeon_avatar_slip_die", event = EventType.EVENT_DUNGEON_AVATAR_SLIP_DIE, source = "", condition = "", action = "action_EVENT_DUNGEON_AVATAR_SLIP_DIE", trigger_count = 0},
}

------ Local Functions -----------
function LF_Initialize_QuestLevel()
    --- TRIGGER
	for i, _suite in ipairs(suites) do
		for _, _trigger in pairs(extraTriggersQuest) do
			table.insert(_suite.triggers, _trigger.name)
		end
	end
	for _, _trigger in pairs(extraTriggersQuest) do
		table.insert(triggers, _trigger)
	end
	table.insert(variables,{ config_id=51100000,name = "enemyCount", value = 0})
	table.insert(variables,{ config_id=51100001,name = "partnerCount", value = 0})
	table.insert(variables,{ config_id=51100002,name = "currentQuest", value = 0})
    return 0
end

function LF_GetPointConfig(configId)
	for i=1,#points do
		if points[i].config_id==configId then
			return points[i]
		end
	end
	PrintLog_Quest(context, "出生点位未找到："..configId)
	return 0
end

function LF_ContainsKey(table,key)
	for i=1,#table do
		if table[i]==key then
			return true
		end
	end
	return false
end

function LF_GetPartnerBornPointConfig(index,table,questId)
	if LF_ContainsKey(table,questId) then
		return LF_GetPointConfig(partner_fungus_born_points_two[index])
	else
		return LF_GetPointConfig(partner_fungus_born_points[index])
	end
end

function LF_ResetAllTeamGlobalValueFlags(context)
	PrintLog_Quest(context, "LF_ResetAllTeamGlobalValueFlags")
	ScriptLib.SetTeamServerGlobalValue(context, context.owner_uid, "SGV_OnHalfHP_Sent_Mark_", 0)
	ScriptLib.SetTeamServerGlobalValue(context, context.owner_uid, "SGV_OnUnionBurst_Sent_Mark_", 0)
	ScriptLib.SetTeamServerGlobalValue(context, context.owner_uid, "SGV_OnHeroUnionBurst_Sent_Mark_", 0)
	ScriptLib.SetTeamServerGlobalValue(context, context.owner_uid, "SGV_OnHeroInCrisis_Sent_Mark_", 0)
	return 0
end

function LF_Random(context,num)
	math.randomseed(ScriptLib.GetServerTime(context))
	local ret=math.random(num)
	PrintLog_Quest(context, "随机结果为"..ret)
	return ret
end

------ Server Lua Call Functions -----------
function SLC_Sent_Mark(context,param1)
	PrintLog_Quest(context, "SLC_Sent_Mark")
	if param1==1 then
		ScriptLib.SetTeamServerGlobalValue(context, context.owner_uid, "SGV_OnHeroUnionBurst_Sent_Mark_", 1)
	elseif param1==2 then
		ScriptLib.SetTeamServerGlobalValue(context, context.owner_uid, "SGV_OnHeroInCrisis_Sent_Mark_", 1)
	elseif param1==3 then
		ScriptLib.SetTeamServerGlobalValue(context, context.owner_uid, "SGV_OnHalfHP_Sent_Mark_", 1)
	elseif param1==4 then
		ScriptLib.SetTeamServerGlobalValue(context, context.owner_uid, "SGV_OnUnionBurst_Sent_Mark_", 1)
	end
	return 0
end

function SLC_AwardBall_Catch(context)
	PrintLog_Quest(context, "玩家吃球")
	--8.15迭代，只加次数
	local bindSGV=ScriptLib.GetTeamServerGlobalValue(context, ScriptLib.GetSceneOwnerUid(context),"SGV_Fungus_Burst_Count")
	if bindSGV<global_infotwo.max_skill_count then
		ScriptLib.AddTeamServerGlobalValue(context, context.owner_uid, "SGV_Fungus_Burst_Count", 1)
	end
	return 0
end

------ conditions & actions ------
--group加载
function action_EVENT_GROUP_LOAD_QUEST(context, evt)
	PrintLog_Quest(context, "group load")
	ScriptLib.SetGroupVariableValue(context, "enemyCount", 0)
	ScriptLib.SetGroupVariableValue(context, "partnerCount", 0)
	ScriptLib.SetGroupVariableValue(context, "currentQuest", 0)
    return 0
end

function action_EVENT_SPECIFIC_MONSTER_HP_CHANGE(context, evt)
	--如果不是最后一关的话，不处理
	if ScriptLib.GetGroupVariableValue(context, "currentQuest") ~= 4008514 then
		return 0
	end
	if evt.param3<10 then
		ScriptLib.AddQuestProgress(context, "Q"..tonumber(4008514).."1")
		ScriptLib.RefreshGroup(context, {group_id = base_info.group_id, suite = 1})
	end
	return 0
end

function action_EVENT_QUEST_FINISH(context, evt)
	ScriptLib.RefreshGroup(context, {group_id = base_info.group_id, suite = 1})
	local hostUid=ScriptLib.GetSceneOwnerUid(context)
	ScriptLib.RevokePlayerShowTemplateReminder(context, 212, {hostUid})
	ScriptLib.EndTimeAxis(context,"AwardBallGenerate")
	ScriptLib.EndTimeAxis(context,"FungusWaterDie")
	if create_partner_fungus[evt.param1]==nil and create_enemy_fungus[evt.param1]==nil then
		return 0
	end
	--不管成功失败都要清场
	local monsterList=ScriptLib.GetGroupAliveMonsterList(context, base_info.group_id)
	for k,v in pairs(monsterList) do
		ScriptLib.RemoveEntityByConfigId(context, base_info.group_id, EntityType.MONSTER, v)
	end
	PrintLog_Quest(context, "quest finish:"..evt.param1)
	return 0
end

function action_EVENT_DUNGEON_ALL_AVATAR_DIE(context, evt)
	--地城失败
	ScriptLib.CauseDungeonFail(context)
	return 0
end

function action_EVENT_QUEST_START(context, evt)
	PrintLog_Quest(context, "quest start:"..evt.param1)
	--重置team上的GV值
	LF_ResetAllTeamGlobalValueFlags(context)
	if 0==ScriptLib.GetGroupVariableValue(context, "currentQuest") then
		--创建友方的蕈兽
		if create_partner_fungus[evt.param1]==nil then
			return 0
		else
			ScriptLib.SetGroupVariableValue(context, "currentQuest",evt.param1)
			--设置team的SGV
			ScriptLib.SetTeamServerGlobalValue(context, context.owner_uid, "SGV_Fungus_Burst_Count", global_infotwo.max_skill_count)
			local pointConfig={}
			--按照选择结果创怪
			if create_partner_fungus[evt.param1][1]==nil then
				local fungusList=ScriptLib.GetCurFungusFighterPlotConfigIdList(context) 
				ScriptLib.SetGroupVariableValue(context, "partnerCount",#fungusList)
				for i=1,#fungusList do
					pointConfig=LF_GetPartnerBornPointConfig(i,room_two_quests,evt.param1)
					if fungusList[i]==10001023 then  
						if evt.param1==4008514 then
							ScriptLib.CreateMonster(context, {config_id=fungusList[i], delay_time=0, pos=pointConfig.pos,rot=pointConfig.rot,affix_list={5213,5237,5254,5253}})
							--补一个团灭时间
							ScriptLib.InitTimeAxis(context,"FungusWaterDie",{20},false)
						else
							ScriptLib.CreateMonster(context, {config_id=fungusList[i], delay_time=0, pos=pointConfig.pos,rot=pointConfig.rot,affix_list={5213,5238,5253}})
						end
					else
						ScriptLib.CreateMonster(context, {config_id=fungusList[i], delay_time=0, pos=pointConfig.pos,rot=pointConfig.rot,affix_list={5213,5253}})
					end
				end
			--按照配置创怪
			else
				ScriptLib.SetGroupVariableValue(context, "partnerCount",#create_partner_fungus[evt.param1])
				for i=1,#create_partner_fungus[evt.param1] do
					pointConfig=LF_GetPartnerBornPointConfig(i,room_two_quests,evt.param1)
					if create_partner_fungus[evt.param1][i].config_id+10000000==10001023 then
						if evt.param1==4008514 then
							ScriptLib.CreateMonster(context, {config_id=create_partner_fungus[evt.param1][i].config_id+10000000, delay_time=0, pos=pointConfig.pos,rot=pointConfig.rot,affix_list={5213,5237,5254,5253}})
							--补一个团灭时间
							ScriptLib.InitTimeAxis(context,"FungusWaterDie",{20},false)
						else
							ScriptLib.CreateMonster(context, {config_id=create_partner_fungus[evt.param1][i].config_id+10000000, delay_time=0, pos=pointConfig.pos,rot=pointConfig.rot,affix_list={5213,5238,5253}})
						end
					else
						ScriptLib.CreateMonster(context, {config_id=create_partner_fungus[evt.param1][i].config_id+10000000, delay_time=0, pos=pointConfig.pos,rot=pointConfig.rot,affix_list={5213,5253}})
					end
				end
			end
			--最后开产球时间轴
			ScriptLib.InitTimeAxis(context,"AwardBallGenerate",{global_infotwo.awardball_cd},true)
		end
		--创建敌方的蕈兽
		if create_enemy_fungus[evt.param1]==nil then
			return 0
		else
			if create_enemy_fungus[evt.param1][1]==nil then
				--说明要刷愚人众了
				ScriptLib.SetGroupVariableValue(context, "enemyCount",defs.total_count)
				ScriptLib.AutoMonsterTide(context, 1,base_info.group_id , defs.monster_tide, defs.total_count, defs.min_count, defs.max_count)
			else
				--普通刷怪
				local enemyPointConfig={}
				ScriptLib.SetGroupVariableValue(context, "enemyCount",#create_enemy_fungus[evt.param1])
				for i=1,#create_enemy_fungus[evt.param1] do
					if LF_ContainsKey(room_two_quests,evt.param1) then
						enemyPointConfig=LF_GetPointConfig(enemy_fungus_born_points_two[i])
					else
						enemyPointConfig=LF_GetPointConfig(enemy_fungus_born_points[i])
					end
					ScriptLib.CreateMonster(context, {config_id=create_enemy_fungus[evt.param1][i].config_id+10000000, delay_time=0, pos=enemyPointConfig.pos,rot=enemyPointConfig.rot,affix_list=create_enemy_fungus[evt.param1][i].affix or {}})
				end
			end
		end
	end
	--最后要开镜头
	for k,v in pairs(defs.camGadget) do
		ScriptLib.CreateGadget(context, { config_id = v })
	end
	return 0
end

function action_EVENT_ANY_MONSTER_DIE_QUEST(context, evt)
	local currentQuest=ScriptLib.GetGroupVariableValue(context, "currentQuest")
	if evt.param4==6 then
		local left_partner=ScriptLib.GetGroupVariableValue(context, "partnerCount")
		left_partner=left_partner-1
		ScriptLib.SetGroupVariableValue(context, "partnerCount",left_partner)
		if left_partner==0 then
			PrintLog_Quest(context, "发任务消息：".."Q"..currentQuest.."0")
			ScriptLib.AddQuestProgress(context, "Q"..currentQuest.."0")
			ScriptLib.RefreshGroup(context, {group_id = base_info.group_id, suite = 1})
			local hostUid=ScriptLib.GetSceneOwnerUid(context)
			ScriptLib.RevokePlayerShowTemplateReminder(context, 212, {hostUid})
			ScriptLib.EndTimeAxis(context,"AwardBallGenerate")
			ScriptLib.EndTimeAxis(context,"FungusWaterDie")
		end
	else
		local left_enemy=ScriptLib.GetGroupVariableValue(context, "enemyCount")
		left_enemy=left_enemy-1
		ScriptLib.SetGroupVariableValue(context, "enemyCount",left_enemy)
		if left_enemy==0 then
			PrintLog_Quest(context, "发任务消息：".."Q"..currentQuest.."1")
			ScriptLib.AddQuestProgress(context, "Q"..currentQuest.."1")
			ScriptLib.RefreshGroup(context, {group_id = base_info.group_id, suite = 1})
			local hostUid=ScriptLib.GetSceneOwnerUid(context)
			ScriptLib.RevokePlayerShowTemplateReminder(context, 212, {hostUid})
			ScriptLib.EndTimeAxis(context,"AwardBallGenerate")
			ScriptLib.EndTimeAxis(context,"FungusWaterDie")
		end
	end
	return 0
end

--产球
function action_EVENT_TIME_AXIS_PASS(context, evt)
	PrintLog_Quest(context, "时间轴触发"..evt.source_name)
	if evt.source_name=="AwardBallGenerate" then
		local currentQuest=ScriptLib.GetGroupVariableValue(context, "currentQuest")
		if LF_ContainsKey(room_two_quests,currentQuest) then
			if awardball_room_two~=nil then
				local index=LF_Random(context,#awardball_room_two)
				local pointConfig=LF_GetPointConfig(awardball_room_two[index])
				ScriptLib.CreateGadgetByConfigIdByPos(context, defs.awardball_configid, pointConfig.pos, {x=0,y=0,z=0})
			end
		else
			if awardball_room_one~=nil then
				local index=LF_Random(context,#awardball_room_one)
				local pointConfig=LF_GetPointConfig(awardball_room_one[index])
				ScriptLib.CreateGadgetByConfigIdByPos(context, defs.awardball_configid, pointConfig.pos, {x=0,y=0,z=0})
			end
		end
	end
	if evt.source_name=="FungusWaterDie" then
		ScriptLib.AddQuestProgress(context, "Q"..tonumber(4008514).."1")
		ScriptLib.RefreshGroup(context, {group_id = base_info.group_id, suite = 1})
	end
	return 0
end

function action_EVENT_GADGET_CREATE(context, evt)
	if evt.param2 == global_infotwo.awardball_gadget_id then
		local hostUid=ScriptLib.GetSceneOwnerUid(context)
		ScriptLib.AssignPlayerShowTemplateReminder(context,212,{is_need_cache=true, param_uid_vec={},param_vec={},uid_vec={hostUid}})
	end
	return 0
end

function action_EVENT_ANY_GADGET_DIE(context, evt)
	if evt.param1==defs.awardball_configid then
		PrintLog_Quest(context, "助威球死亡")
		local hostUid=ScriptLib.GetSceneOwnerUid(context)
		ScriptLib.RevokePlayerShowTemplateReminder(context, 212, {hostUid})
	end
	return 0
end

function action_EVENT_DUNGEON_AVATAR_SLIP_DIE(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "currentQuest") ~= 0 then
		--地城失败 20220922，先不改。beta观察一下
		--ScriptLib.CauseDungeonFail(context)
	end
	return 0
end

LF_Initialize_QuestLevel()
