--[[======================================
||	filename:       Activity_BattleMushroomMonster_BattleGroup
||	owner:          chen.chen
||	description:    蕈兽战斗
||	LogName:        TD
||	Protection:     [Protection]
=======================================]]

--[[
local custom_level={
	[81013]={max_count=5}
}
]]--

local global_info=
{
	attackLevel={groupId=247101001,galleryId=28021,max_wave=3},
	defenseLevel={groupId=247102001,galleryId=28022,max_wave=1},
	--最大技能使用次数
	max_skill_count=6,
	--三个吃球buff的持续时间
	awardball_skillone_effecttime=18,
	awardball_skilltwo_effecttime=18,
	awardball_skillthree_effecttime=18,
	awardball_refresh_time=10,
	awardball_gadget_id=70290663,
	maxEffectNum=3,
	phase_two_time=90,
	phase_two_awardball_cd=10,
}

-- 打印日志
function PrintLog(context, content)
	local log = "## [Activity_BattleMushroomMonster_BattleGroup] TD: "..content
	ScriptLib.PrintContextLog(context, log)
end

local extraTriggers = 
{
    { config_id = 40000001, name = "group_load", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD", trigger_count = 0 },
    { config_id = 40000002, name = "fungus_select_done", event = EventType.EVENT_TRAINING_FUNGUS_SELECT_DONE, source = "", condition = "", action = "action_EVENT_TRAINING_FUNGUS_SELECT_DONE", trigger_count = 0 },
    { config_id = 40000003, name = "monster_die", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE", trigger_count = 0 },
    { config_id = 40000004, name = "time_axis_pass", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "", action = "action_EVENT_TIME_AXIS_PASS", trigger_count = 0},
    { config_id = 40000005, name = "monster_before_leave_scene", event = EventType.EVENT_MONSTER_DIE_BEFORE_LEAVE_SCENE,source = "", condition = "", action = "action_EVENT_MONSTER_DIE_BEFORE_LEAVE_SCENE", trigger_count = 0},
    { config_id = 40000006, name = "gadget_die", event = EventType.EVENT_ANY_GADGET_DIE,source = "", condition = "", action = "action_EVENT_ANY_GADGET_DIE", trigger_count = 0},
	{ config_id = 40000007, name = "gallery_stop", event = EventType.EVENT_GALLERY_STOP, source = "", condition = "", action = "action_EVENT_GALLERY_STOP", trigger_count = 0},
	{ config_id = 40000008, name = "dungeon_settle", event = EventType.EVENT_DUNGEON_SETTLE, source = "", condition = "", action = "action_EVENT_DUNGEON_SETTLE", trigger_count = 0},
	{ config_id = 40000009, name = "dungeon_all_avatar_die", event = EventType.EVENT_DUNGEON_ALL_AVATAR_DIE, source = "", condition = "", action = "action_EVENT_DUNGEON_ALL_AVATAR_DIE", trigger_count = 0},
	{ config_id = 40000010, name = "gadget_create", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "", action = "action_EVENT_GADGET_CREATE", trigger_count = 0},
}

------ Local Functions -----------
function LF_Initialize_Level()
    --- TRIGGER
	for i, _suite in ipairs(suites) do
		for _, _trigger in pairs(extraTriggers) do
			table.insert(_suite.triggers, _trigger.name)
		end
	end
	for _, _trigger in pairs(extraTriggers) do
		table.insert(triggers, _trigger)
	end
	table.insert(variables,{ config_id=51000000,name = "killedMonsters", value = 0,no_refresh = true})
	table.insert(variables,{ config_id=51000001,name = "index", value = 0,no_refresh = true})
	table.insert(variables,{ config_id=51000002,name = "waveIndex", value = 0,no_refresh = true})
	table.insert(variables,{ config_id=51000003,name = "phaseTwoStart", value = 0,no_refresh = false})
	table.insert(variables,{ config_id=51000004,name = "phaseTwoSet", value = 0,no_refresh = false})
    return 0
end

function LF_GetWaveNumber(context)
	if base_info.group_id==global_info.attackLevel.groupId then
		return global_info.attackLevel.max_wave
	elseif base_info.group_id==global_info.defenseLevel.groupId then
		return global_info.defenseLevel.max_wave
	end
	PrintLog(context, "战斗总波次获取失败")
	return 0
end

--1.dungeonid 2.round 3.randindex
function LF_SetRandomResult(context)
	local fungusFighterTrainingParams=ScriptLib.GetCurFungusFighterTrainingParams(context)
	if #fungusFighterTrainingParams<3 then
		PrintLog(context, "地城ID获取失败")
		return 0
	end
	if fungus_strategy_info[fungusFighterTrainingParams[1]]==nil then
		PrintLog(context, "地城ID获取失败")
	end

	local dungeonId=fungusFighterTrainingParams[1]
	if fungusFighterTrainingParams[2]==1 then
		local upLoadPool={}
		local index=0
		local waveIndex=0
		local waveNumber=LF_GetWaveNumber(context)
		for i=1,waveNumber do
			index=LF_Random(context,#fungus_strategy_info[dungeonId])
			waveIndex=LF_Random(context,#fungus_strategy_info[dungeonId][index][i])
			table.insert(upLoadPool,fungus_strategy_info[dungeonId][index][i][waveIndex].monster_package[1])
			if i==1 then
				ScriptLib.SetGroupVariableValue(context, "index",index)
				ScriptLib.SetGroupVariableValue(context, "waveIndex",waveIndex)
				PrintLog(context, "第一波上传记录结果")
			end
		end
		if 0 ~= ScriptLib.SetCurFungusFighterTrainingParams(context, {rand_index=999,monster_pool_list=upLoadPool}) then
			PrintLog(context, "随机结果上传失败")
		end
	end
	--[[
	if fungusFighterTrainingParams[3]==0 then
		local dungeonId=fungusFighterTrainingParams[1]
		local curRound=fungusFighterTrainingParams[2]
		local index=LF_Random(context,#fungus_strategy_info[dungeonId])
		local waveIndex=LF_Random(context,#fungus_strategy_info[dungeonId][index][curRound])
		if curRound==1 then
			ScriptLib.SetGroupVariableValue(context, "index",index)
			ScriptLib.SetGroupVariableValue(context, "waveIndex",waveIndex)
			PrintLog(context, "第一波上传记录结果")
		end
		ScriptLib.SetCurFungusFighterTrainingParams(context, {rand_index=100*index+waveIndex,monster_pool_list=fungus_strategy_info[dungeonId][index][curRound][waveIndex].monster_package})
    end
	]]--
	return 0
end

function LF_GetGalleryId(context)
	if base_info.group_id==global_info.attackLevel.groupId then
		return global_info.attackLevel.galleryId
	elseif base_info.group_id==global_info.defenseLevel.groupId then
		return global_info.defenseLevel.galleryId
	end
	PrintLog(context, "galleryid获取失败")
	return 0
end

function LF_GetMonsterConfig(context)
	local fungusFighterTrainingParams=ScriptLib.GetCurFungusFighterTrainingParams(context)
	if #fungusFighterTrainingParams<3 then
		PrintLog(context, "地城ID获取失败")
		return 0
	end
	local curRound=fungusFighterTrainingParams[2]
	local waveIndex=0
	local index=0
	if fungusFighterTrainingParams[2] == 1 then
		waveIndex=ScriptLib.GetGroupVariableValue(context, "waveIndex")
		index=ScriptLib.GetGroupVariableValue(context, "index")
		return fungus_strategy_info[fungusFighterTrainingParams[1]][index][curRound][waveIndex]
	elseif fungusFighterTrainingParams[2] > 1 then
		local pool=fungusFighterTrainingParams[3+curRound]
		PrintLog(context, "获取pool:"..pool)
		return monsterPoolReverseTable[pool]
		--local multiIndex=fungusFighterTrainingParams[3]
		--waveIndex=multiIndex%100
		--index=(multiIndex-waveIndex)/100
	end
	PrintLog(context, "MonsterConfig获取失败")
	return 0
end

function LF_Random(context,num)
	math.randomseed(ScriptLib.GetServerTime(context))
	local ret=math.random(num)
	PrintLog(context, "随机结果为"..ret)
	return ret
end

function LF_UpdateRestSkillCount(context, prev_context, param1, param2, param3)
	local bindSGV=ScriptLib.GetTeamServerGlobalValue(context, ScriptLib.GetSceneOwnerUid(context),"SGV_Fungus_Burst_Count")
	ScriptLib.AddTeamServerGlobalValue(context, context.owner_uid, "SGV_Fungus_Burst_Count", -1)
	ScriptLib.UpdatePlayerGalleryScore(context, LF_GetGalleryId(context), {rest_skill_count=bindSGV-1})
	return 0
end

function LF_ResetDungeon(context)
	ScriptLib.RefreshGroup(context, {group_id = base_info.group_id, suite = 1})
	LF_RefreshVariables(context)
	ScriptLib.ExecuteGroupLua(context, defs.fungus_group, "LF_ResetVariables", {})
	return 0
end

function LF_RefreshVariables(context)
	ScriptLib.SetGroupVariableValue(context, "killedMonsters",0)
	ScriptLib.SetGroupVariableValue(context, "index",0)
	ScriptLib.SetGroupVariableValue(context, "waveIndex",0)
	ScriptLib.SetGroupVariableValue(context, "phaseTwoStart",0)
	ScriptLib.SetGroupVariableValue(context, "phaseTwoSet",0)
	return 0
end

------ Server Lua Call Functions -----------

function SLC_AwardBall_Catch(context)
	PrintLog(context, "玩家吃球")
	ScriptLib.MarkGroupLuaAction(context, "FungusFighter_6",ScriptLib.GetGalleryTransaction(context, LF_GetGalleryId(context)) , {})
	local index=LF_Random(context,global_info.maxEffectNum)
	local monsterList=ScriptLib.GetGroupAliveMonsterList(context, base_info.group_id)
	--迭代逻辑，如果场上的怪物小于三只，就不会刷到效果2
	if #monsterList<3 then
		--如果随到2就要重随一次
		if index==2 then
			local tmpIndex=LF_Random(context,global_info.maxEffectNum-1)
			if tmpIndex>=2 then
				tmpIndex=tmpIndex+1
			end
			index=tmpIndex
		end
	end
	--8.15迭代，只加次数
	if true then
		local bindSGV=ScriptLib.GetTeamServerGlobalValue(context, ScriptLib.GetSceneOwnerUid(context),"SGV_Fungus_Burst_Count")
		if bindSGV<global_info.max_skill_count then
			ScriptLib.AddTeamServerGlobalValue(context, context.owner_uid, "SGV_Fungus_Burst_Count", 1)
			ScriptLib.UpdatePlayerGalleryScore(context, LF_GetGalleryId(context), {rest_skill_count=bindSGV+1})
		end
		return 0
	end
	--增加主动技能伤害
	if index==1 then
		ScriptLib.InitTimeAxis(context,"AwardBallSkillOne",{global_info.awardball_skillone_effecttime},false)
		ScriptLib.SetGroupVariableValueByGroup(context, "AttackUp", 1, defs.fungus_group)
		ScriptLib.UpdatePlayerGalleryScore(context, LF_GetGalleryId(context), {["buff_id"]=1,["buff_last_time"]=global_info.awardball_skillone_effecttime})
		ScriptLib.ShowReminder(context, 400213)
	--标记怪物
	elseif index==2 then
		ScriptLib.InitTimeAxis(context,"AwardBallSkillTwo",{global_info.awardball_skilltwo_effecttime},false)
		--修改物件状态
		ScriptLib.SetGadgetStateByConfigId(context, defs.call_entity, 201)
		ScriptLib.UpdatePlayerGalleryScore(context, LF_GetGalleryId(context), {["buff_id"]=2,["buff_last_time"]=global_info.awardball_skilltwo_effecttime})
		ScriptLib.ShowReminder(context, 400214)
	--下一次释放技能不消耗次数
	elseif index==3 then
		ScriptLib.InitTimeAxis(context,"AwardBallSkillThree",{global_info.awardball_skillthree_effecttime},false)
		ScriptLib.SetGroupVariableValueByGroup(context, "FreeUseSkill", 1, defs.fungus_group)
		ScriptLib.UpdatePlayerGalleryScore(context, LF_GetGalleryId(context), {["buff_id"]=3,["buff_last_time"]=global_info.awardball_skillthree_effecttime})
		ScriptLib.ShowReminder(context, 400215)
	else
		PrintLog(context, "吃球随机结果错误")
	end
	return 0
end

function SLC_EnemyMonsterReviveSkill(context,param1)
	PrintLog(context, "点名怪物"..param1)
	local beast = ScriptLib.GetMonsterConfigId(context, { monster_eid = context.source_entity_id })
	ScriptLib.SetEntityServerGlobalValueByConfigId(context, beast, "SGV_Revive_Skill_Flag", param1)
	return 0
end

------ conditions & actions ------
--group加载
function action_EVENT_GROUP_LOAD(context, evt)
    PrintLog(context, "group load")
	LF_RefreshVariables(context)
    LF_SetRandomResult(context)
    return 0
end

--蕈兽选择完毕，开启挑战
--1.dungeonid 2.round 3.randindex
function action_EVENT_TRAINING_FUNGUS_SELECT_DONE(context, evt)
	PrintLog(context, "已选择蕈兽")
	PrintLog(context, "准备开启gallery:"..LF_GetGalleryId(context))
	if not ScriptLib.IsGalleryStart(context,LF_GetGalleryId(context)) then
		local bindSGV=ScriptLib.GetTeamServerGlobalValue(context, ScriptLib.GetSceneOwnerUid(context),"SGV_Fungus_Burst_Count")
		local monsterConfig=LF_GetMonsterConfig(context)
		ScriptLib.SetPlayerStartGallery(context, LF_GetGalleryId(context), {ScriptLib.GetSceneOwnerUid(context)})
		ScriptLib.SetGadgetStateByConfigId(context, defs.start_gear, 202)
		PrintLog(context, "gallery已开启")
		local fungusFighterTrainingParams=ScriptLib.GetCurFungusFighterTrainingParams(context)
		if #fungusFighterTrainingParams<3 then
			PrintLog(context, "地城ID获取失败")
			return 0
		end
		--如果不是第一间，要创建开局奖励球
		if fungusFighterTrainingParams[2]>1 and defs.start_awardball~=nil then
			for k,v in pairs(defs.start_awardball) do
				ScriptLib.CreateGadget(context, { config_id = v })
			end
		end
		--刷怪
		if custom_level~=nil and custom_level[10*fungusFighterTrainingParams[1]+fungusFighterTrainingParams[2]]~=nil then
			ScriptLib.UpdatePlayerGalleryScore(context, LF_GetGalleryId(context), {["max_monster_count"]=custom_level[10*fungusFighterTrainingParams[1]+fungusFighterTrainingParams[2]].max_count,
			["killed_monster_count"]=0,rest_skill_count=bindSGV,max_skill_count=global_info.max_skill_count})
			ScriptLib.SetGroupTempValue(context,tostring(10*fungusFighterTrainingParams[1]+fungusFighterTrainingParams[2]),1,{})
		else
			ScriptLib.UpdatePlayerGalleryScore(context, LF_GetGalleryId(context), {["max_monster_count"]=monsterConfig.total_count,
			["killed_monster_count"]=0,rest_skill_count=bindSGV,max_skill_count=global_info.max_skill_count})
			if -1==ScriptLib.AutoPoolMonsterTide(context, 1, base_info.group_id, monsterConfig.monster_package,0, {}, {}, {sgv_map = {SGV_Revive_Skill_Flag = 0},total_count=monsterConfig.total_count, min_count=monsterConfig.min_count, max_count=monsterConfig.max_count,fill_time=monsterConfig.fill_time or 0,fill_count=monsterConfig.fill_count or 0,is_tag_bit_match=true,is_ordered = true}) then
				PrintLog(context, "怪物潮初始化失败"..monsterConfig.monster_package[1])
			else
				PrintLog(context, "怪物潮开启"..monsterConfig.monster_package[1])
			end
		end
		--准备产球时间轴
		if monsterConfig.awardball_thinkinterval ~=nil and monsterConfig.awardball_thinkinterval>0 then
			--8.15迭代球效果，后删
			--ScriptLib.InitTimeAxis(context,"AwardBallGenerate",{global_info.awardball_refresh_time},true)
			ScriptLib.InitTimeAxis(context,"AwardBallGenerate",{monsterConfig.awardball_thinkinterval},true)
			--起一个时间轴记录到二阶段的时间
			ScriptLib.InitTimeAxis(context,"PhaseTwoStart",{global_info.phase_two_time},false)
		end
		--如果是防守关，还需要加防守物件
		if LF_GetGalleryId(context)==global_info.defenseLevel.galleryId then
			ScriptLib.CreateGadget(context, { config_id = defs.defense_logicentity })
			ScriptLib.CreateGadget(context, { config_id = defs.defense_viewentity })
		end
		--最后要开镜头
		ScriptLib.CreateGadget(context, { config_id = defs.camGadget })
	else
		PrintLog(context, "gallery重复开启，检查配置")
	end
	return 0
end

--怪物死亡增加gallery计数
function action_EVENT_ANY_MONSTER_DIE(context, evt)
	PrintLog(context, "怪物死亡")
	if not ScriptLib.IsGalleryStart(context,LF_GetGalleryId(context)) then
		PrintLog(context, "怪物死亡,gallery未开启")
		return 0
	end
	local killMonsters=ScriptLib.GetGroupVariableValue(context, "killedMonsters")
	killMonsters=killMonsters+1
	ScriptLib.SetGroupVariableValue(context, "killedMonsters",killMonsters)
	ScriptLib.UpdatePlayerGalleryScore(context, LF_GetGalleryId(context), {["killed_monster_count"]=killMonsters})
	local fungusFighterTrainingParams=ScriptLib.GetCurFungusFighterTrainingParams(context)
	if custom_level~=nil and custom_level[10*fungusFighterTrainingParams[1]+fungusFighterTrainingParams[2]]~=nil then
		if killMonsters>=custom_level[10*fungusFighterTrainingParams[1]+fungusFighterTrainingParams[2]].max_count then
			ScriptLib.StopGallery(context,LF_GetGalleryId(context),false)
		end
	else
		local monsterConfig=LF_GetMonsterConfig(context)
		if killMonsters>=monsterConfig.total_count then
			ScriptLib.StopGallery(context,LF_GetGalleryId(context),false)
		end
	end
	return 0
end

--产球
function action_EVENT_TIME_AXIS_PASS(context, evt)
	PrintLog(context, "时间轴触发"..evt.source_name)
	if evt.source_name=="PhaseTwoStart" then
		ScriptLib.SetGroupVariableValue(context, "phaseTwoStart",1)
		return 0
	end
	if evt.source_name=="AwardBallGenerate" then
		if defs.awardball_configid ~= nil then
			if awardBallGeneratePosition ~= nil then
				local index=LF_Random(context,#awardBallGeneratePosition)
				ScriptLib.CreateGadgetByConfigIdByPos(context, defs.awardball_configid, awardBallGeneratePosition[index], {x=0,y=0,z=0})
			end
		end
		if ScriptLib.GetGroupVariableValue(context, "phaseTwoStart")==1 and ScriptLib.GetGroupVariableValue(context, "phaseTwoSet")==0 then
			ScriptLib.EndTimeAxis(context, "AwardBallGenerate")
			ScriptLib.InitTimeAxis(context,"AwardBallGenerate",{global_info.phase_two_awardball_cd},true)
			ScriptLib.SetGroupVariableValue(context, "phaseTwoSet",1)
		end
	end

	if evt.source_name=="AwardBallSkillThree" then
		ScriptLib.SetGroupVariableValueByGroup(context, "FreeUseSkill", 0, defs.fungus_group)
		ScriptLib.UpdatePlayerGalleryScore(context, LF_GetGalleryId(context), {["buff_id"]=0,["buff_last_time"]=0})
	end

	if evt.source_name=="AwardBallSkillOne" then
		ScriptLib.SetGroupVariableValueByGroup(context, "AttackUp", 0, defs.fungus_group)
		ScriptLib.UpdatePlayerGalleryScore(context, LF_GetGalleryId(context), {["buff_id"]=0,["buff_last_time"]=0})
	end

	if evt.source_name=="AwardBallSkillTwo" then
		ScriptLib.UpdatePlayerGalleryScore(context, LF_GetGalleryId(context), {["buff_id"]=0,["buff_last_time"]=0})
	end
	return 0
end

--死亡退场看看是否要加技能使用次数
function action_EVENT_MONSTER_DIE_BEFORE_LEAVE_SCENE(context, evt)
	if ScriptLib.GetMonsterAbilityFloatValue(context, base_info.group_id, evt.param1, "SGV_Revive_Skill_Flag") == 1 then
		if ScriptLib.GetTeamServerGlobalValue(context, context.owner_uid, "SGV_Fungus_Burst_Count") < global_info.max_skill_count then
			ScriptLib.AddTeamServerGlobalValue(context, context.owner_uid, "SGV_Fungus_Burst_Count", 1)
		end
	end
	return 0
end

function action_EVENT_ANY_GADGET_DIE(context, evt)
	if evt.param1==defs.defense_logicentity then
		ScriptLib.KillGroupEntity(context, { group_id = base_info.group_id, gadgets = {defs.defense_viewentity} })
		ScriptLib.StopGallery(context,LF_GetGalleryId(context),true)
		return 0
	else
		--如果死亡的是球
		local containsKey=false
		for k,v in pairs(defs.start_awardball) do
			if v==evt.param1 then
				containsKey=true
			end
		end
		if containsKey==true or evt.param1==defs.awardball_configid then
			PrintLog(context, "助威球死亡")
			local awardballNum=ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = base_info.group_id,gadget_id={global_info.awardball_gadget_id}})
			PrintLog(context, "剩余助威球数量"..awardballNum)
			if awardballNum==0 then
				local hostUid=ScriptLib.GetSceneOwnerUid(context)
				ScriptLib.RevokePlayerShowTemplateReminder(context, 212, {hostUid})
				ScriptLib.SetGroupTempValue(context,"templateReminderShow",0,{})
			end	
		end
	end
	return 0
end

--gallery结束恢复逻辑
function action_EVENT_GALLERY_STOP(context, evt)
	PrintLog(context, "event gallery stop")
	--关时间轴
	ScriptLib.EndTimeAxis(context,"AwardBallGenerate")
	--回收reminder
	local hostUid=ScriptLib.GetSceneOwnerUid(context)
	ScriptLib.RevokePlayerShowTemplateReminder(context, 212, {hostUid})
	ScriptLib.SetGroupTempValue(context,"templateReminderShow",0,{})
	LF_ResetDungeon(context)
	return 0
end

--地城失败回收逻辑
function action_EVENT_DUNGEON_SETTLE(context, evt)
	--为玩家手动退出地城加个保底回收
	if evt.param1==0 then
		--如果gallery开着，要关一下
		if ScriptLib.IsGalleryStart(context,LF_GetGalleryId(context)) then
			ScriptLib.StopGallery(context,LF_GetGalleryId(context),true)
		else
			LF_ResetDungeon(context)
		end
	end
	return 0
end

--玩家意外死亡保底逻辑
function action_EVENT_DUNGEON_ALL_AVATAR_DIE(context, evt)
	if ScriptLib.IsGalleryStart(context,LF_GetGalleryId(context)) then
		ScriptLib.StopGallery(context,LF_GetGalleryId(context),true)
	else
		LF_ResetDungeon(context)
	end
	--地城失败
	ScriptLib.CauseDungeonFail(context)
	return 0
end

--处理积分球的reminder显示
function action_EVENT_GADGET_CREATE(context, evt)
	if evt.param2 == global_info.awardball_gadget_id then
		PrintLog(context, "GADGET_CREATE_助威球创建")
		local awardballNum=ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = base_info.group_id,gadget_id={global_info.awardball_gadget_id}})
		PrintLog(context, "剩余助威球数量"..awardballNum)
		if awardballNum>0 and ScriptLib.GetGroupTempValue(context,"templateReminderShow",{})==0 then
			local hostUid=ScriptLib.GetSceneOwnerUid(context)
			ScriptLib.AssignPlayerShowTemplateReminder(context,212,{is_need_cache=true, param_uid_vec={},param_vec={},uid_vec={hostUid}})
			ScriptLib.SetGroupTempValue(context,"templateReminderShow",1,{})
		end
	end
	return 0
end

LF_Initialize_Level()
