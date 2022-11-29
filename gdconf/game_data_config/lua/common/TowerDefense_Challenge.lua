--[[
tide_group_defs ={
	[1] = {group = 250030010, delay = 60, next_group = 2, buff = {1,2,3},enter={},exit={},enter_id={},exit_id={}},
	[2] = {group = 250030010, delay = 60, next_group = 3, buff = {1,2,3}},
	[3] = {group = 250030010, delay = 60, next_group = 4, buff = {1,2,3}},
	[4] = {group = 250030010, delay = 60, next_group = 5, buff = {1,2,3}},
	[5] = {group = 250030010, delay = 60, next_group = 0, buff = {1,2,3}},
}
enter_pool={}
exit_pool={}
--]]



function LF_Init_Challenge_Group()
	--g1 = { config_id = 1, gadget_id = 70360002, pos = points[1].pos, rot = points[1].rot, level = 1 } 
	--table.insert(gadgets, g1)
	--table.insert(suites[1].gadgets, g1.config_id)
	--创建路径指引
	--guide_point_pool={}
	--for i=1,100 do
		--table.insert(gadgets,  { config_id = 10000+i, gadget_id = 70350159, pos = { x = 63.257, y = 14.676, z = -27.624 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true })
		--table.insert{guide_point_pool,10000+i}
	--end

	t1 = { config_id = 8000001, name = "gadget_create", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "", action = "action_gadget_create", trigger_count = 0 }
	t2 = { config_id = 8000002, name = "select_option", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "", action = "action_select_option", trigger_count = 0 }
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
		table.insert(v.triggers, t1.name)
		table.insert(v.triggers, t2.name)
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
	table.insert(triggers, t1)
	table.insert(triggers, t2)
	table.insert(triggers, t3)
	table.insert(triggers, t4)
	table.insert(triggers, t5)
	table.insert(triggers, t6)
	table.insert(triggers, t7)
	table.insert(triggers, t8)
	table.insert(triggers, t9)
	table.insert(triggers, t10)
	table.insert(triggers, t11)
	table.insert(variables, {  config_id=50000001,name = "wave_ptr", value = 0})
	table.insert(variables, {  config_id=50000002,name = "special_challenge", value = 0})
	table.insert(variables, {  config_id=50000003,name = "left_monsters", value = 0})
	table.insert(variables, {  config_id=50000004,name = "max_escapable_monsters", value = 10})
	table.insert(variables, {  config_id=50000005,name = "escaped_monsters", value = 0})
	table.insert(variables, {  config_id=50000006,name = "route_guide_points_index", value = 1,no_refresh = true})
	--怪物对地脉镇石造成额外伤害
	table.insert(variables, {  config_id=50000007,name = "monster_double_damage", value = 0})
	--挑战逃出的怪物不超过一个
	table.insert(variables, {  config_id=50000008,name = "challenge_8", value = 0})
	table.insert(variables, {  config_id=50000009,name = "challenge_10", value = 0})
	table.insert(variables, {  config_id=50000010,name = "challenge_11", value = 0})
	table.insert(variables, {  config_id=50000011,name = "GM_Ignore_Monster_Escape", value = 0})
	table.insert(variables, {  config_id=50000012,name = "challenge_65", value = 0})
	table.insert(variables, {  config_id=50000013,name = "challenge_66", value = 0})
	table.insert(variables, {  config_id=50000014,name = "challenge_67", value = 0})
	table.insert(variables, {  config_id=50000015,name = "challenge_68", value = 0})
	table.insert(variables, {  config_id=50000016,name = "challenge_69", value = 0})
	table.insert(variables, {  config_id=50000017,name = "challenge_70", value = 0})
	table.insert(variables, {  config_id=50000018,name = "challenge_71", value = 0})
	table.insert(variables, {  config_id=50000019,name = "challenge_72", value = 0})
	table.insert(variables, {  config_id=50000020,name = "challenge_73", value = 0})
	table.insert(variables, {  config_id=50000021,name = "challenge_74", value = 0})
	table.insert(variables, {  config_id=50000022,name = "challenge_75", value = 0})
	table.insert(variables, {  config_id=50000023,name = "challenge_76", value = 0})
end
--------------------------------------
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
	if evt.param2==Multistage.MechanicusBuild then
		ScriptLib.EndSceneMultiStagePlayStage(context, 999,"build"..ScriptLib.GetGroupVariableValue(context, "wave_ptr"), true)
	end
	return 0
end
--翻牌子
function action_PICK_CARD(context, evt)
--诅咒效果
	--逃脱的魔物不能超过一个
	if evt.param2==83 then
		ScriptLib.SetGroupVariableValue(context, "challenge_8", evt.param3)
		ScriptLib.SetMechanicusChallengeState(context,defs.group_id, 999, evt.param3, 83, MechanicusChallenge.OnGoing)
	end
	--角色无法进行攻击，持续1轮
	if evt.param2==85 then
		ScriptLib.SetGroupVariableValue(context, "challenge_10", evt.param3)
		ScriptLib.SetMechanicusChallengeState(context,defs.group_id, 999, evt.param3, 85, MechanicusChallenge.OnGoing)
		--ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.attack_forbid_gadget, GadgetState.GearStart)
		--ScriptLib.SetIsAllowUseSkill(context, 0) 
		ScriptLib.SetSceneMultiStagePlayValue(context, 999, "can_use_skill", 0, true)
	end
	--角色的移动速度降低，持续1轮
	if evt.param2==86 then
		ScriptLib.SetGroupVariableValue(context, "challenge_11", evt.param3)
		ScriptLib.SetMechanicusChallengeState(context,defs.group_id, 999, evt.param3, 86, MechanicusChallenge.OnGoing)
		ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.speed_down_gadget, GadgetState.GearStart)
	end

--牌子效果
	--配置功能冷却降低
	if evt.param3==33 then
		if trap_group~=nil then
			for i=1,#trap_group do 
				ScriptLib.ExecuteGroupLua(context, trap_group[i], "SetColdTownDiscount", {0})
			end
		end
		return 0
	end
	--配置机关所需奇术点降低
	if evt.param3==34 then
		if trap_group~=nil then
			for i=1,#trap_group do 
				ScriptLib.ExecuteGroupLua(context, trap_group[i], "SetDiscount", {0})
			end
		end
		--ScriptLib.ExecuteGroupLua(context, defs.trap_group_id, "SetDiscount", {0})
		return 0
	end
	--立即获得250点奇术点
	if evt.param3==44 then
		--ScriptLib.AddMechanicusBuildingPoints(context,defs.group_id ,999, evt.uid, 50)
		return 0
	end
	--立即回复地脉镇石5点耐久度
	if evt.param3==45 then
		local hp=ScriptLib.GetGroupVariableValue(context, "escaped_monsters")
		hp=hp-5
		if hp<0 then
			hp=0
		end
		ScriptLib.SetGroupVariableValue(context, "escaped_monsters", hp)
		ScriptLib.SetSceneMultiStagePlayValue(context, 999, "escaped_monsters",hp, true)
		return 0
	end
	--额外出现一架遗迹守卫
	if evt.param3==65 then

		ScriptLib.SetGroupVariableValue(context, "challenge_65", 1)
		ScriptLib.ExecuteGroupLua(context, tide_group_defs[ScriptLib.GetGroupVariableValue(context, "wave_ptr")].group, "extra_monster_65", {defs.group_id})
		ScriptLib.SetMechanicusChallengeState(context,defs.group_id, 999, evt.param3, 65, MechanicusChallenge.OnGoing)
		return 0
	end
	--额外出现一架遗迹猎者
	if evt.param3==66 then
		ScriptLib.SetGroupVariableValue(context, "challenge_66", 1)
		ScriptLib.ExecuteGroupLua(context, tide_group_defs[ScriptLib.GetGroupVariableValue(context, "wave_ptr")].group, "extra_monster_66", {defs.group_id})
		ScriptLib.SetMechanicusChallengeState(context,defs.group_id, 999, evt.param3, 66, MechanicusChallenge.OnGoing)
		return 0
	end
	--额外出现一架遗迹重机
	if evt.param3==67 then
		ScriptLib.SetGroupVariableValue(context, "challenge_67", 1)
		ScriptLib.ExecuteGroupLua(context, tide_group_defs[ScriptLib.GetGroupVariableValue(context, "wave_ptr")].group, "extra_monster_67", {defs.group_id})
		ScriptLib.SetMechanicusChallengeState(context,defs.group_id, 999, evt.param3, 67, MechanicusChallenge.OnGoing)
		return 0
	end
	--额外出现丘丘岩盔王
	if evt.param3==68 then
		ScriptLib.SetGroupVariableValue(context, "challenge_68", 1)
		ScriptLib.ExecuteGroupLua(context, tide_group_defs[ScriptLib.GetGroupVariableValue(context, "wave_ptr")].group, "extra_monster_68", {defs.group_id})
		ScriptLib.SetMechanicusChallengeState(context,defs.group_id, 999, evt.param3, 68, MechanicusChallenge.OnGoing)
		return 0
	end
	--额外出现丘丘霜盔王
	if evt.param3==69 then
		ScriptLib.SetGroupVariableValue(context, "challenge_69", 1)
		ScriptLib.ExecuteGroupLua(context, tide_group_defs[ScriptLib.GetGroupVariableValue(context, "wave_ptr")].group, "extra_monster_69", {defs.group_id})
		ScriptLib.SetMechanicusChallengeState(context,defs.group_id, 999, evt.param3, 69, MechanicusChallenge.OnGoing)
		return 0
	end
	--额外出现奔跑的丘丘暴徒
	if evt.param3==70 then
		ScriptLib.SetGroupVariableValue(context, "challenge_70", 1)
		ScriptLib.ExecuteGroupLua(context, tide_group_defs[ScriptLib.GetGroupVariableValue(context, "wave_ptr")].group, "extra_monster_70", {defs.group_id})
		ScriptLib.SetMechanicusChallengeState(context,defs.group_id, 999, evt.param3, 70, MechanicusChallenge.OnGoing)
		return 0
	end

	--魔物对地脉镇石造成额外1点伤害
	if evt.param3==71 then
		ScriptLib.SetGroupVariableValue(context, "challenge_71", 1)
		ScriptLib.SetMechanicusChallengeState(context,defs.group_id, 999, evt.param3, 71, MechanicusChallenge.OnGoing)
		ScriptLib.SetGroupVariableValue(context, "monster_double_damage", 1)
		return 0
	end
	--所有魔物血量提升xxx
	if evt.param3==72 then
		ScriptLib.SetGroupVariableValue(context, "challenge_72", 1)
		ScriptLib.ExecuteGroupLua(context, tide_group_defs[ScriptLib.GetGroupVariableValue(context, "wave_ptr")].group, "buff_monster_4112", {defs.group_id})
		ScriptLib.SetMechanicusChallengeState(context,defs.group_id, 999, evt.param3, 72, MechanicusChallenge.OnGoing)
		return 0
	end
	--所有魔物防御提升xxx
	if evt.param3==73 then
		ScriptLib.SetGroupVariableValue(context, "challenge_73", 1)
		ScriptLib.ExecuteGroupLua(context, tide_group_defs[ScriptLib.GetGroupVariableValue(context, "wave_ptr")].group, "buff_monster_4113", {defs.group_id})
		ScriptLib.SetMechanicusChallengeState(context,defs.group_id, 999, evt.param3, 73, MechanicusChallenge.OnGoing)
		return 0
	end
	--击败魔物分降低
	if evt.param3==74 then
		ScriptLib.SetGroupVariableValue(context, "challenge_74", 1)
		ScriptLib.SetMechanicusChallengeState(context,defs.group_id, 999, evt.param3, 74, MechanicusChallenge.OnGoing)
		return 0
	end
	--建造机关分变高
	if evt.param3==75 then
		ScriptLib.SetGroupVariableValue(context, "challenge_75", 1)
		ScriptLib.SetMechanicusChallengeState(context,defs.group_id, 999, evt.param3, 75, MechanicusChallenge.OnGoing)
		return 0
	end
	return 0
end

function Reset_Cards_Effect(context)
	
	--local challenge_83=ScriptLib.GetGroupVariableValue(context, "challenge_8")
	local challenge_85=ScriptLib.GetGroupVariableValue(context, "challenge_10")
	local challenge_86=ScriptLib.GetGroupVariableValue(context, "challenge_11")
	--if challenge_83~=0 then
		--ScriptLib.PrintContextLog(context, "## TD_LOG : CHALLENGE 83 CARD ID"..challenge_83)
		--ScriptLib.SetMechanicusChallengeState(context,defs.group_id, 999, challenge_83, 83,MechanicusChallenge.Success)
	--end
	if challenge_85~=0 then
		ScriptLib.PrintContextLog(context, "## TD_LOG : CHALLENGE 85 CARD ID"..challenge_85)
		ScriptLib.SetMechanicusChallengeState(context,defs.group_id, 999, challenge_85, 85,MechanicusChallenge.Success)
		--ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.attack_forbid_gadget, GadgetState.Default)
		ScriptLib.SetSceneMultiStagePlayValue(context, 999, "can_use_skill", 1, true)
		--ScriptLib.SetIsAllowUseSkill(context, 1) 
	end
	if challenge_86~=0 then
		ScriptLib.PrintContextLog(context, "## TD_LOG : CHALLENGE 86 CARD ID"..challenge_86)
		ScriptLib.SetMechanicusChallengeState(context,defs.group_id, 999, challenge_86, 86,MechanicusChallenge.Success)
		ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.speed_down_gadget, GadgetState.GearStop)
	end

	--ScriptLib.SetGroupVariableValue(context, "challenge_8", 0)
	ScriptLib.SetGroupVariableValue(context, "challenge_10", 0)
	ScriptLib.SetGroupVariableValue(context, "challenge_11", 0)

	if ScriptLib.GetGroupVariableValue(context, "challenge_65")~=0 then
		ScriptLib.SetMechanicusChallengeState(context,defs.group_id, 999, 65, 65,MechanicusChallenge.Success)
	end
	ScriptLib.SetGroupVariableValue(context, "challenge_65", 0)

	if ScriptLib.GetGroupVariableValue(context, "challenge_66")~=0 then
		ScriptLib.SetMechanicusChallengeState(context,defs.group_id, 999, 66, 66,MechanicusChallenge.Success)
	end
	ScriptLib.SetGroupVariableValue(context, "challenge_66", 0)

	if ScriptLib.GetGroupVariableValue(context, "challenge_67")~=0 then
		ScriptLib.SetMechanicusChallengeState(context,defs.group_id, 999, 67, 67,MechanicusChallenge.Success)
	end
	ScriptLib.SetGroupVariableValue(context, "challenge_67", 0)

	if ScriptLib.GetGroupVariableValue(context, "challenge_68")~=0 then
		ScriptLib.SetMechanicusChallengeState(context,defs.group_id, 999, 68, 68,MechanicusChallenge.Success)
	end
	ScriptLib.SetGroupVariableValue(context, "challenge_68", 0)

	if ScriptLib.GetGroupVariableValue(context, "challenge_69")~=0 then
		ScriptLib.SetMechanicusChallengeState(context,defs.group_id, 999, 69, 69,MechanicusChallenge.Success)
	end
	ScriptLib.SetGroupVariableValue(context, "challenge_69", 0)

	if ScriptLib.GetGroupVariableValue(context, "challenge_70")~=0 then
		ScriptLib.SetMechanicusChallengeState(context,defs.group_id, 999, 70, 70,MechanicusChallenge.Success)
	end
	ScriptLib.SetGroupVariableValue(context, "challenge_70", 0)

	if ScriptLib.GetGroupVariableValue(context, "challenge_71")~=0 then
		ScriptLib.SetMechanicusChallengeState(context,defs.group_id, 999, 71, 71,MechanicusChallenge.Success)
		ScriptLib.SetGroupVariableValue(context, "monster_double_damage", 0)
	end
	ScriptLib.SetGroupVariableValue(context, "challenge_71", 0)

	if ScriptLib.GetGroupVariableValue(context, "challenge_72")~=0 then
		ScriptLib.SetMechanicusChallengeState(context,defs.group_id, 999, 72, 72,MechanicusChallenge.Success)
	end
	ScriptLib.SetGroupVariableValue(context, "challenge_72", 0)

	if ScriptLib.GetGroupVariableValue(context, "challenge_73")~=0 then
		ScriptLib.SetMechanicusChallengeState(context,defs.group_id, 999, 73, 73,MechanicusChallenge.Success)
	end
	ScriptLib.SetGroupVariableValue(context, "challenge_73", 0)

	if ScriptLib.GetGroupVariableValue(context, "challenge_74")~=0 then
		ScriptLib.SetMechanicusChallengeState(context,defs.group_id, 999, 74, 74,MechanicusChallenge.Success)
	end
	ScriptLib.SetGroupVariableValue(context, "challenge_74", 0)

	if ScriptLib.GetGroupVariableValue(context, "challenge_75")~=0 then
		ScriptLib.SetMechanicusChallengeState(context,defs.group_id, 999, 75, 75,MechanicusChallenge.Success)
	end
	ScriptLib.SetGroupVariableValue(context, "challenge_75", 0)

	return 0
end

function CreateDoors(context,wave)
	ScriptLib.SetSceneMultiStagePlayValue(context, 999, "clear_all_points",1, true)
	if wave>1 then
		ScriptLib.KillGroupEntity(context,{group_id=defs.group_id,gadgets=tide_group_defs[wave-1].enter})
		ScriptLib.KillGroupEntity(context,{group_id=defs.group_id,gadgets=tide_group_defs[wave-1].exit})

	end
	for i=1,#tide_group_defs[wave].enter do
		ScriptLib.CreateGadget(context, { config_id =tide_group_defs[wave].enter[i] })
	end
	for i=1,#tide_group_defs[wave].exit do
		ScriptLib.CreateGadget(context, { config_id =tide_group_defs[wave].exit[i] })
	end
	for i=1,#tide_group_defs[wave].enter_id do
		ScriptLib.SetSceneMultiStagePlayValue(context, 999, "add_entrance_point",tide_group_defs[wave].enter_id[i], true)
	end
	for i=1,#tide_group_defs[wave].exit_id do
		ScriptLib.SetSceneMultiStagePlayValue(context, 999, "add_exit_point",tide_group_defs[wave].exit_id[i], true)
	end
	return 0
end


function action_group_load(context, evt)	
	if defs.max_escapable_monsters~= nil then
		ScriptLib.SetGroupVariableValue(context, "max_escapable_monsters", defs.max_escapable_monsters)
	end
	ScriptLib.InitSceneMultistagePlay(context, 999, MultistagePlayType.Mechanicus, {rounds = #tide_group_defs, init_building_points = defs.init_building_points or 200},ScriptLib.GetSceneUidList(context))
	CreateDoors(context,1)
	ScriptLib.SetGroupVariableValue(context, "wave_ptr", 1)
	ScriptLib.ExecuteGroupLua(context, tide_group_defs[ScriptLib.GetGroupVariableValue(context, "wave_ptr")].group, "set_monster_number_req", {defs.group_id})
	ScriptLib.ExecuteGroupLua(context, tide_group_defs[1].group, "set_monster_preview", {defs.group_id})
	ScriptLib.SetSceneMultiStagePlayValues(context, 999, {round=ScriptLib.GetGroupVariableValue(context, "wave_ptr"),rounds=#tide_group_defs,left_monsters=ScriptLib.GetGroupVariableValue(context, "left_monsters"),max_escapable_monsters=ScriptLib.GetGroupVariableValue(context, "max_escapable_monsters"),escaped_monsters=ScriptLib.GetGroupVariableValue(context, "escaped_monsters"),stage_bonus_building_points=0}, true)
	ScriptLib.StartSceneMultiStagePlayStage(context, 999, defs.build_time or 78, Multistage.MechanicusBuild,"build"..ScriptLib.GetGroupVariableValue(context, "wave_ptr"),{})
	ScriptLib.ExecuteGroupLua(context, defs.gear_group_id, "Initialize_Fundations", {0})
	add_route_guide_points(context)
	ScriptLib.CreateGroupTimerEvent(context, defs.group_id, "reminder",5)
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
	local curwave=ScriptLib.GetGroupVariableValue(context, "wave_ptr")
	if tide_group_defs[curwave].guide_routes ==nil then
		ScriptLib.PrintContextLog(context, "## TD_LOG : Guide Routes Is Nil")
		return 0
	end
	for i=1,#tide_group_defs[curwave].guide_routes do
		--tide_group_defs[curwave].guide_routes[i]
		local idx=ScriptLib.GetGroupVariableValue(context, "route_guide_points_index")
		if -2==ScriptLib.CreateGadgetByConfigIdByPos(context, guide_point_pool[idx], routes_start_point[tide_group_defs[curwave].guide_routes[i]].start_point, { x = 0.000, y = 0.000, z = 0.000 }) then
			ScriptLib.PrintContextLog(context, "## TD_LOG : Guide Points Not Enough")
			return 0
		end
		ScriptLib.SetPlatformPointArray(context, guide_point_pool[idx], tide_group_defs[curwave].guide_routes[i],routes_start_point[tide_group_defs[curwave].guide_routes[i]].points, { route_type = 0 })
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


function action_gadget_create(context, evt)
	if evt.param1 == 1 then
		ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_id, evt.param1, {2902})
	end
	return 0
end


function action_select_option(context, evt)
	if evt.param1 == 1 and evt.param2 == 2902 then
		--ScriptLib.ExecuteGroupLua(context, tide_group_defs[1].group, "start_tide", {defs.group_id})
		ScriptLib.InitSceneMultistagePlay(context, 999, MultistagePlayType.Mechanicus, {rounds = #tide_defs, init_building_points = defs.init_building_points or 2000},ScriptLib.GetSceneUidList(context))
		ScriptLib.StartSceneMultiStagePlayStage(context, 999, 30, Multistage.MechanicusBuild,"test",{})
		ScriptLib.SetGroupVariableValue(context, "wave_ptr", 1)
		ScriptLib.DelWorktopOption(context, evt.param2)
	end
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
	ScriptLib.EndSceneMultiStagePlayStage(context, 999,"battle"..ScriptLib.GetGroupVariableValue(context, "wave_ptr"), true)
	local wave = ScriptLib.GetGroupVariableValue(context, "wave_ptr")
	wave=wave+1
	ScriptLib.SetGroupVariableValue(context, "wave_ptr", wave)
	ScriptLib.PrintContextLog(context, "## wave = "..wave)
	if wave > #tide_group_defs then
		if ScriptLib.GetGroupVariableValue(context, "challenge_71")~=0 then
			ScriptLib.SetMechanicusChallengeState(context,defs.group_id, 999, 71, 71,MechanicusChallenge.Success)
		end
		ScriptLib.SetGroupVariableValue(context, "challenge_71", 0)
		if ScriptLib.GetGroupVariableValue(context, "challenge_75")~=0 then
			ScriptLib.SetMechanicusChallengeState(context,defs.group_id, 999, 75, 75,MechanicusChallenge.Success)
		end
		ScriptLib.SetGroupVariableValue(context, "challenge_75", 0)
		ScriptLib.EndSceneMultiStagePlay(context, 999, true)
		ScriptLib.PrintContextLog(context, "## TD_LOG : All Wave Done")
		--ScriptLib.CauseDungeonFail(context)
		return 0
	end
	ScriptLib.ExecuteGroupLua(context, tide_group_defs[wave].group, "set_monster_preview", {defs.group_id})
	ScriptLib.CreateGroupTimerEvent(context, defs.group_id, "delay", 3)
	Reset_Cards_Effect(context)
	--ScriptLib.StartSceneMultiStagePlayStage(context, 999, 30, Multistage.MechanicusFlipCard,"card"..ScriptLib.GetGroupVariableValue(context, "wave_ptr"),{})
	return 0
end

function action_END_DELAY(context, evt)
	ScriptLib.SetSceneMultiStagePlayValue(context, 999, "building_stage_seconds",defs.build_time or 78, true)
	ScriptLib.SetSceneMultiStagePlayValue(context, 999, "round",ScriptLib.GetGroupVariableValue(context, "wave_ptr"), true)
	ScriptLib.StartSceneMultiStagePlayStage(context, 999, 30, Multistage.MechanicusFlipCard,"card"..ScriptLib.GetGroupVariableValue(context, "wave_ptr"),{})
	CreateDoors(context,ScriptLib.GetGroupVariableValue(context, "wave_ptr"))
	return 0
end

--怪物到达终点，涨分
function monster_escaped(context, prev_context, param1, param2, param3)
	if ScriptLib.GetGroupVariableValue(context, "GM_Ignore_Monster_Escape") ~=0 then
		return 0
	end
	local max_escapable_monsters=ScriptLib.GetGroupVariableValue(context, "max_escapable_monsters")
	local escaped_monsters=ScriptLib.GetGroupVariableValue(context, "escaped_monsters")
	if ScriptLib.GetGroupVariableValue(context, "monster_double_damage") ==0 then
		escaped_monsters=escaped_monsters+1
	elseif ScriptLib.GetGroupVariableValue(context, "monster_double_damage") ==1 then
		escaped_monsters=escaped_monsters+2
	end
	ScriptLib.SetSceneMultiStagePlayValue(context, 999, "escaped_monsters",escaped_monsters, true)
	if ScriptLib.GetGroupVariableValue(context, "challenge_8") ~=0 then
		ScriptLib.EndSceneMultiStagePlay(context, 999, false)
		--ScriptLib.CauseDungeonFail(context)
		return 0
	end
	if escaped_monsters>=max_escapable_monsters then
		ScriptLib.EndSceneMultiStagePlay(context, 999, false)
		--ScriptLib.CauseDungeonFail(context)
		return 0
	end
	ScriptLib.SetGroupVariableValue(context, "escaped_monsters", escaped_monsters)
	return 0
end


function action_EVENT_SCENE_MULTISTAGE_PLAY_STAGE_END(context, evt)
	if evt.param2==Multistage.MechanicusBuild then
		stop_route_guide_points(context)
		ScriptLib.ExecuteGroupLua(context, tide_group_defs[ScriptLib.GetGroupVariableValue(context, "wave_ptr")].group, "start_tide", {defs.group_id})
		--ScriptLib.SetSceneMultiStagePlayValues(context, 999, {round=ScriptLib.GetGroupVariableValue(context, "wave_ptr"),rounds=#tide_group_defs,left_monsters=ScriptLib.GetGroupVariableValue(context, "left_monsters"),max_escapable_monsters=ScriptLib.GetGroupVariableValue(context, "max_escapable_monsters"),escaped_monsters=ScriptLib.GetGroupVariableValue(context, "escaped_monsters"),stage_bonus_building_points=0}, true)
		ScriptLib.StartSceneMultiStagePlayStage(context, 999, 0, Multistage.MechanicusKill,"battle"..ScriptLib.GetGroupVariableValue(context, "wave_ptr"),{})
	end
	if evt.param2==Multistage.MechanicusFlipCard then
		add_route_guide_points(context)
		ScriptLib.ExecuteGroupLua(context, tide_group_defs[ScriptLib.GetGroupVariableValue(context, "wave_ptr")].group, "set_monster_number_req", {defs.group_id})
		ScriptLib.SetSceneMultiStagePlayValues(context, 999, {round=ScriptLib.GetGroupVariableValue(context, "wave_ptr"),rounds=#tide_group_defs,left_monsters=ScriptLib.GetGroupVariableValue(context, "left_monsters"),max_escapable_monsters=ScriptLib.GetGroupVariableValue(context, "max_escapable_monsters"),escaped_monsters=ScriptLib.GetGroupVariableValue(context, "escaped_monsters"),stage_bonus_building_points=0}, true)
		ScriptLib.StartSceneMultiStagePlayStage(context, 999, defs.build_time or 78, Multistage.MechanicusBuild,"build"..ScriptLib.GetGroupVariableValue(context, "wave_ptr"),{})
	end
	return 0
end
--tide_group_defs[ScriptLib.GetGroupVariableValue(context, "wave_ptr")].group
LF_Init_Challenge_Group()