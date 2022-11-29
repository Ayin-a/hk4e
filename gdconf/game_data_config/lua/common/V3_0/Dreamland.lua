--[[======================================
||  filename:   DreamLand
||  owner:      shuyi.chang
||  description:    幻梦之门玩法
||  LogName:    ## [DreamlandChallenge]
||  Protection: 
=======================================]]
-- 【高亮注意】Lua Require: V3_0/Dreamland

-- 【高亮注意】必须勾上LuaEntity可索引

-- 【高亮注意】此玩法需要特别注意suite的配置方法
-- suite1必须包括门和保底区域（即defs中的challengeRegion）
-- suite2必须包括灵，花和怪，即挑战开始后需要出现的东西都必须放在suite 2中
-- suite3必须包括挑战成功后被创建的内容，基本为宝箱
-- 综上所述，需要LD手动配置的内容包括：门，花，灵，怪，宝箱；没有特殊需求不需要创建其他东西

--[[
local defs = {
	-- 【根据实际情况修改】幻梦之门的config id
	door = 17001,

	-- 【根据实际情况修改】禁联机挑战的gallery id
	galleryId = 19101,

	-- 【根据实际情况修改】挑战的保底区域，出了这个区域挑战即失败
	challengeRegion = 17021,

	-- 【根据实际情况修改】天气id
	weatherId = 4307,

	-- 【根据实际情况修改】失败传送坐标
	transParam_Pos = {x = 1437, y = 261.3, z = -1696},
	transParam_Rot = {x = 0, y = 0, z = 0},
	transParam_Radius = 1,


	-- 【需要LD配置正式版本】挑战id，没有特殊情况保持不变即可
	fatherChallenge = 267,
	childChallenge = {268, 269},

	-- 【根据LD需求修改】拾取spirit的最大间隔时间
	maxPickupTime = 30,

	-- 被怪物打到后挑战时间修改值，应该是负数
	minusTime = -15,

	-- vision type id, 需要在编辑器里每个block创建
	visionType = 11020002,

	-- 门上的隐形操作台id
	worktopId = 1,
}
--]]


local extraTriggers = 
{	
	{ config_id = 50000001, name = "GADGET_STATE_CHANGE_DOOR", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_GADGET_STATE_CHANGE_DOOR", trigger_count = 0 },
	{ config_id = 50000002, name = "GROUP_LOAD", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_GROUP_LOAD", trigger_count = 0 },
	-- { config_id = 50000003, name = "MONSTER_BATTLE", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "", action = "action_MONSTER_BATTLE", trigger_count = 0 },
    { config_id = 50000004, name = "SPIRIT_PICKUP", event = EventType.EVENT_LUA_NOTIFY, source = "pickUp", condition = "", action = "action_SPIRIT_PICKUP", trigger_count = 0, tag = "99" },
	{ config_id = 50000005, name = "CHALLENGE_FAIL", event = EventType.EVENT_CHALLENGE_FAIL, source = "", condition = "", action = "action_CHALLENGE_FAIL", trigger_count = 0 },
	{ config_id = 50000006, name = "CHALLENGE_SUCCESS", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "", condition = "", action = "action_CHALLENGE_SUCCESS", trigger_count = 0 },
	{ config_id = 50000007, name = "TIME_AXIS_PASS", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "", action = "action_TIME_AXIS_PASS", trigger_count = 0 },
	{ config_id = 50000008, name = "DOOR_FINISH", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "", action = "action_DOOR_FINISH", trigger_count = 0, tag = "98" },
	{ config_id = 50000009, name = "LEAVE_REGION", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "", action = "action_LEAVE_REGION", trigger_count = 0 },
	{ config_id = 50000010, name = "ENTER_REGION", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_ENTER_REGION", trigger_count = 0 },
	{ config_id = 50000011, name = "GROUP_WILL_UNLOAD", event = EventType.EVENT_GROUP_WILL_UNLOAD, source = "", condition = "", action = "action_GROUP_WILL_UNLOAD", trigger_count = 0 },

}

local extraVariables = 
{
    -- 记录已获得的梦境之灵数量
    { config_id = 50000101, name = "spiritNum", value = 0, no_refresh = false },
    -- 记录门的状态，0未弹琴在0，1已弹琴在902，2挑战已成功在202
	{ config_id = 50000102, name = "doorStatus", value = 0, no_refresh = true },
	-- 记录挑战第一阶段是否已成功
	{ config_id = 50000103, name = "collectionFinished", value = 0, no_refresh = false },

}

local spirits = {}
local spiritGadgetId = 70220104

local worktopField =
{
	configId = 50000099,
	gadgetId = 70950145,
	optionId = 758,
}

local waitEnd = 2

local reminderId = 1109002

local forbidStartRmd = 33010199

-- 幻梦之门上的隐形操作台，初始不属于任何suite【目前用不上】
-- local worktop = { config_id = worktopField.configId, gadget_id = worktopField.gadgetId, pos = gadgets[defs.door].pos, rot = gadgets[defs.door].rot, level = 1, area_id = gadgets[defs.door].area_id, }

local spiritActiveTime = 10

--================================================================
-- Local Functions
--================================================================
function LF_Initialize_Group(triggers, suites, variables, gadgets, regions)

    -- insert triggers
    for i = 1, #extraTriggers do
        table.insert(triggers, extraTriggers[i])
    end

    -- add triggers to suite
    for i = 1, #extraTriggers do
        if extraTriggers[i].name == "GADGET_STATE_CHANGE_DOOR" 
			or extraTriggers[i].name == "GROUP_LOAD" 
			or extraTriggers[i].name == "TIME_AXIS_PASS"  then

            table.insert(suites[1].triggers,extraTriggers[i].name)
		else 
			table.insert(suites[2].triggers,extraTriggers[i].name)
        end
    end

    -- insert variables
    for i = 1, #extraVariables do
        table.insert(variables, extraVariables[i])
    end

	-- -- insert gadgets【暂时废弃，LD手种，不然没法配ui提示】
	-- gadgets[worktopField.configId] = worktop
	-- table.insert(suites[1].gadgets, worktopField.configId)

	-- -- add door to all suites
	-- table.insert(suites[2].gadgets, defs.door)
	-- table.insert(suites[3].gadgets, defs.door)


    -- add spirits to local list
    for i, v in pairs(gadgets) do
        if v.gadget_id == spiritGadgetId then
            table.insert(spirits, i)
        end
    end

	-- set vision type
	if defs.visionType == nil then
		defs.visionTYpe = 1102002
	end

	regions[defs.challengeRegion].vision_type_list = { defs.visionType }

	
end

function LF_ChallengeEnd(context, status)
	ScriptLib.PrintContextLog(context, "## [DreamlandChallenge] LF_ChallengeEnd is called, fail = "..status)

	-- local uid_list = ScriptLib.GetSceneUidList(context)

	local doorState = 0
	if status == 0 then
		-- 成功
		doorState = 202
		ScriptLib.InitTimeAxis(context, "DreamlandSuccess", {waitEnd}, false)

		-- gallery成功(true是fail)
		ScriptLib.StopGallery(context, defs.galleryId, false)
		
	elseif status == 1 then
		-- 失败
		doorState = 902
		if ScriptLib.GetGroupTempValue(context, "forbidTransmit", {}) ~= 1 and ScriptLib.IsPlayerTransmittable(context, context.owner_uid) == true then
			-- 只有玩家没出区域的时候传送
			ScriptLib.TransPlayerToPos(context, {uid_list = {context.owner_uid}, pos = defs.transParam_Pos, radius = defs.transParam_Radius, rot = defs.transParam_Rot, is_skip_ui = false})
		end

		-- gallery失败
		ScriptLib.StopGallery(context, defs.galleryId, true)

	end

	-- -- gallery成功或失败【走上面，区分成功和失败】
	-- ScriptLib.StopGallery(context, defs.galleryId, true)

	-- 重置变量和sgv
	LF_ResetVariables(context)

	--重置group
	ScriptLib.RemoveExtraGroupSuite(context, base_info.group_id, 2)
	-- ScriptLib.DelWorktopOptionByGroupId(context, base_info.group_id, worktopField.configId, worktopField.optionId)
	ScriptLib.SetGadgetStateByConfigId(context, defs.door, doorState)

	if #suites >= 4 then
		-- suite 4里LD创建出的伏击怪都干掉
		ScriptLib.RemoveExtraGroupSuite(context, base_info.group_id, 4)
	end

	if #suites >= 5 then
		-- suite 5里各种提示都干掉
		ScriptLib.RemoveExtraGroupSuite(context, base_info.group_id, 5)
	end

	-- 关闭天气
	ScriptLib.SetWeatherAreaState(context, defs.weatherId, 0)
	ScriptLib.PrintContextLog(context, "## [DreamlandChallenge] weather "..defs.weatherId.." stops")

	-- 恢复视野
	ScriptLib.RevertPlayerRegionVision(context, context.owner_uid)
	ScriptLib.SetPlayerGroupVisionType(context, {context.owner_uid}, {1})

end

function LF_ResetVariables(context)
	-- local uid_list = ScriptLib.GetSceneUidList(context)

	-- 挑战阶段重置
	ScriptLib.SetGroupVariableValue(context, "collectionFinished", 0)
	ScriptLib.SetGroupTempValue(context, "forbidTransmit", 0, {})

	-- 仇恨回归
	ScriptLib.SetTeamServerGlobalValue(context, context.owner_uid, "SGV_CAN_CLEAR_THREAT", 0)
	ScriptLib.PrintContextLog(context, "## [DreamlandChallenge] SGV_CAN_CLEAR_THREAT = 0")

	-- 玩家身上计数归零
	ScriptLib.SetGroupVariableValue(context, "spiritNum", 0)
	ScriptLib.AddTeamServerGlobalValue(context, context.owner_uid, "SGV_DreamLand_SpiritNum", 0)
	local var = ScriptLib.SetTeamServerGlobalValue(context, context.owner_uid, "SGV_DreamLand_SpiritNum", 0)
	ScriptLib.PrintContextLog(context, "## [DreamlandChallenge] SGV_DreamLand_SpiritNum is created and set to 0, var = "..var)

	-- 所有小精灵高亮取消
	for i, v in ipairs(spirits) do
		-- 修改SGV值
		ScriptLib.SetEntityServerGlobalValueByConfigId(context, v, "SGV_SPIRIT_ACTIVE", 0)
		ScriptLib.PrintContextLog(context, "## [DreamlandChallenge]spirit "..v..", SGV_SPIRIT_ACTIVE changes to 0")

	end
end

function LF_FailAndForbidTransmit(context, reason)
	ScriptLib.PrintContextLog(context, "## [DreamlandChallenge] LF_FaileAndForbidTransmit is called, reason = "..reason)

	ScriptLib.SetGroupTempValue(context, "forbidTransmit", 1, {})

	-- 父挑战失败
	ScriptLib.ModifyFatherChallengeProperty(context, defs.fatherChallenge, FatherChallengeProperty.CUR_FAIL, 2)
end


--================================================================
-- Triggers
--================================================================

-- 触发操作
function action_GADGET_STATE_CHANGE_DOOR(context, evt)
    ScriptLib.PrintContextLog(context, "## [DreamlandChallenge] gadget "..evt.param2.." changes from state "..evt.param3.."to state "..evt.param1)

	local uid_list = ScriptLib.GetSceneUidList(context)

	-- 只管门的状态变化
	if evt.param2 ~= defs.door then
		return 0
	end

	if evt.param1 == 902 then
		-- 玩家已经对门弹完琴了
		ScriptLib.SetGroupVariableValue(context, "doorStatus", 1)

	elseif evt.param1 == 201 then
		ScriptLib.PrintContextLog(context, "## [DreamlandChallenge] challenge starts")

		-- 挑战开始前保底重置group var和sgv
		LF_ResetVariables(context)

		ScriptLib.AddExtraGroupSuite(context, base_info.group_id, 2)

		-- 改变天气
		ScriptLib.SetWeatherAreaState(context, defs.weatherId, 1)
		ScriptLib.EnterWeatherArea(context, defs.weatherId)
		ScriptLib.PrintContextLog(context, "## [DreamlandChallenge] change weather to "..defs.weatherId)

		-- 开启挑战，父挑战给保底十分钟
		ScriptLib.CreateFatherChallenge(context, defs.fatherChallenge, defs.fatherChallenge, 99999999, {success = 200, fail = 2})
		ScriptLib.AttachChildChallenge(context, defs.fatherChallenge, defs.childChallenge[1], defs.childChallenge[1], {defs.maxPickupTime, 106, 99, #spirits}, {}, {success = 100, fail = 3})
		ScriptLib.StartFatherChallenge(context, defs.fatherChallenge)

		-- 开启gallery
		ScriptLib.StartGallery(context, defs.galleryId)

		-- 所有小精灵进激化态
		for i, v in ipairs(spirits) do
			-- 修改SGV值
			ScriptLib.SetEntityServerGlobalValueByConfigId(context, v, "SGV_SPIRIT_ACTIVE", 1)
			ScriptLib.PrintContextLog(context, "## [DreamlandChallenge]spirit "..v..", SGV_SPIRIT_ACTIVE changes to 1")
	
			-- 起一个时间轴，到时间之后reset SGV to 0
			ScriptLib.InitTimeAxis(context, "SpiritActive", {spiritActiveTime}, false)
	
		end

		-- 开启视野
		ScriptLib.SetPlayerGroupVisionType(context, {context.owner_uid}, {defs.visionType})
		ScriptLib.ForbidPlayerRegionVision(context, context.owner_uid)
	elseif 	evt.param1 == 202 then
		ScriptLib.SetGroupVariableValue(context, "doorStatus", 2)

	end
	return 0
end

-- -- 触发操作
-- function action_MONSTER_BATTLE(context, evt)
--     ScriptLib.PrintContextLog(context, "## [DreamlandChallenge] monster "..evt.param1.." enters battle")

-- 	-- ScriptLib.ShowReminder(context, reminderId)

-- 	return 0
-- end


-- 触发操作
function action_GROUP_LOAD(context, evt)
    ScriptLib.PrintContextLog(context, "## [DreamlandChallenge] group is loaded")

	-- 保底关闭天气
	local temp = ScriptLib.SetWeatherAreaState(context, defs.weatherId, 0)
	ScriptLib.PrintContextLog(context, "## [DreamlandChallenge] weather "..defs.weatherId.." stops when group is loaded, succeed = "..temp)

	local doorStatus = ScriptLib.GetGroupVariableValue(context, "doorStatus")
	if doorStatus == 1 then
		ScriptLib.SetGadgetStateByConfigId(context, defs.door, 902)
	elseif doorStatus == 2 then
		ScriptLib.SetGadgetStateByConfigId(context, defs.door, 202)
		-- 保底创建宝箱
		ScriptLib.AddExtraGroupSuite(context, base_info.group_id, 3)

	end

	-- 保底回归仇恨
	ScriptLib.SetTeamServerGlobalValue(context, context.owner_uid, "SGV_CAN_CLEAR_THREAT", 0)
	ScriptLib.PrintContextLog(context, "## [DreamlandChallenge] SGV_CAN_CLEAR_THREAT = 0")
	
	return 0
end

-- 触发操作
function action_SPIRIT_PICKUP(context, evt)
    ScriptLib.PrintContextLog(context, "## [DreamlandChallenge] A spirit is picked up")

    local configId = ScriptLib.GetGadgetConfigId(context, { gadget_eid = context.target_entity_id })

	-- 先判是否允许执行
	if gadgets[configId].gadget_id ~= spiritGadgetId or ScriptLib.CheckIsInGroup(context, 0, configId) == false then
		ScriptLib.PrintContextLog(context, "## [DreamlandChallenge] a spirit is picked up, target entity is not a spirit, or is already dead, return immediately")
		return 0
	end

    ScriptLib.PrintContextLog(context, "## [DreamlandChallenge] a spirit is picked up, entity id = "..context.target_entity_id..", config id = "..configId)

	-- kill spirit以防触发两次
	ScriptLib.KillEntityByConfigId(context, { config_id = configId })

	-- Avatar拿到一个新的spirit
	ScriptLib.ChangeGroupVariableValue(context, "spiritNum", 1)
	local spiritNumCurrent = ScriptLib.GetGroupVariableValue(context, "spiritNum")
	ScriptLib.PrintContextLog(context, "## [DreamlandChallenge] spiritNum = "..spiritNumCurrent)

	-- 把值同步给SGV
	ScriptLib.SetTeamServerGlobalValue(context, context.owner_uid, "SGV_DreamLand_SpiritNum", spiritNumCurrent)

    -- 子挑战计时更新
	ScriptLib.SetChallengeDuration(context, defs.childChallenge[1], defs.maxPickupTime)

	return 0
end

-- 触发操作
function action_CHALLENGE_FAIL(context, evt)
	ScriptLib.PrintContextLog(context, "## [DreamlandChallenge] challenge "..evt.param1.." fails")

	-- 父挑战失败
	if defs.fatherChallenge == evt.param1 then
		LF_ChallengeEnd(context, 1)
	end
	
	return 0
end

-- 触发操作
function action_CHALLENGE_SUCCESS(context, evt)
    ScriptLib.PrintContextLog(context, "## [DreamlandChallenge] challenge index = "..evt.param1.." succeeds")

	-- 子挑战1号成功
	if defs.childChallenge[1] == evt.param1 then
		-- 创建操作台选项
		-- ScriptLib.SetWorktopOptionsByGroupId(context, base_info.group_id, worktopField.configId, {worktopField.optionId})
		-- 最新更新：添加suite5，里面是各种提示和操作台
		if #suites >= 5 then
			ScriptLib.AddExtraGroupSuite(context, base_info.group_id, 5)
		end

		-- 接第二个子挑战
		ScriptLib.AttachChildChallenge(context, defs.fatherChallenge, defs.childChallenge[2], defs.childChallenge[2], {defs.maxPickupTime, 9, 98, 1}, {}, {success = 100, fail = 3})
        ScriptLib.PrintContextLog(context, "## [DreamlandChallenge] child challenge "..defs.childChallenge[2].." starts")

		-- 设置参数
		ScriptLib.SetGroupVariableValue(context, "collectionFinished", 1)

		-- todo: 正常流程里不需要此步骤，给LD测试保底临时加一下
		-- 保底把所有spirit都set to 202
		for k, v in pairs(spirits) do
			ScriptLib.SetGadgetStateByConfigId(context, k, GadgetState.GearStop)
			
		end
	end

	-- 子挑战2号成功，即父挑战成功，生成宝箱
	if defs.childChallenge[2] == evt.param1 then
		-- 目前成功后的action在操作台option逻辑上
	
	end
	
	return 0
end

function action_TIME_AXIS_PASS(context, evt)
	ScriptLib.PrintContextLog(context, "## [DreamlandChallenge] time axis "..evt.source_name.." , stage "..evt.param1.." is finished")

	if evt.source_name == "SpiritActive" then
		-- 这个时间轴结束的时候，所有spirit上的激化特效都要消失
		for i, v in ipairs(spirits) do
			-- 修改SGV值
			ScriptLib.SetEntityServerGlobalValueByConfigId(context, v, "SGV_SPIRIT_ACTIVE", 0)
			ScriptLib.PrintContextLog(context, "## [DreamlandChallenge]spirit "..v..", SGV_SPIRIT_ACTIVE changes to 0")

		end
	elseif evt.source_name == "DreamlandSuccess" then
		ScriptLib.AddExtraGroupSuite(context, base_info.group_id, 3)
	-- elseif evt.source_name == "DreamlandFail" then
	-- 	ScriptLib.TransPlayerToPos(context, {uid_list = {uid_list[1]}, pos = defs.transParam_Pos, radius = defs.transParam_Radius, rot = defs.transParam_Rot, is_skip_ui = false})
	end
	

	return 0
end


-- 触发操作
function action_DOOR_FINISH(context, evt)
	ScriptLib.PrintContextLog(context, "## [DreamlandChallenge] worktop configId = "..evt.param1..", option =  "..evt.param2)

	-- 和门的隐藏操作台完成操作
	-- 现在操作台放在suite5里面了，拿不到configId，但是这个玩法里目前只有一个操作台挂选项，所以只判断选项也行
	if worktopField.optionId == evt.param2 then
		-- 事件成功
		LF_ChallengeEnd(context, 0)
	end
	
	return 0
end

-- 触发操作
function action_LEAVE_REGION(context, evt)
	ScriptLib.PrintContextLog(context, "## [DreamlandChallenge] leave region " .. evt.param1)
	
	-- 判断是保底区域
	if evt.param1 == defs.challengeRegion then
		LF_FailAndForbidTransmit(context, "leave region")
	end
	
	return 0
end

function action_ENTER_REGION(context, evt)
	ScriptLib.PrintContextLog(context, "## [DreamlandChallenge] enter region " .. evt.param1)
	
	-- 判断是保底区域
	if evt.param1 == defs.challengeRegion then
		ScriptLib.SetGroupTempValue(context, "forbidTransmit", 0, {})
	end
	
	return 0
end

function action_GROUP_WILL_UNLOAD(context, evt)
	ScriptLib.PrintContextLog(context, "## [DreamlandChallenge] group will unload")
	
	LF_FailAndForbidTransmit(context, "group will be unloaded")
	return 0
end

--================================================================
-- SLC functions
--================================================================
function SLC_Player_Enter_Door(context, evt)
	ScriptLib.PrintContextLog(context, "## [DreamlandChallenge] SLC_Player_Enter_Door is called")

	if ScriptLib.GetGadgetStateByConfigId(context, 0, defs.door) ~= 902 then
		-- 只有弹完琴了才能开挑战
		ScriptLib.PrintContextLog(context, "## [DreamlandChallenge] challenge can't stop cuz door is not prepared")
		return 0
	end

	local uid_list = ScriptLib.GetSceneUidList(context)
	if #uid_list > 1 or ScriptLib.CheckIsInMpMode(context) == true then
		-- 只有非联机状态下才能开挑战
		-- 如果联机状态+门在902，弹一个reminder
		ScriptLib.ShowReminder(context, forbidStartRmd)
		ScriptLib.PrintContextLog(context, "## [DreamlandChallenge] challenge can't stop cuz of other players in scene")

		return 0
	end

	-- 可以开的话直接改门的gadget state
	ScriptLib.SetGadgetStateByConfigId(context, defs.door, 201)
    
    return 0
end


function SLC_ClearAvatarTeamThreat(context, evt)
    -- local uid_list = ScriptLib.GetSceneUidList(context)

    -- 用SGV清除玩家队伍身上的仇恨
    ScriptLib.PrintContextLog(context, "## [DreamlandChallenge] SGV_CAN_CLEAR_THREAT Set: 1")
	ScriptLib.SetTeamServerGlobalValue(context, context.owner_uid, "SGV_CAN_CLEAR_THREAT", 1)
    
    return 0
end


function SLC_AvatarIsHitInDreamland(context, evt)
    -- 减挑战时间，只要这个function被触发了就肯定减，cd保护在ability上
	local collectionFinished = ScriptLib.GetGroupVariableValue(context, "collectionFinished")
	local challengeId = 0
	if collectionFinished == 0 then
		challengeId = defs.childChallenge[1]
	else
		challengeId = defs.childChallenge[2]
	end

	ScriptLib.AddChallengeDuration(context, challengeId, defs.minusTime, false)

    ScriptLib.PrintContextLog(context, "## [DreamlandChallenge] challenge time delta = "..defs.minusTime..
		" cuz player is hit in challenge "..challengeId)

    return 0
end

function SLC_ReturnAvatarTeamThreat(context, evt)
    -- local uid_list = ScriptLib.GetSceneUidList(context)

    -- 用SGV回归玩家队伍身上的仇恨
	ScriptLib.SetTeamServerGlobalValue(context, context.owner_uid, "SGV_CAN_CLEAR_THREAT", 0)
    ScriptLib.PrintContextLog(context, "## [DreamlandChallenge] SGV_CAN_CLEAR_THREAT Set: 0")
    
    return 0
end

function SLC_HighlightSpirit(context)

    ScriptLib.PrintContextLog(context, "## [DreamlandChallenge] SLC_HighlightSpirit is called")

    -- 改所有spirit的SGV值，在ability层限制只有状态0的spirit会根据值的变化上modifier
    for i, v in ipairs(spirits) do
		-- 修改SGV值
        ScriptLib.SetEntityServerGlobalValueByConfigId(context, v, "SGV_SPIRIT_ACTIVE", 1)
        ScriptLib.PrintContextLog(context, "## [DreamlandChallenge]spirit "..v..", SGV_SPIRIT_ACTIVE changes to 1")

		-- 起一个时间轴，到时间之后reset SGV to 0
		ScriptLib.InitTimeAxis(context, "SpiritActive", {spiritActiveTime}, false)

    end

    return 0
end

--================================================================
-- Initialize
--================================================================
LF_Initialize_Group(triggers, suites, variables, gadgets, regions)