--[[
--delay改为默认配置，读不到就使用默认值
--group和nextgroup改为默认配置
--buff没有用到，删除
--主控
--默认建造时间
local delay=30
local challenge_programme={
	[1]=tide_defs_01,
	[2]=tide_defs_02,
	[3]=tide_defs_03
}
--怪物group的ID
local monster_group=245001003
local tide_defs_01 ={
	  --自适应配置项，delay
	  --[1] = {delay = 30,guide_routes={1,2},enter={1001,1003},exit={1004},enter_id={7,8},exit_id={9}},
        [1] = {guide_routes={1,2}},
        [2] = {guide_routes={1,2}},
        [3] = {guide_routes={1,2}},
        [4] = {guide_routes={1,2}},
        [5] = {guide_routes={1,2}},
},
local tide_defs_02 ={
        [1] = {guide_routes={1,2}},
        [2] = {guide_routes={1,2}},
        [3] = {guide_routes={1,2}},
        [4] = {guide_routes={1,2}},
        [5] = {guide_routes={1,2}},
},
local tide_defs_03 ={
        [1] = {guide_routes={1,2}},
        [2] = {guide_routes={1,2}},
        [3] = {guide_routes={1,2}},
        [4] = {guide_routes={1,2}},
        [5] = {guide_routes={1,2}},
}

local routes_start_point={
        [1]={start_point={x=77.129,y=4.623077,z=-50.57449},points={1,2,3,4,5,6,7,8}},
        [2]={start_point={x=64.96883,y=0.5410852,z=-16.04972},points={1,2,3,4,5,6,7,8,9,10}},

}
local guide_point_pool={1006,1007,1008,1009,1010,1011,1012,1013,1014,1015,1016,1017,1018,1019,1020,1021,1022,1023,1024,1025,1026,1027,1028,1029,1030,1031,1032,1033,1034,1035,1036,1037,1038,1039,1040}
--]]



function LF_Init_Challenge_Group()
	GM1 ={ config_id = 8100001, name = "GM", event = EventType.EVENT_VARIABLE_CHANGE, source = "GM_VALUE", condition = "", action = "action_GM_Action", trigger_count = 0}
	t3 = { config_id = 8000003, name = "challenge_success", event = EventType.EVENT_SCENE_MULTISTAGE_PLAY_STAGE_END, source = "", condition = "", action = "action_EVENT_SCENE_MULTISTAGE_PLAY_STAGE_END", trigger_count = 0}
	t4 = { config_id = 8000004, name = "group_load", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_group_load", trigger_count = 0 }
	t5 = { config_id = 8000005, name = "timer_event", event = EventType.EVENT_TIMER_EVENT, source = "route_points_delay", condition = "", action = "action_add_route_points", trigger_count = 0}
	t6 = { config_id = 8000006, name = "point_arrive", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "", action = "action_REACH_POINT", trigger_count = 0 }
	t7 = { config_id = 8000007, name = "end_stage_request", event = EventType.EVENT_SCENE_MULTISTAGE_PLAY_END_STAGE_REQ, source = "", condition = "", action = "action_END_STAGE", trigger_count = 0 }
	t8 = { config_id = 8000008, name = "pick_card_event", event = EventType.EVENT_MECHANICUS_PICKED_CARD, source = "", condition = "", action = "action_PICK_CARD", trigger_count = 0 }
	t9 = { config_id = 8000009,name = "TIMER_EVENT_DELAY", event = EventType.EVENT_TIMER_EVENT, source = "delay", condition = "", action = "action_END_DELAY", trigger_count = 0 }
	t10 = { config_id = 8000010,name = "TIMER_EVENT_START_REMINDER", event = EventType.EVENT_TIMER_EVENT, source = "reminder", condition = "", action = "action_START_REMINDER", trigger_count = 0 }
	t11 = { config_id = 8000011,name = "ALL_AVATAR_DIE", event = EventType.EVENT_DUNGEON_ALL_AVATAR_DIE, source = "", condition = "", action = "action_ALL_AVATAR_DIE", trigger_count = 0 }
	for i,v in ipairs(suites) do
		table.insert(v.triggers, GM1.name)
		table.insert(v.triggers, t3.name)
		table.insert(v.triggers, t4.name)
		table.insert(v.triggers, t5.name)
		table.insert(v.triggers, t6.name)
		table.insert(v.triggers, t7.name)
		table.insert(v.triggers, t8.name)
		table.insert(v.triggers, t9.name)
		table.insert(v.triggers, t10.name)
		table.insert(v.triggers, t11.name)
	end
	table.insert(triggers, GM1)
	table.insert(triggers, t3)
	table.insert(triggers, t4)
	table.insert(triggers, t5)
	table.insert(triggers, t6)
	table.insert(triggers, t7)
	table.insert(triggers, t8)
	table.insert(triggers, t9)
	table.insert(triggers, t10)
	table.insert(triggers, t11)
	table.insert(variables, { config_id=50000001,name = "GM_VALUE", value = 0})
	table.insert(variables, { config_id=50000002,name = "wave_ptr", value = 0})
	table.insert(variables, { config_id=50000003,name = "special_challenge", value = 0})
	table.insert(variables, { config_id=50000004,name = "left_monsters", value = 0})
	table.insert(variables, { config_id=50000005,name = "max_escapable_monsters", value = 10})
	table.insert(variables, { config_id=50000006,name = "escaped_monsters", value = 0})
	table.insert(variables, { config_id=50000007,name = "route_guide_points_index", value = 1,no_refresh = true})
	--怪物对地脉镇石造成额外伤害
	table.insert(variables, { config_id=50000008,name = "monster_double_damage", value = 0})
	--挑战逃出的怪物不超过一个
	table.insert(variables, { config_id=50000009,name = "GM_Ignore_Monster_Escape", value = 0})
	table.insert(variables, { config_id=50000010,name = "challenge_93", value = 0})
	table.insert(variables, { config_id=50000011,name = "challenge_94", value = 0})
	table.insert(variables, { config_id=50000012,name = "challenge_95", value = 0})
	table.insert(variables, { config_id=50000013,name = "challenge_active_93", value = 0})
	table.insert(variables, { config_id=50000014,name = "challenge_active_94", value = 0})
	table.insert(variables, { config_id=50000015,name = "challenge_active_95", value = 0})
	table.insert(variables, { config_id=50000016,name = "planNum", value = 1,no_refresh = true})
	table.insert(variables, { config_id=50000017,name = "ban_tag_1", value = 999})
	table.insert(variables, { config_id=50000018,name = "ban_tag_2", value = 999})
	table.insert(variables, { config_id=50000019,name = "ban_tag_3", value = 999})
end
--------------------------------------
function action_GM_Action(context, evt)
	if evt.source_name ~="GM_VALUE" then
		return 0
	end
	if defs.max_escapable_monsters~= nil then
		ScriptLib.SetGroupVariableValue(context, "max_escapable_monsters", defs.max_escapable_monsters)
	end

	ScriptLib.SetGroupVariableValue(context, "wave_ptr", 1)
	--使用GM来随
	local planNum=evt.param1
	ScriptLib.PrintContextLog(context, "## TD2.0_LOG : 随到的方案是："..planNum)
	ScriptLib.SetGroupVariableValue(context, "planNum", planNum)
	--请求ban_tag_list
	ScriptLib.ExecuteGroupLua(context, monster_group, "req_ban_tag", {planNum,defs.group_id})
	local tag=ScriptLib.GetGroupVariableValue(context, "ban_tag_1")
	local ban_list={}
	if tag<999 then
		ban_list[1]=tag
	end
	tag=ScriptLib.GetGroupVariableValue(context, "ban_tag_2")
	if tag<999 then
		ban_list[2]=tag
	end
	tag=ScriptLib.GetGroupVariableValue(context, "ban_tag_3")
	if tag<999 then
		ban_list[3]=tag
	end
	if 0~=ScriptLib.InitSceneMultistagePlay(context, 999, MultistagePlayType.Chess, {rounds = #challenge_programme[planNum], init_building_points = defs.init_building_points or 200},ScriptLib.GetSceneUidList(context)) then
		ScriptLib.PrintContextLog(context, "## TD2.0_LOG : muitistage初始化失败")
	else
		ScriptLib.PrintContextLog(context, "## TD2.0_LOG : 成功设置muitistage|rounds="..#challenge_programme[planNum])
	end
	
	--迭代项
	ScriptLib.ExecuteGroupLua(context, monster_group, "set_monster_preview", {defs.group_id,planNum})
	ScriptLib.PrintContextLog(context, "## TD2.0_LOG : 成功设置怪物预览")
	--设置怪物总数量
	ScriptLib.ExecuteGroupLua(context, monster_group, "set_monster_number_req", {ScriptLib.GetGroupVariableValue(context, "wave_ptr")})
	ScriptLib.PrintContextLog(context, "## TD2.0_LOG : 成功设置剩余怪物")
	ScriptLib.SetSceneMultiStagePlayValues(context, 999, {round=ScriptLib.GetGroupVariableValue(context, "wave_ptr"),rounds=#challenge_programme[planNum],left_monsters=ScriptLib.GetGroupVariableValue(context, "left_monsters"),max_escapable_monsters=ScriptLib.GetGroupVariableValue(context, "max_escapable_monsters"),escaped_monsters=ScriptLib.GetGroupVariableValue(context, "escaped_monsters"),stage_bonus_building_points=0}, true)
	ScriptLib.PrintContextLog(context, "## TD2.0_LOG : 成功设置显示参数|rounds="..#challenge_programme[planNum].."|left_monsters="..ScriptLib.GetGroupVariableValue(context, "left_monsters"))
	ScriptLib.StartSceneMultiStagePlayStage(context, 999, defs.build_time or 123, Multistage.ChessBuild,"build"..ScriptLib.GetGroupVariableValue(context, "wave_ptr"),{})
	ScriptLib.PrintContextLog(context, "## TD2.0_LOG : 成功开始挑战")
	ScriptLib.ExecuteGroupLua(context, defs.gear_group_id, "Initialize_Fundations", {0})
	add_route_guide_points(context)
	ScriptLib.CreateGroupTimerEvent(context, defs.group_id, "reminder",5)
	ScriptLib.PrintContextLog(context, "## TD2.0_LOG : grouploadsuccess")
	return 0
end

function action_ALL_AVATAR_DIE(context, evt)
	local uidList=ScriptLib.GetSceneUidList(context)
	local count=0
	for i=1,#uidList do
		if ScriptLib.IsPlayerAllAvatarDie(context, uidList[i]) then
			count=count+1
		end
	end
	if count >= (#uidList) then
		ScriptLib.EndSceneMultiStagePlay(context, 999, false)
		return 0
	end
	return 0
end

function action_END_STAGE(context, evt)
	if evt.param2==Multistage.ChessBuild then
		ScriptLib.EndSceneMultiStagePlayStage(context, 999,"build"..ScriptLib.GetGroupVariableValue(context, "wave_ptr"), true)
	end
	return 0
end
--翻牌子
function action_PICK_CARD(context, evt)
--牌子效果
	--立即回复地脉镇石5点耐久度
	if evt.param2==77 then
		local hp=ScriptLib.GetGroupVariableValue(context, "escaped_monsters")
		hp=hp-5
		if hp<0 then
			hp=0
		end
		ScriptLib.SetGroupVariableValue(context, "escaped_monsters", hp)
		ScriptLib.SetSceneMultiStagePlayValue(context, 999, "escaped_monsters",hp, true)
		return 0
	end
	--每翻一次，下个战斗阶段敌人的血量提升10%
	if evt.param2==92 then
		local pickCount=ScriptLib.GetGroupVariableValue(context, "challenge_93")
		pickCount=pickCount+1
		ScriptLib.SetGroupVariableValue(context, "challenge_93", pickCount)
	end
	--每翻一次，下个战斗阶段敌人的防御提升2%
	if evt.param2==93 then
		local pickCount=ScriptLib.GetGroupVariableValue(context, "challenge_94")
		pickCount=pickCount+1
		ScriptLib.SetGroupVariableValue(context, "challenge_94", pickCount)
	end
	--每翻一次，下个战斗阶段怪物逃逸值加1
	if evt.param2==94 then
		local pickCount=ScriptLib.GetGroupVariableValue(context, "challenge_95")
		pickCount=pickCount+1
		ScriptLib.SetGroupVariableValue(context, "challenge_95", pickCount)
	end
	return 0
end
--设置卡牌效果
function Set_Cards_Effect(context)
--重置选中次数，获取上轮的选中次数
	local pickCount=ScriptLib.GetGroupVariableValue(context, "challenge_93")
	ScriptLib.SetGroupVariableValue(context, "challenge_active_93", pickCount)
	ScriptLib.SetGroupVariableValue(context, "challenge_93", 0)
	pickCount=ScriptLib.GetGroupVariableValue(context, "challenge_94")
	ScriptLib.SetGroupVariableValue(context, "challenge_active_94", pickCount)
	ScriptLib.SetGroupVariableValue(context, "challenge_94", 0)
	pickCount=ScriptLib.GetGroupVariableValue(context, "challenge_95")
	ScriptLib.SetGroupVariableValue(context, "challenge_active_95", pickCount)
	ScriptLib.SetGroupVariableValue(context, "challenge_95", 0)
end
--重置卡牌效果
function Reset_Cards_Effect(context)
	return 0
end

function add_ban_tag(context, prev_context, param1, param2, param3)
	if param1<999 then
		ScriptLib.SetGroupVariableValue(context, "ban_tag_1", param1)
	end
	if param2<999 then
		ScriptLib.SetGroupVariableValue(context, "ban_tag_2", param2)
	end
	if param3<999 then
		ScriptLib.SetGroupVariableValue(context, "ban_tag_3", param3)
	end
	return 0
end

function action_group_load(context, evt)
    if defs.testMode==1 then
    	return 0
    end	
	if defs.max_escapable_monsters~= nil then
		ScriptLib.SetGroupVariableValue(context, "max_escapable_monsters", defs.max_escapable_monsters)
	end

	ScriptLib.SetGroupVariableValue(context, "wave_ptr", 1)
	--随一套方案出来
	math.randomseed(ScriptLib.GetServerTime(context))
	local planNum=math.random(#challenge_programme)
	ScriptLib.PrintContextLog(context, "## TD2.0_LOG : 随到的方案是："..planNum)
	ScriptLib.SetGroupVariableValue(context, "planNum", planNum)
	--请求ban_tag_list
	ScriptLib.ExecuteGroupLua(context, monster_group, "req_ban_tag", {planNum,defs.group_id})
	local tag=ScriptLib.GetGroupVariableValue(context, "ban_tag_1")
	local ban_list={}
	if tag<999 then
		ban_list[1]=tag
	end
	tag=ScriptLib.GetGroupVariableValue(context, "ban_tag_2")
	if tag<999 then
		ban_list[2]=tag
	end
	tag=ScriptLib.GetGroupVariableValue(context, "ban_tag_3")
	if tag<999 then
		ban_list[3]=tag
	end
	if 0~=ScriptLib.InitSceneMultistagePlay(context, 999, MultistagePlayType.Chess, {ban_card_tag_list=ban_list,rounds = #challenge_programme[planNum], init_building_points = defs.init_building_points or 200},ScriptLib.GetSceneUidList(context)) then
		ScriptLib.PrintContextLog(context, "## TD2.0_LOG : muitistage初始化失败")
	else
		ScriptLib.PrintContextLog(context, "## TD2.0_LOG : 成功设置muitistage|rounds="..#challenge_programme[planNum])
	end
	
	--迭代项
	ScriptLib.ExecuteGroupLua(context, monster_group, "set_monster_preview", {defs.group_id,planNum})
	ScriptLib.PrintContextLog(context, "## TD2.0_LOG : 成功设置怪物预览")
	--设置怪物总数量
	ScriptLib.ExecuteGroupLua(context, monster_group, "set_monster_number_req", {ScriptLib.GetGroupVariableValue(context, "wave_ptr")})
	ScriptLib.PrintContextLog(context, "## TD2.0_LOG : 成功设置剩余怪物")
	ScriptLib.SetSceneMultiStagePlayValues(context, 999, {round=ScriptLib.GetGroupVariableValue(context, "wave_ptr"),rounds=#challenge_programme[planNum],left_monsters=ScriptLib.GetGroupVariableValue(context, "left_monsters"),max_escapable_monsters=ScriptLib.GetGroupVariableValue(context, "max_escapable_monsters"),escaped_monsters=ScriptLib.GetGroupVariableValue(context, "escaped_monsters"),stage_bonus_building_points=0}, true)
	ScriptLib.PrintContextLog(context, "## TD2.0_LOG : 成功设置显示参数|rounds="..#challenge_programme[planNum].."|left_monsters="..ScriptLib.GetGroupVariableValue(context, "left_monsters"))
	ScriptLib.StartSceneMultiStagePlayStage(context, 999, defs.build_time or 123, Multistage.ChessBuild,"build"..ScriptLib.GetGroupVariableValue(context, "wave_ptr"),{})
	ScriptLib.PrintContextLog(context, "## TD2.0_LOG : 成功开始挑战")
	ScriptLib.ExecuteGroupLua(context, defs.gear_group_id, "Initialize_Fundations", {0})
	add_route_guide_points(context)
	ScriptLib.CreateGroupTimerEvent(context, defs.group_id, "reminder",5)
	ScriptLib.PrintContextLog(context, "## TD2.0_LOG : grouploadsuccess")
	return 0
end

function action_START_REMINDER(context, evt)
	ScriptLib.ShowReminder(context, 400025)
	return 0
end

function action_add_route_points(context, evt)
	add_route_guide_points(context)
	ScriptLib.CreateGroupTimerEvent(context, defs.group_id, "route_points_delay", defs.route_guide_timer)
	return 0
end

function add_route_guide_points(context)
	local curPlanNumber=ScriptLib.GetGroupVariableValue(context, "planNum")
	local curwave=ScriptLib.GetGroupVariableValue(context, "wave_ptr")
	if challenge_programme[curPlanNumber][curwave].guide_routes ==nil then
		ScriptLib.PrintContextLog(context, "## TD_LOG : Guide Routes Is Nil")
		return 0
	end
	for i=1,#challenge_programme[curPlanNumber][curwave].guide_routes do
		local idx=ScriptLib.GetGroupVariableValue(context, "route_guide_points_index")
		if -2==ScriptLib.CreateGadgetByConfigIdByPos(context, guide_point_pool[idx], routes_start_point[challenge_programme[curPlanNumber][curwave].guide_routes[i]].start_point, { x = 0.000, y = 0.000, z = 0.000 }) then
			ScriptLib.PrintContextLog(context, "## TD_LOG : Guide Points Not Enough")
			return 0
		end
		ScriptLib.SetPlatformPointArray(context, guide_point_pool[idx], challenge_programme[curPlanNumber][curwave].guide_routes[i],routes_start_point[challenge_programme[curPlanNumber][curwave].guide_routes[i]].points, { route_type = 0 })
		if idx >= #guide_point_pool then
			idx=1
		else
			idx=idx+1
		end
		ScriptLib.SetGroupVariableValue(context, "route_guide_points_index", idx)
	end
	ScriptLib.CreateGroupTimerEvent(context, defs.group_id, "route_points_delay", defs.route_guide_timer)
	return 0
end

function stop_route_guide_points(context)
	ScriptLib.CancelGroupTimerEvent(context, defs.group_id, "route_points_delay")
	ScriptLib.KillGroupEntity(context,{group_id=defs.group_id,gadgets=guide_point_pool})
	return 0
end

function action_REACH_POINT(context,evt)
	--ScriptLib.KillEntityByConfigId(context, { config_id = evt.param1 })
	ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, evt.param1, GadgetState.GearStart)
	return 0
end

function del_monster_number(context, prev_context, param1, param2, param3)
	local new_num=ScriptLib.GetGroupVariableValue(context, "left_monsters")
	if new_num==0 then
		return 0
	end
	new_num=new_num-1
	ScriptLib.SetGroupVariableValue(context, "left_monsters", new_num)
	ScriptLib.SetSceneMultiStagePlayValue(context, 999, "left_monsters",new_num, true)
	return 0
end

function set_monster_number(context, prev_context, param1, param2, param3)
	ScriptLib.SetGroupVariableValue(context, "left_monsters", param1)
	return 0
end

--某group结束,进下一阶段
function tide_done(context, prev_context, param1, param2, param3)
	local curPlanNumber=ScriptLib.GetGroupVariableValue(context, "planNum")
	ScriptLib.EndSceneMultiStagePlayStage(context, 999,"battle"..ScriptLib.GetGroupVariableValue(context, "wave_ptr"), true)
	local wave = ScriptLib.GetGroupVariableValue(context, "wave_ptr")
	wave=wave+1
	ScriptLib.SetGroupVariableValue(context, "wave_ptr", wave)
	ScriptLib.PrintContextLog(context, "## wave = "..wave)
	if wave > #challenge_programme[curPlanNumber] then
		ScriptLib.EndSceneMultiStagePlay(context, 999, true)
		ScriptLib.PrintContextLog(context, "## TD_LOG : All Wave Done")
		--ScriptLib.CauseDungeonFail(context)
		return 0
	end
	ScriptLib.CreateGroupTimerEvent(context, defs.group_id, "delay", 3)
	Reset_Cards_Effect(context)
	--ScriptLib.StartSceneMultiStagePlayStage(context, 999, 30, Multistage.MechanicusFlipCard,"card"..ScriptLib.GetGroupVariableValue(context, "wave_ptr"),{})
	return 0
end

function action_END_DELAY(context, evt)
	--ScriptLib.SetSceneMultiStagePlayValue(context, 999, "building_stage_seconds",defs.build_time or 123, true)
	Set_Cards_Effect(context)
	ScriptLib.ExecuteGroupLua(context, monster_group, "synchronization_card_num", {ScriptLib.GetGroupVariableValue(context, "challenge_active_93"),ScriptLib.GetGroupVariableValue(context, "challenge_active_94")})
	--ScriptLib.SetSceneMultiStagePlayValue(context, 999, "round",ScriptLib.GetGroupVariableValue(context, "wave_ptr"), true)
	add_route_guide_points(context)
	ScriptLib.ExecuteGroupLua(context, monster_group, "set_monster_number_req", {ScriptLib.GetGroupVariableValue(context, "wave_ptr")})
	ScriptLib.SetSceneMultiStagePlayValues(context, 999, {round=ScriptLib.GetGroupVariableValue(context, "wave_ptr"),rounds=#challenge_programme[ScriptLib.GetGroupVariableValue(context, "planNum")],left_monsters=ScriptLib.GetGroupVariableValue(context, "left_monsters"),max_escapable_monsters=ScriptLib.GetGroupVariableValue(context, "max_escapable_monsters"),escaped_monsters=ScriptLib.GetGroupVariableValue(context, "escaped_monsters"),stage_bonus_building_points=0}, true)
	ScriptLib.StartSceneMultiStagePlayStage(context, 999, defs.build_time or 123, Multistage.ChessBuild,"build"..ScriptLib.GetGroupVariableValue(context, "wave_ptr"),{})
	if defs.trapGroups~=nil then
		for i=1,#defs.trapGroups do
			ScriptLib.RefreshGroup(context, { group_id = defs.trapGroups[i], suite = 1, refresh_level_revise = 0, is_force_random_suite = false})
		end
	end
	return 0
end

--怪物到达终点，涨分
function monster_escaped(context, prev_context, param1, param2, param3)
	if ScriptLib.GetGroupVariableValue(context, "GM_Ignore_Monster_Escape") ~=0 then
		return 0
	end
	local max_escapable_monsters=ScriptLib.GetGroupVariableValue(context, "max_escapable_monsters")
	local escaped_monsters=ScriptLib.GetGroupVariableValue(context, "escaped_monsters")
	if param1==1 then
		escaped_monsters=escaped_monsters+1
		ScriptLib.SetSceneMultiStagePlayValue(context, 999, "escaped_monsters",escaped_monsters, true)
		if escaped_monsters>=max_escapable_monsters then
			ScriptLib.EndSceneMultiStagePlay(context, 999, false)
			return 0
		end
		ScriptLib.SetGroupVariableValue(context, "escaped_monsters", escaped_monsters)
		return 0
	end
	escaped_monsters=escaped_monsters+1
	escaped_monsters=escaped_monsters+ScriptLib.GetGroupVariableValue(context, "challenge_active_95")
	ScriptLib.SetSceneMultiStagePlayValue(context, 999, "escaped_monsters",escaped_monsters, true)
	if escaped_monsters>=max_escapable_monsters then
		ScriptLib.EndSceneMultiStagePlay(context, 999, false)
		return 0
	end
	ScriptLib.SetGroupVariableValue(context, "escaped_monsters", escaped_monsters)
	return 0
end


function action_EVENT_SCENE_MULTISTAGE_PLAY_STAGE_END(context, evt)
	if evt.param2==Multistage.ChessBuild then
		stop_route_guide_points(context)
		ScriptLib.ExecuteGroupLua(context, monster_group, "start_tide", {defs.group_id,ScriptLib.GetGroupVariableValue(context, "wave_ptr")})
		ScriptLib.PrintContextLog(context, "## TD2.0_LOG : 战斗阶段开始："..ScriptLib.GetGroupVariableValue(context, "wave_ptr").."monstergroup="..monster_group)
		ScriptLib.StartSceneMultiStagePlayStage(context, 999, 0, Multistage.ChessKill,"battle"..ScriptLib.GetGroupVariableValue(context, "wave_ptr"),{})
	end
	return 0
end
--tide_group_defs[ScriptLib.GetGroupVariableValue(context, "wave_ptr")].group
LF_Init_Challenge_Group()