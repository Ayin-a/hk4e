--ServerUploadTool Save to [/root/env/data/lua/common/V3_1]
--[[
=====================================================================================================================
||	Filename 	  ||	PermissionOperator
||	RelVersion    ||	3.1
||	Owner         ||	xudong.sun
||	Description   ||	3.1权限操作台
||	LogName       ||    ## PermissionOperator_LOG
||	Protection    ||	在操作台创建时判断玩家权限是否足够开启
=====================================================================================================================

local optionID = {}
local optionID_2 = 0

=======================================================================================]]
local SGV_Delta={
	[100004] = 103,
	[100006] = 101,
	[100007] = 102,
	[100008] = 100,
}

local FailOption = 495

local SGV_KEY = "SGV_PERMISSION_COMMONLEVEL"
local SGV_GLOW = "SGV_PERMISSION_GLOW"
local SGV_SWIPE = "SGV_PERMISSION_SWIPE"



local extrTriggers = {
	initialtrigger = {
		["Group_Load"] = { config_id = 80000001, name = "Group_Load", event= EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_group_load", trigger_count = 0},
		["Select_Option"] = { config_id = 80000002, name = "Select_Option", event= EventType.EVENT_SELECT_OPTION, source = "", condition = "", action = "action_select_option", trigger_count = 0},
		["State_Change"] = { config_id = 80000003, name = "State_Change", event= EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_state_change", trigger_count = 0},
		["Switch_Timer"] = { config_id = 80000004, name = "Switch_Timer", event= EventType.EVENT_TIME_AXIS_PASS, source = "switchbutton_timer", condition = "", action = "action_switch_button", trigger_count = 0},
		["Chain_Level_Change"] = { config_id = 80000005, name = "Chain_Level_Change", event= EventType.EVENT_GADGET_CHAIN_LEVEL_CHANGE, source = "", condition = "", action = "action_chain_level_change", trigger_count = 0},
	}
}

function action_state_change( context, evt)

	local entityID = ScriptLib.GetEntityIdByConfigId(context, evt.param2)
	if ScriptLib.GetGadgetIdByEntityId(context, entityID) == 70330283 and evt.param3 == 202 then

		ScriptLib.PrintContextLog(context, "## PermissionOperator_LOG : 权限操作台状态切换")

		LF_StOperatorState( context )

	end



	--补充逻辑： 当两个操作台同步时，通过切状态删除另一个操作台的按键
	if ScriptLib.GetGadgetIdByEntityId(context, entityID) == 70330283 and evt.param1 == 203 then

		ScriptLib.PrintContextLog(context, "## PermissionOperator_LOG : 删除自己的按键")

		if #optionID<1 or optionID[1]==nil then

			ScriptLib.PrintGroupWarning(context,"## PermissionOperator_LOG action_state_change: LD没有设置optionid的misc")

			return 0
		end

		ScriptLib.DelWorktopOptionByGroupId(context, 0, evt.param2, optionID[1])

	end


	return 0
end

function action_chain_level_change( context, evt )

	ScriptLib.PrintContextLog(context, "## PermissionOperator_LOG : 权限等级变化")

	LF_StOperatorState( context )

	return 0
end


function action_select_option( context, evt)

	-- 8.4新增需求：权限不足也提供按键，但是按下后会提供一个reminder提醒玩家权限不足
	if evt.param2 == FailOption then


		ScriptLib.ShowReminderByUid(context, {ScriptLib.GetSceneOwnerUid(context)}, 33100001)

		return 0
	end


	if #optionID==2 then
		if evt.param2 == optionID[1] then
			ScriptLib.DelWorktopOptionByGroupId(context, 0, evt.param1, optionID[1])
			ScriptLib.SetGroupVariableValue(context, "Variable_OptionID", 2)
			ScriptLib.InitTimeAxis(context, "switchbutton_timer", {2}, false)
			ScriptLib.SetEntityServerGlobalValueByConfigId(context, evt.param1, "SGV_PERMISSION_SWIPE", 1)
		else
			ScriptLib.DelWorktopOptionByGroupId(context, 0, evt.param1, optionID[2])
			ScriptLib.SetGroupVariableValue(context, "Variable_OptionID", 1)
			ScriptLib.InitTimeAxis(context, "switchbutton_timer", {2}, false)
			ScriptLib.SetEntityServerGlobalValueByConfigId(context, evt.param1, "SGV_PERMISSION_SWIPE", 2)
		end
	elseif #optionID==1 then
		if evt.param2 == optionID[1] then
			ScriptLib.DelWorktopOptionByGroupId(context, 0, evt.param1, optionID[1])

			--8.11 BUG修复：防止玩法完成后重复设置按键
			ScriptLib.SetGroupVariableValue(context, "Variable_OptionID", 2)
		end
	else
		ScriptLib.PrintGroupWarning(context,"## PermissionOperator action_select_option: 小兄弟，你的table是不是填错惹")
	end

	return 0
end

function action_switch_button( context, evt )

	for i,v in ipairs(gadgets) do

		if v.gadget_id == 70330283 then

			ScriptLib.SetWorktopOptionsByGroupId(context, 0, v.config_id, {optionID[ScriptLib.GetGroupVariableValue(context, "Variable_OptionID")]})

		end
	end

	return 0
end


function action_group_load( context, evt )

	ScriptLib.PrintContextLog(context, "## PermissionOperator_LOG : 权限操作台创建")
	LF_StOperatorState( context )

	return 0 
end


function LF_RestOperatorState(context, prev_context)

	ScriptLib.PrintContextLog(context, "## PermissionOperator_LOG : 重置权限操作台")
	LF_StOperatorState( context )

	return 0
end

function LF_StOperatorState( context )

	for i,v in ipairs(gadgets) do
		if v.gadget_id == 70330283 then
			--获取需要的权限类型和等级
			local _permissiontype = 0
			local _permissionlevel = 0
			if v.server_global_value_config.SGV_CHAINTYPE ~= nil then
				_permissiontype = v.server_global_value_config.SGV_CHAINTYPE
			else
				ScriptLib.PrintGroupWarning(context,"## PermissionOperator action_gadget_create: 没有获取到升级链类型")
			end

			if v.server_global_value_config.SGV_CHAINLEVEL ~= nil then
				_permissionlevel = v.server_global_value_config.SGV_CHAINLEVEL
			else
				_permissionlevel = 1
			end
			ScriptLib.PrintContextLog(context, "## PermissionOperator_LOG : 需要等级".._permissionlevel)

			local _curlevel = ScriptLib.GetChainLevel(context, ScriptLib.GetSceneOwnerUid(context), _permissiontype)
			ScriptLib.PrintContextLog(context, "## PermissionOperator_LOG : 自身等级：".._curlevel)

			if ScriptLib.GetGadgetStateByConfigId(context, 0, v.config_id)==202 then
				ScriptLib.PrintContextLog(context, "## PermissionOperator_LOG : 状态202，空表现")
				--设置锁定
				ScriptLib.SetEntityServerGlobalValueByConfigId(context, v.config_id, "SGV_PERMISSION_GLOW", 0)

				ScriptLib.SetEntityServerGlobalValueByConfigId(context, v.config_id, "SGV_PERMISSION_COMMONLEVEL", 0)

				ScriptLib.DelWorktopOptionByGroupId(context, 0, v.config_id, optionID[ScriptLib.GetGroupVariableValue(context, "Variable_OptionID")])

			elseif _curlevel< _permissionlevel then
				ScriptLib.PrintContextLog(context, "## PermissionOperator_LOG : 设置失败表现")
				--设置失败表现
				ScriptLib.SetEntityServerGlobalValueByConfigId(context, v.config_id, "SGV_PERMISSION_GLOW", -1)

				ScriptLib.SetEntityServerGlobalValueByConfigId(context, v.config_id, "SGV_PERMISSION_COMMONLEVEL", SGV_Delta[_permissiontype]+_permissionlevel+100)

				--8.4新增需求：权限不足也提供按键，但是按下后会提供一个reminder提醒玩家权限不足
				ScriptLib.SetWorktopOptionsByGroupId(context, 0, v.config_id, {FailOption})

			else
				ScriptLib.PrintContextLog(context, "## PermissionOperator_LOG : 设置成功表现")
				--设置成功表现
				ScriptLib.SetEntityServerGlobalValueByConfigId(context, v.config_id, "SGV_PERMISSION_GLOW", 1)

				ScriptLib.SetEntityServerGlobalValueByConfigId(context, v.config_id, "SGV_PERMISSION_COMMONLEVEL", SGV_Delta[_permissiontype]+_curlevel)

				--8.11 BUG修复：防止玩法完成后重复设置按键
				if #optionID == 1 then
					if ScriptLib.GetGroupVariableValue(context, "Variable_OptionID") == 1 then
						ScriptLib.PrintContextLog(context, "## PermissionOperator_LOG : 设置单次按键")

						if optionID[ScriptLib.GetGroupVariableValue(context, "Variable_OptionID")] == nil then

							ScriptLib.PrintGroupWarning(context,"## PermissionOperator LF_StOperatorState: OPTIONID获取失败")

							return 0
						end

						ScriptLib.SetWorktopOptionsByGroupId(context, 0, v.config_id, {optionID[ScriptLib.GetGroupVariableValue(context, "Variable_OptionID")]})
					end
				else
					ScriptLib.PrintContextLog(context, "## PermissionOperator_LOG : 设置多次按键")

					if optionID[ScriptLib.GetGroupVariableValue(context, "Variable_OptionID")] == nil then

						ScriptLib.PrintGroupWarning(context,"## PermissionOperator LF_StOperatorState: OPTIONID获取失败")

						return 0
					end

					
					ScriptLib.SetWorktopOptionsByGroupId(context, 0, v.config_id, {optionID[ScriptLib.GetGroupVariableValue(context, "Variable_OptionID")]})
				end			

			end
			--8.8 更新：支持复数个权限操作台
			--break

		end
	end

	return 0
end



function LF_Initialize_Group()
	for k,v in pairs(extrTriggers.initialtrigger) do
		table.insert(triggers, v)
		table.insert(suites[init_config.suite].triggers, v.name)


		--给任务版，从suite里切出来的加个特判
		if isQuest ~= nil then
			table.insert(suites[1].triggers, v.name)
		end
	end
	table.insert(variables,{ config_id=50000001, name = "Variable_OptionID", value = 1, no_refresh = true})
	return 0
end

LF_Initialize_Group()