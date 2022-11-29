--ServerUploadTool Save to [/root/env/data/lua/common/V2_2]
--[[
defs = {
	order = {xxxx,xxxx,xxxx} --代表个点的顺序，填config_id
	challenge_id = 888 --挑战的显示文字
}
]]
local OPTION_ID = 92
local temp_Variables = {
	{ config_id=50000001,name = "NowOrderKey", value = 1, no_refresh = true },	--用于记录当前是哪个点：order中的key 用于断线重连时恢复进度
	{ config_id=50000002,name = "NowState", value = 0, no_refresh = true }, --用于记录当前点是哪个状态：0待探测 1待交互 用于断线重连时恢复进度
	{ config_id=50000003,name = "LD_Finish", value = 0, no_refresh = false }, --修改该值将触发LD_Finish
	{ config_id=50000004,name = "AddChallengeProgress", value = 0, no_refresh = false }, --修改该值将触发challenge进度+1
	{ config_id=50000005,name = "IS_IN_CHALLENGE", value = 0, no_refresh = false }, --防止重复开启挑战
}
local CHALLENGEID = defs.challenge_id
local temp_Tirgger = {
	{ name = "1", config_id = 9000001, event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "groupLoad",trigger_count = 0},
	{ name = "2", config_id = 9000002, event = EventType.EVENT_ENTER_REGION, source = "1", condition = "", action = "action_EnterRegion",trigger_count = 0},
	{ name = "3", config_id = 9000003, event = EventType.EVENT_LEAVE_REGION, source = "1", condition = "", action = "action_LeaveRegion",trigger_count = 0},
	{ name = "4", config_id = 9000004, event = EventType.EVENT_SELECT_OPTION, source = "", condition = "", action = "action_SelectOption",trigger_count = 0},
	--{ name = "5", config_id = 9000005, event = EventType.EVENT_VARIABLE_CHANGE, source = "ChallengFinish", condition = "condition_EndGameCheck", action = "action_EndGame",trigger_count = 0},
	{ name = "6", config_id = 9000006, event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_StateChange",trigger_count = 0},
	{ name = "7", config_id = 9000007, event = EventType.EVENT_VARIABLE_CHANGE, source = "LD_Finish", condition = "", action = "LD_Finish",trigger_count = 0},
	{ name = "8", config_id = 9000008, event = EventType.EVENT_VARIABLE_CHANGE, source = "AddChallengeProgress", condition = "", action = "action_AddChallengeProgress",tag = "1000",trigger_count = 0},
	{ name = "9", config_id = 9000009, event = EventType.EVENT_CHALLENGE_SUCCESS, source = "", condition = "", action = "action_EndGame",trigger_count = 0},
	
}
function action_AddChallengeProgress(context,evt)
	ScriptLib.PrintContextLog(context,"【action_AddChallengeProgress】")
	return 0
end
function action_StateChange(context,evt)	--只改个变量，用于存档。
	local key = ScriptLib.GetGroupVariableValue(context, "NowOrderKey")
	ScriptLib.PrintContextLog(context,"【onStateChange】key:"..key .. "|defsconfigid:".. defs.order[key] .. "|evt.param2:" .. evt.param2 .. "|p1:".. evt.param1)
	if evt.param2 == defs.order[key] and evt.param1 == 201 then
		ScriptLib.SetGroupVariableValue(context, "NowState", 201)
	end
	return 0
end
function action_EndGame(context)
	ScriptLib.PrintContextLog(context,"【EndGame】")
	local group = ScriptLib.GetContextGroupId(context)
	local uid = ScriptLib.GetSceneUidList(context)
	ScriptLib.AddExhibitionAccumulableData(context, uid[1], "Activity_Pursina_Group_"..group, 1)
	ScriptLib.FinishGroupLinkBundle(context, group)		--小地图黄圈提示是绑定groupbundle的，Finish掉groupbundle可移除黄圈显示，同时group会在离开视野后卸载
	ScriptLib.RemoveExtraGroupSuite(context, group, 1) --因为region在suite1，这个可以删掉region使得小道具不可用。
	return 0
end
function action_EnterRegion(context,evt)
	ScriptLib.PrintContextLog(context,"【onEnterRegion】CHALLENGEID="..CHALLENGEID)

	if evt.param1 == defs.region_Enter and ScriptLib.GetGroupVariableValue(context,"IS_IN_CHALLENGE") ~= 1 then
		ScriptLib.PrintContextLog(context,"【onEnterRegion】evt.param1 == defs.region_Enter, IS_IN_CHALLENGE ~= 1")
		ScriptLib.SetGroupVariableValue(context,"IS_IN_CHALLENGE",1)
		local uid = ScriptLib.GetSceneUidList(context)
		if CHALLENGEID ~= 2002003 then --boss前的探测需要显示0/3
			ScriptLib.CreateFatherChallenge(context,CHALLENGEID,CHALLENGEID,99999999, {success=1, fail=1,fail_on_wipe=true})
			ScriptLib.StartFatherChallenge(context, CHALLENGEID)
			ScriptLib.AttachChildChallenge(context,CHALLENGEID,CHALLENGEID+3,CHALLENGEID+3,{3,1000,1},{uid[1]},{success=1, fail=1})
		else
			ScriptLib.CreateFatherChallenge(context,CHALLENGEID,CHALLENGEID,99999999, {success=1, fail=1,fail_on_wipe=true})
			ScriptLib.StartFatherChallenge(context, CHALLENGEID)
			ScriptLib.AttachChildChallenge(context,CHALLENGEID,CHALLENGEID+3,CHALLENGEID+3,{3,1000,3},{uid[1]},{success=1, fail=1})
		end
		local key = ScriptLib.GetGroupVariableValue(context, "NowOrderKey")
		--boss前的探测需要显示0/3，且0需要给恢复进度
		if CHALLENGEID == 2002003 then
			for i = 2 , key do
				ScriptLib.SetGroupVariableValue(context,"AddChallengeProgress",1)
			end
		end
	end
	return 0
end
function action_LeaveRegion(context,evt)
	ScriptLib.PrintContextLog(context,"【onLeaveRegion】")
	if evt.param1 == defs.region_Leave then
		ScriptLib.SetGroupVariableValue(context,"IS_IN_CHALLENGE",0)
		ScriptLib.EndFatherChallenge(context, CHALLENGEID)
		reset_level(context)
	end
	return 0
end	
function groupLoad(context,evt)
	ScriptLib.PrintContextLog(context,"【onGroupLoad】")
	reset_level(context)
	return 0
end

function reset_level(context) --在leaveRegion和load的时候执行关卡重置（根据存储的variable）
	ScriptLib.PrintContextLog(context,"【[reset_level]】")

	local key = ScriptLib.GetGroupVariableValue(context, "NowOrderKey")
	--先把非1的suite卸载
	group_id = ScriptLib.GetContextGroupId(context)
	for i = 2 , #suites do
		ScriptLib.RemoveExtraGroupSuite(context, group_id, i)
	end
	--把所有point清空
	for i = 1 ,#defs.order do
		ScriptLib.RemoveEntityByConfigId(context, group_id, EntityType.GADGET, defs.order[i])
	end
	--如果是最终阶段 则恢复进度把桩子恢复
	if CHALLENGEID == 2002003 then
		for i = 2 , key do
			ScriptLib.CreateGadget(context, { config_id = 271020 + i })
		end
	end
	--按照进度正常创建点
	createPoint(context)

	return 0
end
function createPoint(context)--根据Variable创建探测点
	local key = ScriptLib.GetGroupVariableValue(context, "NowOrderKey")
	local state = ScriptLib.GetGroupVariableValue(context, "NowState")
	local group = ScriptLib.GetContextGroupId(context)
	ScriptLib.PrintContextLog(context,"NowOrderKey:"..key)
	ScriptLib.PrintContextLog(context,"NowState:"..state)
	ScriptLib.PrintContextLog(context,"22尝试创建gadget并设置目标探索点,configid:"..defs.order[key])
	ScriptLib.CreateGadget(context, { config_id = defs.order[key] })
	ScriptLib.DigSetSearchingTarget(context,defs.order[key])--程序提供的接口，设置当前点
	ScriptLib.SetGroupGadgetStateByConfigId(context, group, defs.order[key], state)

	return 0
end
function action_SelectOption(context,evt)
	local key = ScriptLib.GetGroupVariableValue(context, "NowOrderKey")
	ScriptLib.PrintContextLog(context,"【onSelectOption】")
	ScriptLib.PrintContextLog(context,"【onSelectOption】evt.param1="..evt.param1)
	ScriptLib.PrintContextLog(context,"【onSelectOption】key="..key)
	ScriptLib.PrintContextLog(context,"【onSelectOption】defs.order[key]="..defs.order[key])
	ScriptLib.PrintContextLog(context,"【onSelectOption】evt.param2="..evt.param2)
	if evt.param1 == defs.order[key] and evt.param2 == OPTION_ID then
		ScriptLib.DigRetractAllWidget(context)
		local group = ScriptLib.GetContextGroupId(context)
		ScriptLib.SetGroupGadgetStateByConfigId(context, group, defs.order[key], 202)
		ScriptLib.DelWorktopOptionByGroupId(context, group, defs.order[key], OPTION_ID)
		ScriptLib.AddEntityGlobalFloatValueByConfigId(context, {defs.order[key]}, "INTERACTED", 1)
	
		if key < #defs.order then--如果还有下一个点
			--埋点
			ScriptLib.MarkGroupLuaAction(context, "ActivityDig_1","" , {["is_target"] = 0})
		else
			--埋点
			ScriptLib.MarkGroupLuaAction(context, "ActivityDig_1","" , {["is_target"] = 1})
		end
	end
	return 0
end
function LD_Finish(context)--玩法完成后被LD调用
	ScriptLib.PrintContextLog(context,"【onLD_Finish】")
	--再次回首探测器
	ScriptLib.DigRetractAllWidget(context)
	--销毁旧点
	local key = ScriptLib.GetGroupVariableValue(context, "NowOrderKey")
	local group = ScriptLib.GetContextGroupId(context)
	ScriptLib.RemoveEntityByConfigId(context, group, EntityType.GADGET, defs.order[key])
	
	if key < #defs.order then--如果还有下一个点 创建下一个点
		ScriptLib.PrintContextLog(context,"【onLD_Finish】key < #defs.order")
		if CHALLENGEID == 2002003 then 
			ScriptLib.PrintContextLog(context,"【onLD_Finish】CHALLENGEID == 2002003")
			ScriptLib.SetGroupVariableValue(context,"AddChallengeProgress",1) 
		end
		ScriptLib.SetGroupVariableValue(context, "NowOrderKey", key+1)
		ScriptLib.SetGroupVariableValue(context, "NowState", 0)
		createPoint(context)
	else
		ScriptLib.PrintContextLog(context,"【onLD_Finish】key >= #defs.order")
		ScriptLib.SetGroupVariableValue(context,"AddChallengeProgress",1)
	end
	return 0
end

function SLC_ShowOption(context)
	local configID = ScriptLib.GetGadgetConfigId(context, {gadget_eid = context.source_entity_id})
	local groupID = ScriptLib.GetContextGroupId(context)
	ScriptLib.PrintContextLog(context,"尝试设置操作台选项,configid:".. configID)
	ScriptLib.SetWorktopOptionsByGroupId(context, groupID, configID, {OPTION_ID})
	return 0
end
function Initialize()
	--加触发器
	for k,v in pairs(temp_Tirgger) do
		table.insert(triggers, v)
		table.insert(suites[init_config.suite].triggers, v.name)
	end
	--加变量
	for k,v in pairs(temp_Variables) do
		table.insert(variables,v)
	end

	return 0
end
Initialize()

