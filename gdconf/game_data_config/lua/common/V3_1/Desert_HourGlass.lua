--ServerUploadTool Save to [/root/env/data/lua/common/V3_1]
--[[
=====================================================================================================================
||	Filename 	  ||	Desert_HourGlass
||	RelVersion    ||	3.1
||	Owner         ||	xudong.sun
||	Description   ||	3.1版本沙漏计时玩法
||	LogName       ||    ## Desert_HourGlass_LOG
||	Protection    ||	按下按键时自动检查当前是否可以开启挑战
=====================================================================================================================
local HourGlass_ConfigIDList = {}
local glassNum = 4

--8.25新增  防止多个挑战叠加
local forceStopGroup = {}

=======================================================================================]]
local glassNum = #HourGlass_ConfigIDList

local extrTriggers = {
	initialtrigger = {
		["Enter_Region"] = { config_id = 80000001, name = "Enter_Region", event= EventType.EVENT_ENTER_REGION, source = "1", condition = "", action = "action_player_in_region", trigger_count = 0, tag = "999" },
		["challenge_Success"] = { config_id = 80000002, name = "challenge_Success", event= EventType.EVENT_CHALLENGE_SUCCESS, source = "", condition = "", action = "action_challengeSuccess", trigger_count = 0 },
		["challenge_Fail"] = { config_id = 80000003, name = "challenge_Fail", event= EventType.EVENT_CHALLENGE_FAIL, source = "", condition = "", action = "action_challengeFail", trigger_count = 0 },
		["Group_Load"] = { config_id = 80000004, name = "Group_Load", event= EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_GroupLoad", trigger_count = 0 },
		["Group_UnLoad"] = { config_id = 80000005, name = "Group_UnLoad", event= EventType.EVENT_GROUP_WILL_UNLOAD, source = "", condition = "", action = "actiong_group_unload", trigger_count = 0 },
	}
}

function action_player_in_region( context, evt )

	ScriptLib.PrintContextLog(context, "## Desert_HourGlass_LOG : Player In EndRegion")

	return 0
end

function action_GroupLoad( context, evt )
	--清空挑战开始标记位
	ScriptLib.SetGroupVariableValue(context, "HourGlass_InChallenge", 0)
	ScriptLib.SetGroupVariableValue(context, "HourGlass_InTime", 0)

	if ScriptLib.GetGroupVariableValue(context, "HourGlass_Success")==1 then
		--挑战完成，将所有沙漏置为完成态
		for i,v in ipairs(HourGlass_ConfigIDList) do
			ScriptLib.SetGroupGadgetStateByConfigId(context, 0, v, 203)
		end
	else
		--挑战未完成，将所有非特殊状态的沙漏复位
		for i,v in ipairs(HourGlass_ConfigIDList) do
			if ScriptLib.GetGadgetStateByConfigId(context, 0, v) ~= 204 and ScriptLib.GetGadgetStateByConfigId(context, 0, v) ~= 901 then

				ScriptLib.PrintContextLog(context, "## Desert_HourGlass_LOG : 初始化 configID:"..v)
				ScriptLib.SetGroupGadgetStateByConfigId(context, 0, v, 0)
			end
			
		end
	end

	return 0
end

function action_challengeSuccess( context, evt )

	if evt.source_name == "1"  then

		--设置沙漏状态
		for i,v in ipairs(HourGlass_ConfigIDList) do
			ScriptLib.SetEntityServerGlobalValueByConfigId(context, v, "SGV_HourGlass_Active", 0)
			ScriptLib.SetGroupGadgetStateByConfigId(context, 0, v, 203)
		end

		ScriptLib.SetGroupVariableValue(context, "HourGlass_Success", 1)

		--设置挑战开启标志
		ScriptLib.SetGroupVariableValue(context, "HourGlass_InChallenge", 0)
	end

	return 0
end

function action_challengeFail( context, evt )

	ScriptLib.PrintContextLog(context, "## Desert_HourGlass_LOG : 触发挑战失败，id = "..evt.source_name)

	if evt.source_name == "1"  then

		--设置沙漏状态
		for i,v in ipairs(HourGlass_ConfigIDList) do
			ScriptLib.SetEntityServerGlobalValueByConfigId(context, v, "SGV_HourGlass_Active", 0)
			ScriptLib.SetGroupGadgetStateByConfigId(context, 0, v, 0)
		end

		--设置挑战开启标志
		ScriptLib.SetGroupVariableValue(context, "HourGlass_InChallenge", 0)
	elseif evt.param1==2010067 then

		ScriptLib.StopChallenge(context, tonumber(evt.source_name), 1)
		ScriptLib.AttachChildChallenge(context, 1, tonumber(evt.source_name), 2010068, { 10, 30, 10},{},{success = 0,fail = 0})
		ScriptLib.SetEntityServerGlobalValueByConfigId(context, ScriptLib.GetGroupTempValue(context, "childChallenge"..tonumber(evt.source_name),{}), "SGV_HourGlass_Active", 0)
		ScriptLib.SetGroupGadgetStateByConfigId(context, 0, ScriptLib.GetGroupTempValue(context, "childChallenge"..tonumber(evt.source_name),{}), 201)

		ScriptLib.SetGroupTempValue(context, "childChallenge"..tonumber(evt.source_name), 0,{})

		for i=2,glassNum+1 do
			if ScriptLib.GetGroupTempValue(context, "childChallenge"..i,{})~=0 then
				return 0
			end
		end

		ScriptLib.StopChallenge(context, 1, 0)

	end


	return 0
end

function actiong_group_unload( context, evt )

	ScriptLib.PrintContextLog(context, "## Desert_HourGlass_LOG : 触发unload")

	ScriptLib.StopChallenge(context, 1, 0)

	return 0
end


function SLC_HourGlass_SetSGV( context, value )

	if ScriptLib.GetGroupVariableValue(context, "HourGlass_Success")==1 then
		return 0
	end

	ScriptLib.PrintContextLog(context, "## Desert_HourGlass_LOG : ServerLuaCall SetSGV")

	ScriptLib.PrintContextLog(context, "## Desert_HourGlass_LOG : target_eid = "..context.target_entity_id)

	local configID = ScriptLib.GetGadgetConfigId(context, { gadget_eid = context.target_entity_id })

	--客户端按下按键，纯计时版
	if value == 3 then
		--检查是否有建筑师版
		for i,v in ipairs(HourGlass_ConfigIDList) do
			local entityID = ScriptLib.GetEntityIdByConfigId(context, v)
			if ScriptLib.GetGadgetIdByEntityId(context, entityID) == 70330310 and ScriptLib.GetGadgetStateByConfigId(context, 0, v) == 204 then
				ScriptLib.ShowReminderByUid(context, {context.owner_uid}, 33010076)
				return 0
			end
		end

	    --设置沙漏状态
		ScriptLib.SetEntityServerGlobalValueByConfigId(context, configID, "SGV_HourGlass_Active", 1)

		ScriptLib.SetGroupVariableValue(context, "HourGlass_InTime", 1)

	end

	--纯计时版的停止逻辑
	if value == 0 then
		ScriptLib.SetEntityServerGlobalValueByConfigId(context, configID, "SGV_HourGlass_Active", 0)
		ScriptLib.SetGroupVariableValue(context, "HourGlass_InTime", 0)
	end

	--客户端按下按键，寻找沙漏玩法
	if value == 1 or value == 2 then
		--设置沙漏开始计时
	
		ScriptLib.PrintContextLog(context, "## Desert_HourGlass_LOG : configID = "..configID)

		--检查是否有建筑师版
		for i,v in ipairs(HourGlass_ConfigIDList) do
			local entityID = ScriptLib.GetEntityIdByConfigId(context, v)
			if ScriptLib.GetGadgetIdByEntityId(context, entityID) == 70330310 and ScriptLib.GetGadgetStateByConfigId(context, 0, v) == 204 then
				ScriptLib.PrintContextLog(context, "## Desert_HourGlass_LOG : configID "..v.." 失败")
				ScriptLib.ShowReminderByUid(context, {context.owner_uid}, 33010076)
				return 0
			else
				ScriptLib.PrintContextLog(context, "## Desert_HourGlass_LOG : configID "..v.." 通过")
			end
		end
		--设置挑战开始
		if ScriptLib.GetGroupVariableValue(context, "HourGlass_InChallenge") == 0 then

			--8.25新增  防止多个挑战叠加
			--旧挑战设置失败
			if forceStopGroup~=nil and #forceStopGroup>0 then

				for i,v in ipairs(forceStopGroup) do
					ScriptLib.ExecuteGroupLua(context, v, "SLC_ForceStopChallenge", {})
				end

			end


			--ScriptLib.StartChallenge(context, 1, ChallengeID, ChallengeParam)
			ScriptLib.CreateFatherChallenge(context, 1, 2010066, 300, {success = 10, fail = 5})
		    ScriptLib.AttachChildChallenge(context, 1,  2, 2010067, { base_info.group_id, 100, value*30 ,5},{},{success = 0,fail = 0})

		    for i=3,glassNum+1 do
		    	ScriptLib.AttachChildChallenge(context, 1, i, 2010068, { 10, value*30, 10},{},{success = 0,fail = 0})
		    end

		    ScriptLib.PrintContextLog(context, "## Desert_HourGlass_LOG : 挑战关联完成")

		    --记录挑战tempvalu
		    ScriptLib.SetGroupTempValue(context, "childChallenge2", configID,{})
		    for i=3,glassNum+1 do
		    	ScriptLib.SetGroupTempValue(context, "childChallenge"..i, 0,{})
		    end
		    ScriptLib.PrintContextLog(context, "## Desert_HourGlass_LOG : Tempvalue记录完成")

		    --设置沙漏状态
			for i,v in ipairs(HourGlass_ConfigIDList) do
				if v~= configID then
					ScriptLib.SetGroupGadgetStateByConfigId(context, 0, v, 201)
				else
					ScriptLib.SetGroupGadgetStateByConfigId(context, 0, v, 202)
				end
			end
			ScriptLib.PrintContextLog(context, "## Desert_HourGlass_LOG : 沙漏状态设置完成")

			ScriptLib.StartFatherChallenge(context,1)

			--设置挑战开启标志
			ScriptLib.SetGroupVariableValue(context, "HourGlass_InChallenge", 1)
		else

			ScriptLib.PrintContextLog(context, "## Desert_HourGlass_LOG : 开关一次挑战")
			for i=2,glassNum+1 do
				if ScriptLib.GetGroupTempValue(context, "childChallenge"..i,{}) == 0 then
					ScriptLib.SetGroupGadgetStateByConfigId(context, 0, configID, 202)
					ScriptLib.StopChallenge(context, i, 1)
					ScriptLib.AttachChildChallenge(context, 1, i, 2010067, { base_info.group_id, 100, value*30 ,5},{},{success = 0,fail = 0})
					ScriptLib.SetGroupTempValue(context, "childChallenge"..i, configID,{})
					break
				end
			end

		end

		ScriptLib.SetEntityServerGlobalValueByConfigId(context, configID, "SGV_HourGlass_Active", 1)

		--检查当前沙漏是否都已经开始计时

		for i,v in ipairs(HourGlass_ConfigIDList) do
			if ScriptLib.GetGadgetAbilityFloatValue(context, base_info.group_id, v, "SGV_HourGlass_Active")~= 1 then

				ScriptLib.PrintContextLog(context, "## Desert_HourGlass_LOG : configID "..v.." is not active")

				return 0
			end
		end

		ScriptLib.PrintContextLog(context, "## Desert_HourGlass_LOG : 挑战成功")
		ScriptLib.StopChallenge(context, 1, 1)

	end
	
	return 0
end

--8.25新增  防止多个挑战叠加
function SLC_ForceStopChallenge(context, prev_context)

	ScriptLib.StopChallenge(context, 1, 0)

	return 0
end


function LF_Initialize_Group()
	for k,v in pairs(extrTriggers.initialtrigger) do
		table.insert(triggers, v)
		table.insert(suites[init_config.suite].triggers, v.name)
	end
	table.insert(variables,{ config_id=50000001, name = "HourGlass_Success", value = 0, no_refresh = true})
	table.insert(variables,{ config_id=50000002, name = "HourGlass_InTime", value = 0, no_refresh = true})
	table.insert(variables,{ config_id=50000003, name = "HourGlass_InChallenge", value = 0, no_refresh = true})
	return 0
end

LF_Initialize_Group()