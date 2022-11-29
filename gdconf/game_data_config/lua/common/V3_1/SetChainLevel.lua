--ServerUploadTool Save to [/root/env/data/lua/common/V3_1]
--[[
=====================================================================================================================
||	Filename 	  ||	SetChainLevel
||	RelVersion    ||	3.1
||	Owner         ||	xudong.sun
||	Description   ||	3.1脏器瓮升级
||	LogName       ||    ## SetChainLevel_LOG
||	Protection    ||	
=====================================================================================================================
local levelUpOption = 0
local chainId = 0
lcoal maxLevel = 5

local notifyGroupList = {}

local needCS = true
local CS_ID = 1

local regionID = 0

=======================================================================================]]

local extrTriggers = {
	initialtrigger = {
		["Varibale_Change"] = { config_id = 80000001, name = "Varibale_Change", event= EventType.EVENT_VARIABLE_CHANGE, source = "Variable_Setchain", condition = "", action = "action_variable_change", trigger_count = 0},
		["Enter_Region"] = { config_id = 80000002, name = "Enter_Region", event= EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_enter_region", trigger_count = 0},
	}
}

local chainList = {100004,100006,100007,100008}

local normalQuestID = {7305246, 7305442, 7322101, 7322201, 7308305}
local sp_1_QuestID = 7305437
local sp_2_QuestID = 7308301

function action_variable_change( context, evt )

	if evt.param1 ~= 1 or evt.param2 == 1 then
		return 0
	end

	local perLevel = {}
	local afterLevel = {}

	for i,v in ipairs(chainList) do
		ScriptLib.PrintContextLog(context, "## SetChainLevel_LOG : 升级前等级： "..ScriptLib.GetChainLevel(context, ScriptLib.GetSceneOwnerUid(context), v))
		table.insert(perLevel,ScriptLib.GetChainLevel(context, ScriptLib.GetSceneOwnerUid(context), v))
	end

	
	local targetLevel = maxLevel
	local tempLevel = ScriptLib.GetChainLevel(context, ScriptLib.GetSceneOwnerUid(context), chainId)
	if tempLevel < maxLevel then
		targetLevel = tempLevel + 1
	end

	ScriptLib.SetChainLevel(context, chainId, targetLevel, true)

	if notifyGroupList ~= nil and #notifyGroupList > 0 then

		for i,v in ipairs(notifyGroupList) do
			ScriptLib.ExecuteGroupLua(context, v, "LF_RestOperatorState", {})
		end

	end


	if CS_ID == nil then
		return 0
	end

	for i,v in ipairs(chainList) do
		ScriptLib.PrintContextLog(context, "## SetChainLevel_LOG : 升级后等级： "..ScriptLib.GetChainLevel(context, ScriptLib.GetSceneOwnerUid(context), v))
		table.insert(afterLevel,ScriptLib.GetChainLevel(context, ScriptLib.GetSceneOwnerUid(context), v))
	end

	if #perLevel<4 or #afterLevel<4 then

		ScriptLib.PrintGroupWarning(context,"## SetChainLevel_LOG action_variable_change: 升级前后的等级有获取失败")

		return 0
	end

	ScriptLib.PrintContextLog(context, "## SetChainLevel_LOG : 下发CS "..CS_ID.."param { "..perLevel[1].." "..perLevel[2].." "..perLevel[3].." "..perLevel[4].." "..afterLevel[1].." "..afterLevel[2].." "..afterLevel[3].." "..afterLevel[4].." }")
	--触发升级CS表现
	ScriptLib.PlayCutSceneWithParam(context, CS_ID, 0, {{perLevel[1],perLevel[2],perLevel[3],perLevel[4],afterLevel[1],afterLevel[2],afterLevel[3],afterLevel[4]}})

	return 0
end




function action_enter_region( context, evt )

	if evt.param1 ~= regionID then
		return 0
	end

	local avatar_eid = ScriptLib.GetAvatarEntityIdByUid(context, ScriptLib.GetSceneOwnerUid(context))

	--普通等级保底
	local tempLevel = 0
	for i,v in ipairs(normalQuestID) do
		if ScriptLib.GetQuestState(context, avatar_eid, v) == QuestState.FINISHED then
			tempLevel = tempLevel + 1
		end
	end
	if ScriptLib.GetChainLevel(context, ScriptLib.GetSceneOwnerUid(context), 100004) < tempLevel then
		--触发保底
		ScriptLib.SetChainLevel(context, 100004, tempLevel, true)
		ScriptLib.PrintGroupWarning(context,"## SetChainLevel_LOG action_enter_region: 触发赤王普通权限保底了，快查查怎么回事")
		ScriptLib.PrintContextLog(context, "## SetChainLevel_LOG : 触发赤王普通权限保底")
	end

	--特殊等级1保底
	if ScriptLib.GetQuestState(context, avatar_eid, sp_1_QuestID) == QuestState.FINISHED and ScriptLib.GetChainLevel(context, ScriptLib.GetSceneOwnerUid(context), 100006) == 0 then
		--触发保底
		ScriptLib.SetChainLevel(context, 100006, 1, true)
		ScriptLib.PrintGroupWarning(context,"## SetChainLevel_LOG action_enter_region: 触发赤王特殊权限1保底了，快查查怎么回事")
		ScriptLib.PrintContextLog(context, "## SetChainLevel_LOG : 触发赤王特殊权限1保底")
	end

	--特殊等级2保底
	if ScriptLib.GetQuestState(context, avatar_eid, sp_2_QuestID) == QuestState.FINISHED and ScriptLib.GetChainLevel(context, ScriptLib.GetSceneOwnerUid(context), 100007) == 0 then
		--触发保底
		ScriptLib.SetChainLevel(context, 100007, 1, true)
		ScriptLib.PrintGroupWarning(context,"## SetChainLevel_LOG action_enter_region: 触发赤王特殊权限2保底了，快查查怎么回事")
		ScriptLib.PrintContextLog(context, "## SetChainLevel_LOG : 触发赤王特殊权限2保底")
	end

	return 0
end



function LF_Initialize_Group()
	for k,v in pairs(extrTriggers.initialtrigger) do
		table.insert(triggers, v)
		table.insert(suites[init_config.suite].triggers, v.name)
	end
	table.insert(variables,{ config_id=50000001, name = "Variable_Setchain", value = 0, no_refresh = true})
	return 0
end

LF_Initialize_Group()