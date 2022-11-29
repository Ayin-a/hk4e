--ServerUploadTool Save to [/root/env/data/lua/common/V2_7]
--[[
=====================================================================================================================
||	Filename 	  ||	Activity_LumenProtect
||	RelVersion    ||	2.7
||	Owner         ||	chao.jin
||	Description   ||	2.7 流明石活动 第二天的保护增幅仪活动
||	LogName       ||    ##[LumenProtect]
||	Protection    ||	
=====================================================================================================================
--[[misc
defs = {
	start_operator = 45001, --交互后开始的操作台ConfigID
	protect_target = 44003, --需要保护的目标ConfigID
	air_wall = , --空气墙的configID
	pursina = 45010, --光钉ConfigID
	challenge_time = 180, --挑战需要的时间
	mons_num = 6,-- 需要杀死的所有怪物数量
}
修改变量challenge_start 来触发挑战开始
=====================================================================================================================]]
local LumenProtect_Triggers = {
	{ config_id = 9100201, name = "group_load", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_group_load", trigger_count = 0 },
	{ config_id = 9100202, name = "challenge_success", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "", condition = "", action = "action_challenge_success", trigger_count = 0 }, 
	{ config_id = 9100203, name = "challenge_fail", event = EventType.EVENT_CHALLENGE_FAIL, source = "", condition = "", action = "action_challenge_fail", trigger_count = 0 }, 
    { config_id = 9100204, name = "variable_change", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "", action = "action_variable_change", trigger_count = 0,},
    { config_id = 9100205, name = "group_will_unload", event = EventType.EVENT_GROUP_WILL_UNLOAD, source = "", condition = "", action = "action_group_will_unload", trigger_count = 0,},
    { config_id = 9100206, name = "gadget_hp_change", event = EventType.EVENT_SPECIFIC_GADGET_HP_CHANGE, source = tostring(defs.protect_target), condition = "", action = "action_gadget_hp_change", trigger_count = 0,},
    { config_id = 9100207, name = "leave_fail_region",  event = EventType.EVENT_LEAVE_REGION, source = "", condition = "", action = "action_leave_fail_region", trigger_count = 0},
	{ config_id = 9100208, name = "any_gadget_die",  event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_gadget_die", trigger_count = 0},
    { config_id = 9100209, name = "pause_battle_bgm",  event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "", action = "action_pause_battle_bgm", trigger_count = 0},
}

function action_group_load(context, evt)
	ScriptLib.PrintContextLog(context,"##[LumenProtect]:[GroupLoad] 加载Group")
	--显示Group黄圈
	ScriptLib.SetGroupTempValue(context, "ProtectHP", 100, {})
	ScriptLib.ActivateGroupLinkBundle(context, base_info.group_id)
	ScriptLib.SetWorktopOptionsByGroupId(context, base_info.group_id, defs.start_operator, {7})
	return 0
end

function action_challenge_success(context, evt)
	local used_time = defs.challenge_time - evt.param2
	local gadget_hp = ScriptLib.GetGroupTempValue(context, "ProtectHP", {})
	--挑战默认流水号
	local transaction = evt.param_str1
    local lumen_level = ScriptLib.GetTeamServerGlobalValue(context, context.owner_uid, "SGV_Light_Stone_Level")
	if evt.param1 == 2009001 then
		ScriptLib.PrintContextLog(context,"##[LumenProtect]:挑战成功，推进进度，清除Group内容，延迟卸载")
		ScriptLib.TryFinishLuminanceStoneChallengeStage(context, base_info.group_id)
		LF_ClearGroup(context)
		ScriptLib.FinishGroupLinkBundle(context, base_info.group_id)
	end
	if evt.param1 == 2009002 then
		--拿父挑战的流水号
		transaction = ScriptLib.GetChallengeTransaction(context, 1)
		ScriptLib.PrintContextLog(context,"##[LumenProtect]:埋点数据,保护成功,流水号"..transaction.."耗时"..used_time.."剩余血量"..gadget_hp.."流明石等级"..lumen_level)
		ScriptLib.MarkGroupLuaAction(context, "Luminous_challenge_1", transaction, {["end_reason"] = 1,["use_time"]= used_time ,["hp_left"]= gadget_hp,["luminous_level"] = lumen_level})
	end
	if evt.param1 == 2009003 then
		--拿父挑战的流水号
		transaction = ScriptLib.GetChallengeTransaction(context, 1)
		ScriptLib.PrintContextLog(context,"##[LumenProtect]:埋点数据,杀怪成功,流水号"..transaction.."耗时"..used_time.."剩余血量"..gadget_hp.."流明石等级"..lumen_level)
		ScriptLib.MarkGroupLuaAction(context, "Luminous_challenge_1", transaction, {["end_reason"] = 2,["use_time"]= used_time ,["hp_left"]= gadget_hp,["luminous_level"] = lumen_level})
	end
	return 0
end

--挑战失败，处理显示
function action_challenge_fail(context, evt)
	if evt.param1 == 2009001 then
		ScriptLib.PrintContextLog(context,"##[LumenProtect]:挑战失败，重置Group内容，让玩家重新挑战")
		local used_time = defs.challenge_time + 5 - evt.param2
		local gadget_hp = ScriptLib.GetGroupTempValue(context, "ProtectHP", {})
    	local lumen_level = ScriptLib.GetTeamServerGlobalValue(context, context.owner_uid, "SGV_Light_Stone_Level")
    	local transaction = evt.param_str1
		if ScriptLib.IsPlayerAllAvatarDie(context, context.owner_uid) then
            ScriptLib.PrintContextLog(context,"##[LumenProtect]:埋点数据,团灭,流水号"..transaction.."耗时"..used_time.."剩余血量"..gadget_hp.."流明石等级"..lumen_level)
			ScriptLib.MarkGroupLuaAction(context, "Luminous_challenge_1", transaction, {["end_reason"] = 0,["use_time"]= used_time ,["hp_left"]= gadget_hp,["luminous_level"] = lumen_level})
		else
			--运营数据埋点,不是触发Leave导致的失败
			if 4 ~= ScriptLib.GetGroupTempValue(context, "END_REASON", {}) then
				--检测一下对应物件是否还存在
				if 0 == ScriptLib.GetEntityIdByConfigId(context, defs.protect_target) then
        			ScriptLib.PrintContextLog(context,"##[LumenProtect]:埋点数据,装置被破坏,流水号"..transaction.."耗时"..used_time.."剩余血量"..gadget_hp.."流明石等级"..lumen_level)
					ScriptLib.MarkGroupLuaAction(context, "Luminous_challenge_1", transaction, {["end_reason"] = 3,["use_time"]= used_time ,["hp_left"]= 0,["luminous_level"] = lumen_level})
				end
			end
		end
--		ScriptLib.CreateGadget(context, {config_id = defs.start_operator})
		ScriptLib.SetWorktopOptionsByGroupId(context, base_info.group_id, defs.start_operator, {7})
		ScriptLib.CreateGadget(context, {config_id = defs.pursina_tip})
		LF_ClearGroup(context)
	end
	return 0
end

--监听物件变化
function action_gadget_hp_change(context, evt) 
	ScriptLib.PrintContextLog(context,"##[LumenProtect]: 更新物件血量")
	ScriptLib.SetGroupTempValue(context, "ProtectHP", evt.param3, {})
	return 0
end

--玩家脱离战斗区域
function action_leave_fail_region(context, evt) 
    if evt.param1 == defs.fail_region then 
        ScriptLib.PrintContextLog(context,"##[LumenProtect]:玩家脱离战斗区域，手动结束挑战")
        ScriptLib.SetGroupTempValue(context, "END_REASON", 4, {})
        ScriptLib.StopChallenge(context, 1, 0)
    end
    return 0
end

--处理光钉状态
function action_variable_change(context, evt) 
    if evt.source_name == "pursina_state" then 
        if evt.param1 == 0 then 
            ScriptLib.SetEntityServerGlobalValueByConfigId(context, defs.pursina, "SGV_PURSINA_ROTATE", 0)
            return 0
        end
        if evt.param1 == 1 then 
            ScriptLib.SetEntityServerGlobalValueByConfigId(context, defs.pursina, "SGV_PURSINA_ROTATE", 1)
            return 0
        end
        if evt.param1 == 2 then 
            ScriptLib.SetEntityServerGlobalValueByConfigId(context, defs.pursina, "SGV_PURSINA_ROTATE", 2)
            return 0
        end
        if evt.param3 == 3 then 
            ScriptLib.SetEntityServerGlobalValueByConfigId(context, defs.pursina, "SGV_PURSINA_ROTATE", 3)
            return 0
        end
    end
    --defs.challenge_time
    if evt.source_name == "challenge_start" and evt.param1 ~= 0 then 
		ScriptLib.CreateFatherChallenge(context, 1, 2009001, defs.challenge_time+5, {success = 10, fail = 5})
		ScriptLib.AttachChildChallenge(context, 1,  2009003, 2009003, {defs.challenge_time, base_info.group_id, defs.protect_target, 1},{},{success = 10,fail = 5})
		ScriptLib.AttachChildChallenge(context, 1,  2009002, 2009002, {defs.challenge_time, base_info.group_id, defs.mons_num, 0},{},{success = 10,fail = 1})
		ScriptLib.StartFatherChallenge(context,1)
		ScriptLib.DelWorktopOptionByGroupId(context, 166001606, defs.start_operator, 7)
--		ScriptLib.KillEntityByConfigId(context, { config_id = defs.start_operator })
		ScriptLib.RemoveEntityByConfigId(context, base_info.group_id, EntityType.GADGET, defs.pursina_tip)
		ScriptLib.SetGroupTempValue(context, "ProtectHP", 100, {})
		ScriptLib.CreateGadget(context, {config_id=defs.enemy_gadget})
		ScriptLib.SetGroupTempValue(context, "END_REASON", 0, {})
    end
    return 0
end

--Group卸载
function action_group_will_unload(context, evt)
	ScriptLib.PrintContextLog(context,"##[LumenProtect]:Group卸载清除内容")
	LF_ClearGroup(context)
	return 0
end

--清除Group额外添加的内容
function LF_ClearGroup(context)
	ScriptLib.PrintContextLog(context,"##[LumenProtect]:重置Group内容")
	if 0 ~= ScriptLib.GetEntityIdByConfigId(context, defs.enemy_gadget) then
		ScriptLib.RemoveEntityByConfigId(context, base_info.group_id, EntityType.GADGET, defs.enemy_gadget)
	end
	for i=1,7 do
		ScriptLib.RemoveExtraGroupSuite(context, base_info.group_id, i+1)
	end
	for core_id,mud_id in pairs(mud_list) do
		if 0 ~= ScriptLib.GetEntityIdByConfigId(context, core_id) then
			ScriptLib.RemoveEntityByConfigId(context, base_info.group_id, EntityType.GADGET, core_id)
		end
		if 0 ~= ScriptLib.GetEntityIdByConfigId(context, mud_id) then
			ScriptLib.KillEntityByConfigId(context, { group_id = base_info.group_id, config_id = mud_id, entity_type = EntityType.GADGET })
--			ScriptLib.RemoveEntityByConfigId(context, base_info.group_id, EntityType.GADGET, mud_id)
		end
	end
	for k,gen_id in pairs(generators) do
		if 0 ~= ScriptLib.GetEntityIdByConfigId(context, gen_id) then
			ScriptLib.RemoveEntityByConfigId(context, base_info.group_id, EntityType.GADGET, gen_id)
		end
	end
	ScriptLib.SetEntityServerGlobalValueByConfigId(context, defs.pursina, "SGV_PURSINA_ROTATE", 0)
	if 0 ~= ScriptLib.GetEntityIdByConfigId(context, defs.air_wall) then
		ScriptLib.RemoveEntityByConfigId(context, base_info.group_id, EntityType.GADGET, defs.air_wall)
	end
	if 0 ~= ScriptLib.GetEntityIdByConfigId(context, defs.protect_target) then
		ScriptLib.RemoveEntityByConfigId(context, base_info.group_id, EntityType.GADGET, defs.protect_target)
	end
	ScriptLib.SetGroupVariableValue(context, "challenge_start", 0)
end

--处理黑泥和黑泥白盒的死亡关系
function action_gadget_die(context, evt) 
	if mud_list[evt.param1] ~= nil then 
		ScriptLib.PrintContextLog(context,"##[LumenProtect]:黑泥死亡，清除对应白盒")
		if 0 ~= ScriptLib.GetEntityIdByConfigId(context, mud_list[evt.param1]) then
			ScriptLib.KillEntityByConfigId(context, { group_id = base_info.group_id, config_id = mud_list[evt.param1], entity_type = EntityType.GADGET })
		--	ScriptLib.RemoveEntityByConfigId(context, base_info.group_id, EntityType.GADGET, mud_list[evt.param1])
		end
	end
	return 0
end

--处理BGM物件
function action_pause_battle_bgm(context, evt) 
	if evt.param1 == 606056 then 
		ScriptLib.PrintContextLog(context,"##[LumenProtect]:刷最后一波怪，移除BGM入战物件")
		if 0 ~= ScriptLib.GetEntityIdByConfigId(context, defs.enemy_gadget) then
			ScriptLib.RemoveEntityByConfigId(context, base_info.group_id, EntityType.GADGET, defs.enemy_gadget)
		end
	end
	return 0
end

function LumenProtect_Initialize()
	for config_id,infos in pairs(monsters) do
        if infos.affix ~= nil then
            table.insert(infos.affix, 4160)
        else
            infos["affix"] = {4160}
        end
    end
	table.insert(variables, {  config_id=50000001,name = "pursina_state", value = 0,no_refresh = false})
	table.insert(variables, {  config_id=50000002,name = "challenge_start", value = 0,no_refresh = false})
	for k,v in pairs(LumenProtect_Triggers) do
		table.insert(triggers, v)
		table.insert(suites[1].triggers, v.name)
	end
end

LumenProtect_Initialize()






