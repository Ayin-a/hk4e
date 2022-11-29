--ServerUploadTool Save to [/root/env/data/lua/common/V2_7]
--[[
=====================================================================================================================
||	Filename 	  ||	Activity_LumenArena 
||	RelVersion    ||	2.7
||	Owner         ||	chao.jin
||	Description   ||	2.7 流明石活动最后一天的无双活动
||	LogName       ||    ##[LumenArena]
||	Protection    ||	
=====================================================================================================================
--[[misc
defs = {
	region_vision = 1001, --性能优化圈的范围
	operator_id = 574048, --操作台的configid
	option_id = 175, --操作台的option id
	Pursina_id = 574021, --挖掘桩的configid
	mud_cover_id = 574040, -- 包裹住光钉的黑泥包裹物
	delay_time = 5, -- 场上刷出黑泥地毯之后，多久刷出黑泥包裹物
	reminder_id = 400138, -- 每波刷出黑泥时，弹出remindert提示
}

black_mud_list = {
    [1] = {core_id = 574028, mud_id = 574034, charge_point_mud_cover_id = 574095},
    [2] = {core_id = 574029, mud_id = 574035, charge_point_mud_cover_id = 574096},
    [3] = {core_id = 574030, mud_id = 574036, charge_point_mud_cover_id = 574095},
    [4] = {core_id = 574031, mud_id = 574037, charge_point_mud_cover_id = 574096},
    [5] = {core_id = 574032, mud_id = 574038, charge_point_mud_cover_id = 574095},
    [6] = {core_id = 574033, mud_id = 574039, charge_point_mud_cover_id = 574096},
}

charge_point_list = {
    [574095] = 574093,
    [574096] = 574094,
}
monster_list = {
        ---1波：丘丘人
        { tide_mons = {574002,574003,574004,574005,574006,574050}, mud = {}, next_tide = 2,min = 6, max = 6, next_time = 2}, 
        --- 黑泥波+史莱姆
        { tide_mons = {574007,574008,574009,574010,574052}, mud = {3}, next_tide = 3,min = 5, max = 5, tide_delay = 4, next_time = 2},
        ---3波：精英暴徒+丘丘人
        { tide_mons = {574011,574012,574013,574014,574015,574054}, mud = {}, next_tide = 4,min = 6, max = 6, next_time = 2}, 
        --- 黑泥波+史莱姆
        { tide_mons = {574016,574017,574018,574019,574020}, mud = {4}, next_tide = 5,min = 5, max = 5, tide_delay = 4, next_time = 2},
        ---5波：遗迹怪
        { tide_mons = {574058,574059,574057}, mud = {}, next_tide = 6,min = 3, max = 3, next_time = 2},
        --- 黑泥波+丘丘人
        { tide_mons = {574061,574062,574063,574064,574065,574066}, mud = {1}, next_tide = 7,min = 6, max = 6, tide_delay = 4, next_time = 2},
        ---7波：遗迹
        { tide_mons = {574067,574068,574069}, mud = {}, next_tide = 8,min = 2, max = 2, next_time = 2}, 
        --- 黑泥波+丘丘人
        { tide_mons = {574071,574072,574073,574074,574075,574076}, mud = {4,6}, next_tide = 9,min = 6, max = 6, tide_delay = 5, next_time = 2},
        ---9波：猎犬
        { tide_mons = {574077,574078,574079,574080,574081}, mud = {}, next_tide = 10,min = 4, max = 4, next_time = 2},
        --- 黑泥波+丘丘人
        { tide_mons = {574083,574084,574085,574086,574087,574088}, mud = {1,3,4}, next_tide = 11,min = 6, max = 6, tide_delay = 5, next_time = 2},
        ---11波：黑蛇骑士
        { tide_mons = {574089,574090}, mud = {}, next_tide = 6,min = 2, max = 2, next_time = 2},  
}
tide_mons 当前波次使用的怪物潮List
mud 当前波次对应的黑泥索引，如果本波没有黑泥则为空
next_tide 下一波刷新的怪物索引
min max 怪物潮使用的最小和最大数量
tide_delay 当前怪物潮的刷怪延迟，如果没有黑泥则不会延迟刷怪
next_time 刷新下一波怪物的延迟时间
=====================================================================================================================]]
local default_infos = {
	gallery_id = 19001,
	mud_gadget_id = 70290233,
}

local PURSINA_STATE= {
    LOCKED = 0,
    IDLE = 201,
    RUNNING = 202,
    CLOSING = 203,
}

local PURSINA_ROTATE = {
    LOW = 1,
    MID = 2,
    HIGH= 3,
}

local LumenArena_Triggers = {
    [1] = { name = "group_load", config_id = 8001001, event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_group_load", trigger_count = 0},
    [2] = { name = "select_option", config_id = 8001002, event = EventType.EVENT_SELECT_OPTION, source = "", condition = "", action = "action_select_option", trigger_count = 0},
    [3] = { name = "monster_tide_die", config_id = 8001003, event = EventType.EVENT_MONSTER_TIDE_DIE, source = "", condition = "", action = "action_monster_tide_die", trigger_count = 0},
    [4] = { name = "monster_die_before_leave_scene", config_id = 8001004, event = EventType.EVENT_MONSTER_DIE_BEFORE_LEAVE_SCENE, source = "", condition = "", action = "action_monster_die_before_leave_scene", trigger_count = 0},
    [5] = { name = "gallery_stop", config_id = 8001005, event = EventType.EVENT_GALLERY_STOP, source = "", condition = "", action = "action_gallery_stop", trigger_count = 0},  
--    [6] = { name = "enter_vision_region", config_id = 8001006, event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_enter_vision_region", trigger_count = 0},
--    [7] = { name = "leave_vision_region", config_id = 8001007, event = EventType.EVENT_LEAVE_REGION, source = "", condition = "", action = "action_leave_vision_region", trigger_count = 0},
    [8] = { name = "group_will_unload", config_id = 8001008, event = EventType.EVENT_GROUP_WILL_UNLOAD, source = "", condition = "", action = "action_group_will_unload", trigger_count = 0},  
    [9] = { name = "time_axis_pass", config_id = 8001009, event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "", action = "action_time_axis_pass", trigger_count = 0},
    [10] = { name = "any_gadget_die", config_id = 8001010, event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_any_gadget_die", trigger_count = 0},
	[11] = { name = "gadget_create", config_id = 8001011, event = EventType.EVENT_GADGET_CREATE, source = "", condition = "", action = "action_gadget_create", trigger_count = 0},
    [12] = { name = "leave_fail_region", config_id = 8001012, event = EventType.EVENT_LEAVE_REGION, source = "", condition = "", action = "action_leave_fail_region", trigger_count = 0},
 
}

--玩家和操作台交互起Gallery挑战
function action_group_load(context, evt)
	ScriptLib.PrintContextLog(context,"##[LumenArena]:Group 加载完毕")
	LF_ResetTempValues(context)
	ScriptLib.SetWorktopOptionsByGroupId(context, base_info.group_id, defs.operator_id, {7})
	ScriptLib.SetGadgetStateByConfigId(context, defs.Pursina_id, PURSINA_STATE.IDLE)
	return 0
end

--玩家和操作台交互起Gallery挑战
function action_select_option(context, evt)
	ScriptLib.PrintContextLog(context,"##[LumenArena]:开启Gallery流程")
	local uidList = ScriptLib.GetSceneUidList(context)
	ScriptLib.SetPlayerStartGallery(context, default_infos.gallery_id, {uidList[1]})
	ScriptLib.SetGroupTempValue(context, "Gallery_Started", 1, {})

	ScriptLib.InitTimeAxis(context, "PURSINA_HIGH", {90}, false)
	ScriptLib.SetGadgetStateByConfigId(context, defs.Pursina_id, PURSINA_STATE.RUNNING)
	ScriptLib.SetEntityServerGlobalValueByConfigId(context, defs.Pursina_id, "SGV_PURSINA_ROTATE", PURSINA_ROTATE.MID)
	ScriptLib.RemoveEntityByConfigId(context, base_info.group_id, EntityType.GADGET, defs.pursina_tip)
	ScriptLib.DelWorktopOptionByGroupId(context, base_info.group_id, defs.operator_id, 7)

	for cover_id,charger_id in pairs(charge_point_list) do
		if 0 == ScriptLib.GetEntityIdByConfigId(context, charger_id) then
			ScriptLib.CreateGadget(context, {config_id = charger_id})
			ScriptLib.PrintContextLog(context,"##[LumenArena]:创建充能萤火虫")
		end
	end

	LF_CreateMud(context)
	ScriptLib.CreateGadget(context, {config_id = defs.enemy_gadget})
	return 0
end

--当前的怪物潮刷清空时，处理下一波怪物
function action_monster_tide_die(context,evt)
	local tide_index = ScriptLib.GetGroupTempValue(context, "Cur_Tide_Index", {})
    if evt.param1 >= #monster_list[tide_index].tide_mons then
    	ScriptLib.PrintContextLog(context,"##[LumenArena]:当前怪物潮怪物全部清空")
    	local next_refresh_time = monster_list[tide_index].next_time
    	if 0 ~= next_refresh_time then 
    		ScriptLib.InitTimeAxis(context, "REFRESH_NEXT_TIDE", {next_refresh_time}, false)
    	else 
    		LF_CreateMud(context)
    	end
    end
    return 0
end

--怪物死亡时同步
function action_monster_die_before_leave_scene(context, evt)
	local mon_id = monsters[evt.param1].monster_id
	ScriptLib.PrintContextLog(context,"##[LumenArena]:怪物死亡，同步Gallery，怪物ID"..mon_id)
	ScriptLib.UpdatePlayerGalleryScore(context, 19001, {["uid"] = context.owner_uid, ["monster_id"] = mon_id})
	return 0
end

--在特定黑泥刷新时，创建黑泥包裹物，移除充能光虫
function action_gadget_create(context, evt)
	if charge_point_list[evt.param1] ~= nil then 
		ScriptLib.PrintContextLog(context,"##[LumenArena]:黑泥包裹物创建，移除发光虫")
		if 0 ~= ScriptLib.GetEntityIdByConfigId(context, charge_point_list[evt.param1]) then
			ScriptLib.RemoveEntityByConfigId(context, base_info.group_id, EntityType.GADGET, charge_point_list[evt.param1])
		end
	end
	return 0
end

--玩家脱离挑战区域结束Gallery
function action_leave_fail_region(context, evt) 
	if evt.param1 == defs.fail_region then 
		ScriptLib.PrintContextLog(context,"##[LumenArena]:玩家离开挑战区域，挑战失败")
		ScriptLib.StopGallery(context, default_infos.gallery_id, true)
	end
	return 0
end


--黑泥清除同步
function action_any_gadget_die(context,evt)
	ScriptLib.PrintContextLog(context,"##[LumenArena]:黑泥死亡"..evt.param1)
	if 0 == ScriptLib.GetGroupTempValue(context, "Gallery_Started", {}) then
		ScriptLib.PrintContextLog(context,"##[LumenArena]:Gallery未开启，不处理")
		return 0
	end
	for k,mud_kv in pairs(black_mud_list) do
		if evt.param1 == mud_kv.core_id then 
			ScriptLib.PrintContextLog(context,"##[LumenArena]:清除黑泥核心，移除黑泥白盒, 同步Gallery")
--			ScriptLib.RemoveEntityByConfigId(context, base_info.group_id, EntityType.GADGET, mud_kv.mud_id)
			ScriptLib.KillEntityByConfigId(context, { group_id = base_info.group_id, config_id = mud_kv.mud_id, entity_type = EntityType.GADGET })
			--根据场上黑泥核心的状态移除包裹物
			local cover_id = mud_kv.charge_point_mud_cover_id
			local core_nums = 0
			for k,mud_infos in pairs(black_mud_list) do
				if cover_id == mud_infos.charge_point_mud_cover_id then 
					if 0 ~= ScriptLib.GetEntityIdByConfigId(context, mud_infos.core_id) then
						core_nums = core_nums + 1
					end
				end
			end
			if core_nums == 0 then
				ScriptLib.PrintContextLog(context,"##[LumenArena]:移除黑泥包裹物，创建对应发光虫")
				if 0 ~= ScriptLib.GetEntityIdByConfigId(context, mud_kv.charge_point_mud_cover_id) then
					ScriptLib.KillEntityByConfigId(context, { group_id = base_info.group_id, config_id = mud_kv.charge_point_mud_cover_id, entity_type = EntityType.GADGET })
				--	ScriptLib.RemoveEntityByConfigId(context, base_info.group_id, EntityType.GADGET, mud_kv.charge_point_mud_cover_id)
				end
				if 0 == ScriptLib.GetEntityIdByConfigId(context, charge_point_list[mud_kv.charge_point_mud_cover_id]) then
					ScriptLib.CreateGadget(context, {config_id = charge_point_list[mud_kv.charge_point_mud_cover_id]})
				end
			end
			ScriptLib.UpdatePlayerGalleryScore(context, 19001, {["uid"] = context.owner_uid, ["clean_mud_num"] = 1})
			ScriptLib.ChangeGroupTempValue(context, "Mud_Num", -1, {})
		end
	end
	if 0 == ScriptLib.GetGroupTempValue(context, "Mud_Num", {}) then 
		ScriptLib.PrintContextLog(context,"##[LumenArena]:场上黑泥清除完毕，恢复光钉状态")
		if 0 ~= ScriptLib.GetEntityIdByConfigId(context, defs.mud_cover_id) then
			ScriptLib.KillEntityByConfigId(context, { group_id = base_info.group_id, config_id = defs.mud_cover_id, entity_type = EntityType.GADGET })
		--	ScriptLib.RemoveEntityByConfigId(context, base_info.group_id, EntityType.GADGET, defs.mud_cover_id)
		end
		local roate_state = ScriptLib.GetGroupTempValue(context, "Pursina_Rotate", {})
		ScriptLib.SetEntityServerGlobalValueByConfigId(context, defs.Pursina_id, "SGV_PURSINA_ROTATE", roate_state)
		ScriptLib.SetGroupTempValue(context, "BeCovered", 0, {})
	end

	return 0
end

--最后一分钟升级光钉
function action_time_axis_pass(context, evt)
	if evt.source_name == "PURSINA_HIGH" then
		ScriptLib.PrintContextLog(context,"##[LumenArena]:剩余时间1分钟，升级光钉至高速")
		if 0 == ScriptLib.GetGroupTempValue(context, "Mud_Num", {}) then
			ScriptLib.SetGroupTempValue(context, "Pursina_Rotate", PURSINA_ROTATE.HIGH, {})
			ScriptLib.SetEntityServerGlobalValueByConfigId(context, defs.Pursina_id, "SGV_PURSINA_ROTATE", PURSINA_ROTATE.HIGH)
		end
		ScriptLib.SetGroupTempValue(context, "Pursina_Rotate", PURSINA_ROTATE.HIGH, {})
	end
	if evt.source_name == "MUD_REFRESH" then
		ScriptLib.PrintContextLog(context,"##[LumenArena]:检测是否有黑泥")
		if 0 ~= ScriptLib.GetGroupTempValue(context, "Mud_Num", {}) then 
			--判一下是否存在黑泥包裹物
			if 0 == ScriptLib.GetEntityIdByConfigId(context, defs.mud_cover_id) then
				ScriptLib.PrintContextLog(context,"##[LumenArena]:创建黑泥包裹物")
				ScriptLib.ShowReminder(context, defs.reminder_id2)
				ScriptLib.SetEntityServerGlobalValueByConfigId(context, defs.Pursina_id, "SGV_PURSINA_ROTATE", PURSINA_ROTATE.LOW)
				ScriptLib.CreateGadget(context, {config_id = defs.mud_cover_id})
				ScriptLib.SetGroupTempValue(context, "BeCovered", 1, {})
			end
		end
	end
	if evt.source_name == "REFRESH_NEXT_TIDE" then
		ScriptLib.PrintContextLog(context,"##[LumenArena]:创建下一波怪物潮和黑泥")
		LF_CreateMud(context)
	end
	if evt.source_name == "REFRESH_NEXT_TIDE_MONS" then
		ScriptLib.PrintContextLog(context,"##[LumenArena]:创建下一波怪物潮和黑泥")
		LF_CreateMonsterTide(context)
	end
	return 0
end

--挑战结束，重置所有的Group内容
function action_gallery_stop(context, evt)
	ScriptLib.PrintContextLog(context,"##[LumenArena]:Gallery结束，重置Group内容")
	if evt.param3 == 1 then 
		ScriptLib.PrintContextLog(context,"##[LumenArena]:同步进度")
--废弃	ScriptLib.SetGroupVariableValue(context, "succeed", 1) 
		ScriptLib.TryFinishLuminanceStoneChallengeStage(context, base_info.group_id)
	end
	ScriptLib.SetGroupTempValue(context, "Gallery_Started", 0, {})
	LF_StopPlay(context)
	return 0
end

--性能优化
function action_enter_vision_region(context,evt)
	if evt.param1 == defs.region_vision then
		ScriptLib.PrintContextLog(context,"##[LumenArena]:玩家进入活动Group优化范围，开启性能优化")
		ScriptLib.ForbidPlayerRegionVision(context, context.uid)
		ScriptLib.SetPlayerGroupVisionType(context, {context.uid}, {0,60010020})
	end
	return 0 
end

function action_leave_vision_region(context,evt)
	if evt.param1 == defs.region_vision then
		ScriptLib.PrintContextLog(context,"##[LumenArena]:玩家离开活动Group优化范围，关闭性能优化")
		ScriptLib.RevertPlayerRegionVision(context, context.uid)
		ScriptLib.SetPlayerGroupVisionType(context, {context.uid}, {1})
	end
	return 0 
end

function action_group_will_unload(context, evt) 
	ScriptLib.PrintContextLog(context,"##[LumenArena]:Group卸载")
	LF_StopPlay(context)
	return 0
end


--挑战结束
function LF_StopPlay(context)
	ScriptLib.PrintContextLog(context,"##[LumenArena]:进行停止处理")
	if 0 ~= ScriptLib.GetGroupTempValue(context, "Gallery_Started", {}) then
		ScriptLib.PrintContextLog(context,"##[LumenArena]:Gallery未结束，失败处理Gallery")
		ScriptLib.StopGallery(context, default_infos.gallery_id, true)
	end
	ScriptLib.SetWorktopOptionsByGroupId(context, base_info.group_id, 574048, {7})

	ScriptLib.SetGadgetStateByConfigId(context, defs.Pursina_id, PURSINA_STATE.CLOSING)
	ScriptLib.SetEntityServerGlobalValueByConfigId(context, defs.Pursina_id, "SGV_PURSINA_ROTATE", 0)

	ScriptLib.CreateGadget(context, {config_id = defs.pursina_tip})
	LF_ClearGadgetsAndMonsters(context)
	LF_StopAllTimeAxis(context)
	LF_ResetTempValues(context)

	return 0
end

--刷新怪物潮
function LF_CreateMonsterTide(context)
	if 1 ~= ScriptLib.GetGroupTempValue(context, "Gallery_Started", {}) then 
		ScriptLib.PrintContextLog(context,"##[LumenArena]:Gallery结束，停止刷新")
		return 0
	end
	ScriptLib.PrintContextLog(context,"##[LumenArena]:补充怪物潮")
	--刷新怪物潮
	local cur_tide_index = ScriptLib.GetGroupTempValue(context, "Tide_Index", {})
	ScriptLib.SetGroupTempValue(context, "Cur_Tide_Index", cur_tide_index, {})
	local cur_tide_num = ScriptLib.GetGroupTempValue(context, "Tide_Num", {})
	local cur_mons_list = monster_list[cur_tide_index].tide_mons
	local next_tide_index = monster_list[cur_tide_index].next_tide
	ScriptLib.SetGroupTempValue(context, "Tide_Index", next_tide_index, {})
	ScriptLib.ChangeGroupTempValue(context, "Tide_Num", 1, {})
	ScriptLib.AutoMonsterTide(context, cur_tide_num, base_info.group_id, cur_mons_list, #cur_mons_list, monster_list[cur_tide_index].min, monster_list[cur_tide_index].max)
	ScriptLib.PrintContextLog(context,"##[LumenArena]:刷新一波新的怪物潮")
end

--创建黑泥
function LF_CreateMud(context)
	ScriptLib.PrintContextLog(context,"##[LumenArena]:进入创建黑泥流程")
	if 1 ~= ScriptLib.GetGroupTempValue(context, "Gallery_Started", {}) then 
		ScriptLib.PrintContextLog(context,"##[LumenArena]:Gallery结束,停止刷新")
		return 0
	end
	local cur_tide_index = ScriptLib.GetGroupTempValue(context, "Tide_Index", {})
	local time_refresh_delay = monster_list[cur_tide_index].tide_delay
	--创建黑泥
	local cur_mud_list = monster_list[cur_tide_index].mud
	if #cur_mud_list ~= 0 then
		ScriptLib.PrintContextLog(context,"##[LumenArena]:补充黑泥")
		for i=1,#cur_mud_list do
			local mud_index = cur_mud_list[i]
			--如果场上对应的黑泥核心还存在，就不刷新黑泥
			if 0 == ScriptLib.GetEntityIdByConfigId(context, black_mud_list[mud_index].core_id) then
				ScriptLib.CreateGadget(context, {config_id = black_mud_list[mud_index].core_id})
				ScriptLib.CreateGadget(context, {config_id = black_mud_list[mud_index].mud_id})
				if 0 == ScriptLib.GetEntityIdByConfigId(context, black_mud_list[mud_index].charge_point_mud_cover_id) then
					ScriptLib.CreateGadget(context, {config_id = black_mud_list[mud_index].charge_point_mud_cover_id})
				end
				ScriptLib.ChangeGroupTempValue(context, "Mud_Num", 1, {})
			end
		end
		--延迟刷新包裹物
		ScriptLib.InitTimeAxis(context, "MUD_REFRESH", {5}, false)
		--如果已经被包裹了则不提示
		if 0 == ScriptLib.GetGroupTempValue(context, "BeCovered", {}) then 
			ScriptLib.ShowReminder(context, defs.reminder_id)
		end
	end
	--延迟刷新怪物潮
	if time_refresh_delay ~= nil then
		ScriptLib.PrintContextLog(context,"##[LumenArena]:开启时间轴"..time_refresh_delay.."秒后刷怪")
		ScriptLib.InitTimeAxis(context, "REFRESH_NEXT_TIDE_MONS", {time_refresh_delay}, false)
	else
		LF_CreateMonsterTide(context)
	end
end

function LF_ResetTempValues(context)
	ScriptLib.PrintContextLog(context,"##[LumenArena]:重置所有TempValue")
	ScriptLib.SetGroupTempValue(context, "Tide_Index", 1, {})	--怪物潮索引，决定使用的哪一波怪物潮
	ScriptLib.SetGroupTempValue(context, "Cur_Tide_Index", 1, {}) --当前使用的怪物潮INDEX
	ScriptLib.SetGroupTempValue(context, "Tide_Num", 1, {})	--怪物潮Index计数，标记当前怪物潮刷到哪一波了
	ScriptLib.SetGroupTempValue(context, "Mud_Num", 0, {}) --场上的黑泥数量
	ScriptLib.SetGroupTempValue(context, "Pursina_Rotate", PURSINA_ROTATE.MID, {})
	ScriptLib.SetGroupTempValue(context, "Gallery_Started", 0, {})
	ScriptLib.SetGroupTempValue(context, "BeCovered", 0, {})
end

function LF_StopAllTimeAxis(context)
	ScriptLib.PrintContextLog(context,"##[LumenArena]:停止时间轴")
	ScriptLib.EndTimeAxis(context, "PURSINA_HIGH")
	ScriptLib.EndTimeAxis(context, "MUD_REFRESH")
	ScriptLib.EndTimeAxis(context, "REFRESH_NEXT_TIDE")
	ScriptLib.EndTimeAxis(context, "REFRESH_NEXT_TIDE_MONS")
end

function LF_ClearGadgetsAndMonsters(context)
	ScriptLib.PrintContextLog(context,"##[LumenArena]:移除黑泥核心、黑泥、黑泥包裹物和萤火虫")
	local cur_tide_num = ScriptLib.GetGroupTempValue(context, "Tide_Num", {})
	ScriptLib.KillMonsterTide(context, base_info.group_id, cur_tide_num-1)
	if 0 ~= ScriptLib.GetEntityIdByConfigId(context, defs.enemy_gadget) then
        ScriptLib.RemoveEntityByConfigId(context, base_info.group_id, EntityType.GADGET, defs.enemy_gadget)
    end
	for k,v in pairs(black_mud_list) do
		if 0 ~= ScriptLib.GetEntityIdByConfigId(context, v.core_id) then
			ScriptLib.RemoveEntityByConfigId(context, base_info.group_id, EntityType.GADGET, v.core_id)
		end
		if 0 ~= ScriptLib.GetEntityIdByConfigId(context, v.mud_id) then
			ScriptLib.KillEntityByConfigId(context, { group_id = base_info.group_id, config_id = v.mud_id, entity_type = EntityType.GADGET })
		--	ScriptLib.RemoveEntityByConfigId(context, base_info.group_id, EntityType.GADGET, v.mud_id)
		end
	end

	for cover_id,charger_id in pairs(charge_point_list) do
		if 0 == ScriptLib.GetEntityIdByConfigId(context, charger_id) then
			ScriptLib.CreateGadget(context, {config_id = charger_id})
		end
		if 0 ~= ScriptLib.GetEntityIdByConfigId(context, cover_id) then 
			ScriptLib.RemoveEntityByConfigId(context, base_info.group_id, EntityType.GADGET, cover_id)
		end
		if 0 ~= ScriptLib.GetEntityIdByConfigId(context, charger_id) then
			ScriptLib.RemoveEntityByConfigId(context, base_info.group_id, EntityType.GADGET, charger_id)
		end
	end
	if 0 ~= ScriptLib.GetEntityIdByConfigId(context, defs.mud_cover_id) then
		ScriptLib.RemoveEntityByConfigId(context, base_info.group_id, EntityType.GADGET, defs.mud_cover_id)
	end
end


function LumenArena_Initialize()
	for config_id,infos in pairs(monsters) do
        if infos.affix ~= nil then
            table.insert(infos.affix, 4160)
            table.insert(infos.affix, 9009)
        else
            infos["affix"] = {4160,9009}
        end
    end
	for k,v in pairs(LumenArena_Triggers) do
		table.insert(triggers, v)
		table.insert(suites[1].triggers, v.name)
	end
end

LumenArena_Initialize()