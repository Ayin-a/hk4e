--- ServerUploadTool Save to [/root/env/data/lua/common/V2_3]  ---
--[[
	2.3雪山活动 冰骗骗花ScenePlay
]]
--[[

local defs = {
	--战斗开始加载suit（空气墙等）
	add_onStart = {2},
	--开启流程的操作台configID
	gadget_starter = 66007
,
	--领奖台configID
	gadget_reward = 66003,

	--Boss的ConfigID
	boss_id = 66005,
                --暖源的IDlist
                heat_id = 
{66009,66010,66011},

	--点位configID
	point_list = {66012,66013,66014},
	
	--招怪池
	monster_list = {66025,66026,66027,66028,66029},
	--招gadget池-召唤
	summoner_list = {66022,66023,66024},
	--招gadget池-射击
	shooter_list = {66019,66020,66021}
}

]]

local cfg = {
	group_id = 133002066,

	play_type = 5,
	play_id = 5,	
}

local optimizSuite = {
	{
		monsters = { },
		gadgets = { },
		regions = {66004,66008},--固定ID。 Not in any Suite
		triggers = { "Enter_Optimiz_Region","Leave_Optimiz_Region"},
		rand_weight = 100
	}
}
--每次开战要清空的陈列室key
local exhibition_toClear = {
	"WinterCamp_Boss_SummonMonster_Killed",--单局击杀怪物
	"WinterCamp_Boss_HitBack",--击回果实
	"WinterCamp_Boss_PickUp",--拾取结晶
	"WinterCamp_Boss_Mimik_Killer",--最后一击
	"WinterCamp_Boss_NoHitBySkillA",--被钻地击中
	"WinterCamp_Boss_NoHitBySkillB",--被锤击击中
}

local SGVMark_toClear = {
	"SGV_Mimik_PickUped",--拾取结晶
	"SGV_HitByMimik_SkillA",--被钻地击中
	"SGV_HitByMimik_SkillB",--被锤击击中
}

local extraTriggers={

	{ name = "Monster_Die", config_id = 8000001, event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_any_monster_die", trigger_count = 0 },
	{ name = "Enter_Optimiz_Region", config_id = 8000002, event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_enter_OptimizRegion", trigger_count = 0 },
	{ name = "Leave_Optimiz_Region", config_id = 8000003, event = EventType.EVENT_LEAVE_REGION, source = "", condition = "", action = "action_leave_OptimizRegion", trigger_count = 0 },
	{ name = "Group_Will_Unload", config_id = 8000004, event = EventType.EVENT_GROUP_WILL_UNLOAD, source = "", condition = "", action = "action_group_will_unload", trigger_count = 0},

	--ScenePlay流程Trigger
	{ name = "MP_Battle_State", config_id = 8100001, event = EventType.EVENT_SCENE_MP_PLAY_BATTLE_STATE, source = "", condition = "condition_battle_state", action = "action_battle_state", trigger_count = 0 },
	{ name = "MP_Battle_Result", config_id = 8100002, event = EventType.EVENT_SCENE_MP_PLAY_BATTLE_RESULT, source = "", condition = "", action = "action_battle_result", trigger_count = 0 },
	{ name = "MP_Battle_Interrupt", config_id = 8100003, event = EventType.EVENT_SCENE_MP_PLAY_BATTLE_INTERRUPT, source = "", condition = "", action = "action_battle_interrupt", trigger_count = 0},
	{ name = "MP_All_Player_Die", config_id = 8100004, event = EventType.EVENT_SCENE_MP_PLAY_ALL_AVATAR_DIE, source = "", condition = "", action = "action_all_player_die", trigger_count = 0 },

	--Boss战斗流程Trigger
	{ name = "Gadget_Die", config_id = 8200001, event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_gadget_die", trigger_count = 0},
}


function LF_Initialize_Group(triggers, suites)
	for i=1,#extraTriggers do
		table.insert(triggers, extraTriggers[i])
		table.insert(suites[init_config.suite].triggers,extraTriggers[i].name)
	end
	for i,v in ipairs(optimizSuite) do
		table.insert(suites, v)
	end
	--挑战状态标记
	table.insert(variables,{ config_id=50000001,name = "challenge_state", value = 0})
end

--监听战斗阶段变化
function condition_battle_state(context, evt)
	ScriptLib.PrintContextLog(context, "[WinterCampMimik] Battle State Notify: play_type@"..evt.param1.." play_id@"..evt.param2.." state@"..evt.param3)
	if evt.param1 == cfg.play_type and evt.param2 == cfg.play_id then 
		return true
	end
	return false
end

function action_battle_state(context, evt)
	--BATTLE_PREPARE
	if evt.param3 == 2 then

		ScriptLib.SetGadgetEnableInteract(context, cfg.group_id, defs.gadget_starter, false)	
		--ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_starter, 201)
		ScriptLib.KillGroupEntity(context,{ group_id = cfg.group_id, gadgets = {defs.gadget_starter}})

	--BATTLE_READY
	elseif evt.param3 == 3 then
		ScriptLib.PrestartScenePlayBattle(context, {duration = 600, start_cd = 3, progress_stage = {1}, group_id = cfg.group_id})
		

		--加载优化圈所在suit 取最后一个suit
		ScriptLib.AddExtraGroupSuite(context, cfg.group_id, #suites)

	--BATTLE_START
	elseif evt.param3 == 5 then
		ScriptLib.SetGroupVariableValue(context, "challenge_state", 1)
		--检查玩家数量 如果场上没人了 需要失败
		if LF_Check_AllPlayer_OutRegion(context, 66008) then
			ScriptLib.FailScenePlayBattle(context, cfg.group_id)
		end
		LF_Clear_Exhibition(context)
		LF_Battle_Start(context, evt)
	end
	return 0
end

function LF_Clear_Exhibition(context)

	local uid_list = ScriptLib.GetSceneUidList(context)
	for i, v in pairs(uid_list) do
		for j, n in pairs(exhibition_toClear) do
			--ScriptLib.PrintContextLog(context, "[WinterCampMimik] Handle exhibition_toClear. uid@"..v.." key@"..n)
			ScriptLib.ClearExhibitionReplaceableData(context, v, n)
		end
		--清除Team上残留的标识SGV
		for k, m in pairs(SGVMark_toClear) do
			ScriptLib.SetTeamServerGlobalValue(context, v, m, 0)
		end
	end
	return 0
end

--战斗开始流程
function LF_Battle_Start(context, evt)

	ScriptLib.PrintContextLog(context, "[WinterCampMimik] LF_Battle_Start Called.")

	--环境小动物关闭
	ScriptLib.SwitchSceneEnvAnimal(context, 0)

	for k,v in pairs(defs.add_onStart) do
		ScriptLib.AddExtraGroupSuite(context, cfg.group_id, v)
		ScriptLib.PrintContextLog(context, "[WinterCampMimik] Add Suit on Battle Start@"..v)
	end

	ScriptLib.SetMonsterBattleByGroup(context, defs.boss_id, cfg.group_id)

	return 0
end
--Boss通知关闭暖源，禁止交互
function SLC_Close_WarmPoint(context, evt)

	if ScriptLib.GetGroupVariableValue(context, "challenge_state") == 1 then 
		for k,v in pairs(defs.heat_id) do 
			ScriptLib.SetGadgetStateByConfigId(context, v, GadgetState.Default)
			ScriptLib.SetGadgetEnableInteract(context, cfg.group_id, v, false)
		end
	else
		ScriptLib.PrintContextLog(context, "[WinterCampMimik] #WARN# Get SLC from Boss, But challenge_state is not 1.")
	end
	return 0
end

--Boss请求获取联机玩家数量
function SLC_Get_PlayerCount(context)
	local uidList = ScriptLib.GetSceneUidList(context)
	local num = #uidList
	ScriptLib.PrintContextLog(context, "[WinterCampMimik] SLC_Get_PlayerCount. result@"..num)
	ScriptLib.SetEntityServerGlobalValueByConfigId(context, defs.boss_id, "SGV_Mimik_PlayerNum", num)
	return 0
end

function LF_Reset_WarmPoint(context,evt)

	for k,v in pairs(defs.heat_id) do 
		ScriptLib.SetGadgetStateByConfigId(context, v, GadgetState.GearStart)
		ScriptLib.SetGadgetEnableInteract(context, cfg.group_id, v, true)
	end

	return 0
end

function action_battle_result(context,evt)

	--环境小动物恢复
	ScriptLib.SwitchSceneEnvAnimal(context, 2)
	--优化圈移除
	ScriptLib.RemoveEntityByConfigId(context, cfg.group_id, EntityType.REGION, 66008)


	--胜利结束
	if evt.param3 == 1 then

		ScriptLib.CreateScenePlayGeneralRewardGadget(context, {group_id = cfg.group_id, config_id = defs.gadget_reward})

		LF_ResetBattle(context)

	--失败结束
	elseif evt.param3 == 0 then

		LF_ResetBattle(context)

	end

	return 0
end
--战斗结束重置Group状态和标志位
function LF_ResetBattle(context,evt)

	ScriptLib.SetGroupVariableValue(context, "challenge_state", 0)
	--ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_starter, GadgetState.Default)
	ScriptLib.RefreshGroup(context,{group_id=cfg.group_id,suite=1})

	ScriptLib.SetGadgetEnableInteract(context, cfg.group_id, defs.gadget_starter, true)

	for k,v in pairs(defs.add_onStart) do
		ScriptLib.RemoveExtraGroupSuite(context, cfg.group_id, v)
		ScriptLib.PrintContextLog(context, "[WinterCampMimik] Remove Suit on Battle End@"..v)
	end

	--移除优化圈所在suit 取最后一个suit
	ScriptLib.RemoveExtraGroupSuite(context, cfg.group_id, #suites)

	return 0
end

function action_battle_interrupt(context, evt)
	ScriptLib.PrintContextLog(context, "[WinterCampMimik] battle_interrupt Triggered.")
	LF_ResetBattle(context)
	return 0
end

function action_all_player_die(context, evt)
	local uid_list=ScriptLib.GetSceneUidList(context)

	--检查存活
	local cnt = #uid_list
	for i,v in ipairs(uid_list) do
		if ScriptLib.IsPlayerAllAvatarDie(context, v) then
			cnt = cnt - 1
		end
	end
	if cnt <= 0 then
		ScriptLib.PrintContextLog(context, "[WinterCampMimik] All Player Die.")
		ScriptLib.FailScenePlayBattle(context, cfg.group_id)
		return 0
	end
	--检查全部离场

	if LF_Check_AllPlayer_OutRegion(context, 66004) then 
		ScriptLib.PrintContextLog(context, "[WinterCampMimik] All Player Out Region.")
		ScriptLib.FailScenePlayBattle(context, cfg.group_id)
		return 0
	end
	
	return 0
end

function action_any_monster_die(context, evt)

	ScriptLib.PrintContextLog(context, "[WinterCampMimik] Monster Die Triggered. ConfigID@"..evt.param1)

	if evt.param1 == defs.boss_id then
		
		ScriptLib.AddScenePlayBattleProgress(context, cfg.group_id, 1)
	else

	end

	return 0
end

function action_enter_OptimizRegion(context,evt)

	if evt.param1 ~= 66004 then
		return 0
	end

	ScriptLib.PrintContextLog(context, "[WinterCampMimik] Enter optimiz_region. UID@"..context.uid )

	ScriptLib.SetPlayerEyePoint(context, 66004, 66008)

	--ScriptLib.SetPlayerGroupVisionType(context, {context.uid}, {0})
	--ScriptLib.ForbidPlayerRegionVision(context, context.uid)

	ScriptLib.SetLimitOptimization(context, context.uid, true)

	return 0
end

function action_leave_OptimizRegion(context,evt)

	ScriptLib.PrintContextLog(context, "[WinterCampMimik] Leave optimiz_region. UID@"..context.uid.." RegionID@"..evt.param1)

	--小圈检查场内玩家数量
	if evt.param1 == 66004 then 
		if LF_Check_AllPlayer_OutRegion(context,66004) then
			ScriptLib.FailScenePlayBattle(context, cfg.group_id)
		end
	--大圈清eyePoint
	elseif evt.param1 == 66008 then 
		ScriptLib.ClearPlayerEyePoint(context, 66004)
		ScriptLib.SetLimitOptimization(context, context.uid, false)
	end

	return 0
end
--Boss脱战通知
function SLC_Boss_OutOfBattle(context)
	ScriptLib.FailScenePlayBattle(context, cfg.group_id)
	return 0
end
--卸载保护
function action_group_will_unload( context, evt )
	
	ScriptLib.RemoveEntityByConfigId(context, cfg.group_id, EntityType.REGION, 66008)
	ScriptLib.FailScenePlayBattle(context, cfg.group_id)

	return 0
end

--以性能圈判断，玩家是否全部离场
function LF_Check_AllPlayer_OutRegion(context,region_id)
	--非战斗阶段 跳过
	if ScriptLib.GetGroupVariableValue(context, "challenge_state") ~= 1 then 
		return false
	end
	local eid = ScriptLib.GetEntityIdByConfigId(context, region_id)

	local count = ScriptLib.GetRegionEntityCount(context, { region_eid = eid, entity_type = EntityType.AVATAR })

	ScriptLib.PrintContextLog(context, "[WinterCampMimik] Count player in Battle Field: RegionID@"..region_id.. "PlayerCount@".. count)

	if count < 1 then	
		return true
	end	
	return false
end

--Boss通知在点位上创建Gadget，param1：0-招怪物件 1-发子弹物件
function SLC_TryCreateGadget(context, param1)
	local point_index = 0
	local point_configID = 0

	point_index = LF_Get_RandomAvailiblePoint_Index(context, param1)
	if point_index == 0 then
		return 0
	end

	if param1 == 0 then		
		point_configID = defs.point_list[point_index]
		ScriptLib.PrintContextLog(context, "[WinterCampMimik] To Create gadget. gadget@"..defs.summoner_list[point_index].." at Point@"..point_configID.." (Index@"..point_index..")")
		--pointIndex和gadget池index对应
		ScriptLib.CreateGadgetByConfigIdByPos(context, defs.summoner_list[point_index], gadgets[point_configID].pos, gadgets[point_configID].rot)
	elseif param1 == 1 then 
		point_configID = defs.point_list[point_index]
		ScriptLib.PrintContextLog(context, "[WinterCampMimik] To Create gadget. gadget@"..defs.shooter_list[point_index].." at Point@"..point_configID.." (Index@"..point_index..")")
		--pointIndex和gadget池index对应
		ScriptLib.CreateGadgetByConfigIdByPos(context, defs.shooter_list[point_index], gadgets[point_configID].pos, gadgets[point_configID].rot)
	else
		ScriptLib.PrintContextLog(context, "[WinterCampMimik] #WARN# Get Unknown SLC param. Please check Boss ability.")
	end
	return 0
end
--招怪的物件通知在附近招怪 param1:招怪数量。
--全局招怪上限为5，招怪池被用尽了的话，即使再接到招怪SLC也不会再招
function SLC_GadgetTryCreateMonster(context, param1)

	ScriptLib.PrintContextLog(context, "[WinterCampMimik] Get SLC_GadgetTryCreateMonster. MonsterCount@"..param1)

	if param1 >5 then 
		ScriptLib.PrintContextLog(context, "[WinterCampMimik] #WARN# SLC_GadgetTryCreateMonster param cannot larger than 5. Please check ability.")
		return 0
	end

	local pos = ScriptLib.GetPosByEntityId(context, context.source_entity_id)
	--local rot = ScriptLib.GetRotationByEntityId(context, context.source_entity_id)
	local rot =  { x = 0, y = 0, z = 0 }
	local r = 2

	for i = 1, param1 do
		local summon_pos = LF_GetRandomPosition(context, r, pos)
		ScriptLib.PrintContextLog(context, "[WinterCampMimik] LF_GetRandomPosition. X@"..summon_pos.x.." Y@"..summon_pos.y.." Z@"..summon_pos.z)
		--ScriptLib.PrintContextLog(context, "[WinterCampMimik] GetRotationByEntityId. rotX@"..rot.x.." rotY@"..rot.y.." rotZ@"..rot.z)
		--ScriptLib.PrintContextLog(context, "[WinterCampMimik] LF_Try_SummonMonster. posX@"..pos_list[i].x .." posZ@"..pos_list[i].z .." rot@"..rot)
		LF_Try_SummonMonster(context,summon_pos,rot)		
	end
	
	return 0
end
--返回五个随机点
function LF_GetRandomPosition(context, radius, pos)
	local pos_result = {x = 0, y = 0, z = 0}

	math.randomseed(ScriptLib.GetServerTime(context))
	
	pos_result.x = math.floor(pos.x + (2*math.random()-1)*radius)
	pos_result.y = math.floor(pos.y)
	pos_result.z = math.floor(pos.z + (2*math.random()-1)*radius)
	
	return pos_result
end

function LF_Try_SummonMonster(context,pos,rot)
	--如果config_id已存在，接口会返回-2
	for i = 1, #defs.monster_list do
		local config_id =  defs.monster_list[i]
		local ret = ScriptLib.CreateMonsterByConfigIdByPos(context, config_id, pos, rot)		
		ScriptLib.PrintContextLog(context, "[WinterCampMimik] LF_Try_SummonMonster. configID@"..config_id.." ret@"..ret)
		if ret == 0 then 					
			--成功创建了就停 通知怪物入战
			ScriptLib.SetMonsterBattleByGroup(context, config_id, cfg.group_id)
			break
		end
	end
	return 0
end

function SLC_KillBossGadget(context,param1) --param1 1射击物件 0招怪物件

	if param1 == 0 or param1 == 1 then 
		local configId = ScriptLib.GetGadgetConfigId(context, {gadget_eid = context.source_entity_id})
		ScriptLib.KillGroupEntity(context,{ group_id = cfg.group_id, gadgets = {configId}})
		LF_Set_PointAvailible_OnGadgetDie(context, param1, evt.param1)
	else
		ScriptLib.PrintContextLog(context, "[WinterCampMimik] #WARN# SLC_KillBossGadget Get Unknown Param: @"..param1)
	end
	
	return 0
end

function action_gadget_die(context,evt)

	local gadget_id = gadgets[evt.param1].gadget_id
	ScriptLib.PrintContextLog(context, "[WinterCampMimik] Get Gadget_Die. gadgetID@"..gadget_id)
	--42601027 射击物件
	if gadget_id == 42601027 then 
		LF_Set_PointAvailible_OnGadgetDie(context, 1, evt.param1)
	--42601028 招怪物件
	elseif gadget_id == 42601028 then
		LF_Set_PointAvailible_OnGadgetDie(context, 0, evt.param1)
	end
	return 0
end

--从point_list中返回一个随机的、gadgetState为0的点,并把这个点gadgetState设为非零（
-- 占用状态 201 物件池中的物件index各自对应一个点
function LF_Get_RandomAvailiblePoint_Index(context, gadget_type)
	local availible_points = {}
	--找所有空闲的点
	for k,v in pairs(defs.point_list) do 
		if ScriptLib.GetGadgetStateByConfigId(context, 0, v) == 0 then
			table.insert(availible_points, v)
		end
	end
	if #availible_points > 0 then 
		--抓个壮丁
		local rand_index = 0	
		math.randomseed(ScriptLib.GetServerTime(context))
		rand_index = math.random(#availible_points)

		--mark他
		if gadget_type == 0 then 			
			ScriptLib.SetGadgetStateByConfigId(context, availible_points[rand_index], 201)
			ScriptLib.PrintContextLog(context, "[WinterCampMimik] Set Point Usage Mark. configID@"..availible_points[rand_index].." gadget_type@"..gadget_type)
		elseif gadget_type == 1 then 			
			ScriptLib.SetGadgetStateByConfigId(context, availible_points[rand_index], 201)
			ScriptLib.PrintContextLog(context, "[WinterCampMimik] Set Point Usage Mark. configID@"..availible_points[rand_index].." gadget_type@"..gadget_type)
		else
			ScriptLib.PrintContextLog(context, "[WinterCampMimik] #WARN# Get an Unkown gadget_type. Tell TD.")
		end

		--返回被mark的point的原始Index
		local mark_index = GetIndexByValue(context, availible_points[rand_index],defs.point_list)
		ScriptLib.PrintContextLog(context, "[WinterCampMimik] mark_index @"..mark_index)
		return mark_index
	else
		ScriptLib.PrintContextLog(context, "[WinterCampMimik] #WARN# Failed to Get an availible point.")
	end
	return 0
end

--找到一个point_list中，gadgetState不为0的点，设为0（可用状态）参数为Gadget的configID
function LF_Set_PointAvailible_OnGadgetDie(context, gadget_type, die_gadget)

	ScriptLib.PrintContextLog(context, "[WinterCampMimik] LF_Set_PointAvailible_OnGadgetDie. die_gadget@"..die_gadget)
	local point_index = 0
	if gadget_type == 1 then 
		point_index = GetIndexByValue(context, die_gadget,defs.shooter_list)
	else
		point_index = GetIndexByValue(context, die_gadget,defs.summoner_list)
	end
	ScriptLib.PrintContextLog(context, "[WinterCampMimik] Try Release a point. configID@"..defs.point_list[point_index])
	ScriptLib.SetGadgetStateByConfigId(context, defs.point_list[point_index], 0)

	return 0
end

function GetIndexByValue(context, value, check_table)
	for i=1, #check_table do
		if value == check_table[i] then 
			return i
		end
	end
	return 0
end
LF_Initialize_Group(triggers, suites)