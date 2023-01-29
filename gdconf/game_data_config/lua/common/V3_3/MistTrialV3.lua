--[[======================================
||	filename:       MistTrialV3
||	owner:          shuyi.chang
||	description:    迷城战线三期
||	LogName:        TD_MistTrialV3
||	Protection:     [Protection]
=======================================]]

--[[
	3.3迷城战线复刻

	每个小房间内容是单独的挑战。
	此group负责管理：负责记着3个特殊挑战的进度、负责持续显示父挑战标题、挑战阶段、挂个大region用于触发断线重连后挑战接续

	和关卡约定的challenge Index：
		父挑战 999
		点亮三颗符文 901
		启动遗迹控制台 902
		最终挑战 903
--]]
--[[
	local defs = {

		--galleryID
		gallery_id = ,

		--galley限时秒数
		--迷城战线v2的限时用Gallery控制（excel表）此处用于保证FatherChallenge的时长不要小于Gallery
		time_limit = 300,

		--父挑战ChallengeId
		challenge_id = 228,

		--父挑战大RegionID,这个region用于地城中断线重连接续挑战
		region_id = ,

		--激活古代符文ChallengeId
		key_challenge = 229,
		--启动遗迹控制台ChallengeId
		worktop_challenge = 230,
		--最终挑战ChallengeId
		final_challenge = 231,

		--激活古代符文目标数量
		key_target = 3,

		--【三期新增】【暂时没用】电梯所在房间的两个region id，close是更大的，用于保底玩家离开之后又飞速冲回来
		elevatorRegion = 99,
		elevatorCloseRegion = 100,

		--【三期新增】各种门的对应关系，center指和电梯房间对应的门，一定要注意左右的顺序
		keyDoor = 
		{
			[1] = { center = config_id_01, left = config_id_02, right = config_id_03, }
			[2] = { center = config_id_04, left = config_id_05, right = config_id_06, }
			[3] = { center = config_id_07, left = config_id_08, right = config_id_09, }
		}，

		--【三期新增】【暂时没用】电梯所在房间的三个门，123需要跟上面keyDoor的[1][2][3]对应起来
		elevatorDoor = {config_id_01, config_id_02, config_id_03}，
	}
--]]

--Mist_trial的Buff_obtain日志
local buff_gadgetId = {
	"Buff_Attack",
	"Buff_Heal"
}

local extraTriggers = {
	--这个Trigger用于在地城内断线重连时接续父挑战
	{ config_id = 8000001, name = "Enter_Region", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_Enter_FatherRegion", action = "action_Enter_FatherRegion", trigger_count = 0 },
	{ config_id = 8000002, name = "Gallery_Stop", event = EventType.EVENT_GALLERY_STOP, source = "", condition = "", action = "action_Gallery_Stop", trigger_count = 0 },

	--用于获知玩法到哪个阶段了
	{ config_id = 8000004, name = "Key_Challenge_Success", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "901", condition = "", action = "action_Key_Challenge_Success", trigger_count = 0},
	{ config_id = 8000005, name = "Worktop_Challenge_Success", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "902", condition = "", action = "action_Worktop_Challenge_Success", trigger_count = 0},
	{ config_id = 8000006, name = "Final_Challenge_Success", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "903", condition = "", action = "action_Final_Challenge_Success", trigger_count = 0},

	--用于玩家开启迷城战线时，初始化标志位
	{ config_id = 8000007, name = "Gallery_Start", event = EventType.EVENT_GALLERY_START, source = "", condition = "", action = "action_Gallery_Start", trigger_count = 0 },

	--子挑战成功时，向其所在Group发消息
	{ config_id = 8000008, name = "Sub_Challenge_Success", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "", condition = "", action = "action_Sub_Challenge_Success", trigger_count = 0},
	--外部挂载子挑战用trigger---
	{ config_id = 8000009, name = "Variable_Change_MistTail", event = EventType.EVENT_VARIABLE_CHANGE, source = "catchKey", condition = "", action = "",trigger_count = 0 , tag = "666" },

	--三期電梯房保底
	-- { config_id = 8000010, name = "Player_Enter_Room", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_Player_Enter_Room",trigger_count = 0 },
	-- { config_id = 8000011, name = "Player_Leave_Room", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "", action = "action_Player_Leave_Room",trigger_count = 0 },

	-- 【三期新增】保底把所有门初始都打开
	{ config_id = 8000012, name = "Group_Load", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_Group_Load",trigger_count = 0},

	-- 测试用
	-- { config_id = 8000013, name = "CHALLENGE_SUCCESS", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS", trigger_count = 0, },
	-- { config_id = 8000014, name = "CHALLENGE_FAIL", event = EventType.EVENT_CHALLENGE_FAIL, source = "", condition = "", action = "action_EVENT_CHALLENGE_FAIL", trigger_count = 0, },

}

local extraVariables = {
    --Gallery是否在进行 0-未开始 1-进行中 2-已成功（不再触发）
	{ config_id = 50000001, name = "gallery_state", value = 0, no_refresh = true},
	--父挑战状态 0-初始 1-进了地城但未开始 2-进行中（正在激活古代符文 3-进行中（启动遗迹控制台）4-进行中（最终挑战） 5-全部完成
	{ config_id = 50000002, name = "father_state", value = 0, no_refresh = true},
	--钥匙房 激活古代符文进度
	{ config_id = 50000003, name = "key_progress", value = 0, no_refresh = true},
	--子挑战用的触发器
	{ config_id = 50000004, name = "catchKey", value = 0, no_refresh = false},
	--地脉异常等级
	{ config_id = 50000005, name = "floor_level", value = 1, no_refresh = true},

	-- 【三期新增】目前都用不到
	-- 玩家是否已經離開電梯房
	{ config_id = 50000006, name = "door_open", value = 0, no_refresh = true},
	-- 最后一次开启的room index，挑战已开启就改
	{ config_id = 50000007, name = "last_room_start", value = 0, no_refresh = true},
	-- 最后一次完成的room index，挑战成功才改
	{ config_id = 50000008, name = "last_room_finished", value = 0, no_refresh = true},

}

--和关卡约定的challenge Index
local cfg = {
	["father_index"] = 999,
	["key_challenge_index"] = 901,
	["worktop_challenge_index"] = 902,
	["final_challenge_index"] = 903
}

local doorState = 
{
	open = 201,
	close = 0,
}

local abilitygroup = "ActivityAbility_MistTrial_AbilityGroup"

function LF_Initialize_Group(triggers, suites, variables)

    -- insert triggers
	for i = 1, #extraTriggers do
		table.insert(triggers, extraTriggers[i])
		table.insert(suites[1].triggers,extraTriggers[i].name)
	end
	
     -- insert variables
     for i = 1, #extraVariables do
        table.insert(variables, extraVariables[i])
    end

	regions[defs.region_id].team_ability_group_list = {abilitygroup}


	return 0
end

--================================================================
-- 以下由关卡调用
--================================================================

--小房间的操作台选项“开启挑战”，调这个方法-----
--由于参数个数限制，需要先调用SetKillMonsterTarget
--参数为 {子挑战child_index, 子挑战challengeID}
--使用前请保证父挑战已经启动
function StartSubChallengeKillMonster(context, prev_context, child_index, challenge_id)

	local father_state = ScriptLib.GetGroupVariableValue(context, "father_state")

	if father_state ~= 0 and father_state ~= 1 then
		--添加子挑战 
		--挑战类型为：击杀指定数量怪物 参数1： 指定groupid， 参数2：指定group内怪物死亡的数量

		local target_count = ScriptLib.GetGroupTempValue(context, "target_count",{})

		--ScriptLib.SetGroupVariableValue(context, "catchKey", 0)

		ScriptLib.AttachChildChallenge(context, cfg.father_index, child_index, challenge_id, {3, 666, target_count, 1}, {},{success=1, fail=1})

	else
 		ScriptLib.PrintContextLog(context, "## TD_MistTrialV3 #WRONG# Trying to start a subchallenge while father is not actived!! ") 
 	end

	-- 【三期新增】控制各种门的开启关闭，子挑战开启的时候来一次（结束的时候也来一次）
	LF_DoorController_Simple(context, true, child_index)

	-- 【三期新增】回血的sgv在这个时候归零
	ScriptLib.SetTeamServerGlobalValue(context, context.owner_uid, "SGV_MistTrial_Revive", 0)

	return 0
end

--参数为 {怪物所在group_id, 目标个数target_count}
function SetKillMonsterTarget(context, prev_context, group_id, target_count)

	ScriptLib.SetGroupTempValue(context, "target_group", group_id, {})
	ScriptLib.SetGroupTempValue(context, "target_count", target_count, {})
	ScriptLib.PrintContextLog(context, "## TD_MistTrialV3 Set Kill Monster Target. Group@" .. group_id.." Count@".. target_count)

	return 0
end

-- 为StartSubChallengeCustom所创建的自定义类型子挑战加分。
-- 钥匙房不要用这个，用 AddMistTrialKeyProgress
function AddMistTrialChildChallengeScore(context, prev_context, score)
	--由于单子b1295835,一旦没结束，尝试重置“catchKey”时会触发上一个意外没关掉的挑战的VariableChange
	--迷城并不关心杀怪的数量，所以在接到调用时，只需要让catchKey浮动变化就可以了，也就不需要重置。（其实不浮动变化也可，因为只要Set就会触发VariableChange这个Trigger，但还是变吧万一以后Trigger改了
	if ScriptLib.GetGroupVariableValue(context, "catchKey") > 0 then
		ScriptLib.SetGroupVariableValue(context, "catchKey", 0)
	else
		ScriptLib.SetGroupVariableValue(context, "catchKey", 1)
	end 

	local catchKey = ScriptLib.GetGroupVariableValue(context, "catchKey")
	ScriptLib.PrintContextLog(context, "## TD_MistTrialV3 SAddMistTrialChildChallengeScore is called, catchKey = "..catchKey)

	return 0
end

--终止特定子挑战
function StopMistTrialChildChallenge(context, prev_context, childIndex, isWin)
	-- isWin = 0 (失败) 1(完成)
	ScriptLib.StopChallenge(context, childIndex, isWin)
	return 0
end

--当钥匙房被完成时，调这个方法-----
--【三期新增，param通常应该为1，challengeId为成功的挑战id】
function AddMistTrialKeyProgress(context, prev_context, param, child_index)
	ScriptLib.PrintContextLog(context, "## TD_MistTrialV3 Get Key Progress. add@"..param) 
	local father_state = ScriptLib.GetGroupVariableValue(context, "father_state")
	--if father_state == 2 then
		ScriptLib.ChangeGroupVariableValue(context, "key_progress", param)
		local key_progress = ScriptLib.GetGroupVariableValue(context, "key_progress")
		Reminder_Key_Progress(context, key_progress)
	--else
		--ScriptLib.PrintContextLog(context, "## TD_MistTrialV3 #WRONG# Trying to finish a key room while father challenge is @"..father_state.." (need 2)") 
	--end

	-- 【三期新增】控制各种门的开启关闭，子挑战结束的时候来一次（开启的时候也来一次）
	LF_DoorController_Simple(context, false, child_index)
	return 0
end

-- 【三期应该没人在用这个了】由于复活的实现原因，不能反复Attach，如果一个地城有多个复活房，每次交互复活房操作台的时候先调用这个来移除
function RemoveReviveAbility(context, prev_context)
	ScriptLib.PrintContextLog(context, "## TD_MistTrialV3 Remove MistTrial Revive Ability.") 
	ScriptLib.DelGalleryAbilityGroup(context, {}, defs.gallery_id, 0)
	return 0
end

--LD通知Ability变动 。 参数 0-地脉异常升级 1-全队复活
function ModifyMistTrialAbility(context, prev_context, param)
	ScriptLib.PrintContextLog(context, "## TD_MistTrialV3 Modify MistTrial Ability. Param@"..param) 

	if param == 0 then 
		--设置地脉异常等级，初始1级 升档最多3次  一共4个档
		ScriptLib.ChangeGroupTempValue(context, "Buff_Attack", 1, {})
		ScriptLib.ChangeGroupVariableValue(context, "floor_level", 1)

		local floor_level = ScriptLib.GetGroupVariableValue(context, "floor_level")

		if floor_level > 4 or floor_level < 1 then 

			ScriptLib.PrintContextLog(context, "## TD_MistTrialV3 #WRONG# Unexpected floor_level: Got@"..floor_level.." (floor_level is 1 ~ 4 in MistTrialV2)") 

			return 0
		else
			ScriptLib.SetMistTrialServerGlobalValue(context, floor_level)
		end

		return 0

	elseif param == 1 then 

		--复活，三期改动，复活ability一直挂在角色身上，监听sgv上复活modifier
		ScriptLib.ChangeGroupTempValue(context, "Buff_Heal", 1, {})
		ScriptLib.SetTeamServerGlobalValue(context, context.owner_uid, "SGV_MistTrial_Revive", 1)
		return 0

	else
		ScriptLib.PrintContextLog(context, "## TD_MistTrialV3 #WRONG# Unexpected ModifyMistTrialAbility param: Got@"..param.." (param is 0 or 1 in MistTrialV2)") 
	end

	return 0
end

--================================================================
-- triggers
--================================================================

--用于获知挑战进行到哪个阶段了.三符文完成
function action_Key_Challenge_Success(context, evt)
	ScriptLib.PrintContextLog(context, "## TD_MistTrialV3 Get Challenge Success. @"..evt.param1) 
	ScriptLib.SetGroupVariableValue(context, "father_state", 3)
	return 0
end

--用于获知挑战进行到哪个阶段了.激活操作台完成
function action_Worktop_Challenge_Success(context, evt)
	ScriptLib.PrintContextLog(context, "## TD_MistTrialV3 Get Challenge Success. @"..evt.param1) 
	ScriptLib.SetGroupVariableValue(context, "father_state", 4)
	return 0
end

--用于获知挑战进行到哪个阶段了.最终挑战完成
function action_Final_Challenge_Success(context, evt)
	ScriptLib.PrintContextLog(context, "## TD_MistTrialV3 Get Challenge Success. @"..evt.param1) 
	ScriptLib.SetGroupVariableValue(context, "father_state", 5)
	return 0
end

--初始化标志位
function action_Gallery_Start(context, evt)
	ScriptLib.PrintContextLog(context, "## TD_MistTrialV3 Gallery Start Detected!! GalleryId@"..evt.param1) 
	ScriptLib.SetGroupVariableValue(context, "gallery_state", 1)
	ScriptLib.SetGroupVariableValue(context, "father_state", 2)
	ResetGroupTempVar(context)
	
	return 0
end

--当一个小房间的杀怪挑战完成时，向那个group发一个success
function action_Sub_Challenge_Success(context, evt)
	if CheckIsInTable(context, tonumber(evt.source_name)) == 1 then
		--特殊三挑战不发，发了也没用
		return 0
	else
		local fromGroup = ScriptLib.GetGroupTempValue(context, "target_group", {}) 
		ScriptLib.PrintContextLog(context, "## TD_MistTrialV3 A Sub Challenge Finished. ChallengeID@"..evt.param1.." ChallengeIndex@"..evt.source_name..". Send GroupVar(succcess = 1) to Group@"..fromGroup) 
		ScriptLib.SetGroupVariableValueByGroup(context, "success", 1, fromGroup)
	end

	return 0
end

function condition_Enter_FatherRegion(context, evt)
	if evt.param1 ~= defs.region_id then 
		return false 
	end
	return true
end

--由大Region触发，用且仅用于接续父挑战
function action_Enter_FatherRegion(context, evt)

	ScriptLib.PrintContextLog(context, "## TD_MistTrialV3 Enter father region triggered...") 

	if ScriptLib.GetGroupVariableValue(context, "father_state") == 0 then 

		ScriptLib.SetGroupVariableValue(context, "father_state", 1)

		ScriptLib.PrintContextLog(context, "## TD_MistTrialV3 First Time Enter region. Set mark.")
		return 0
	end	

	local gallery_state = ScriptLib.GetGroupVariableValue(context, "gallery_state")

	if gallery_state == 2 then 

		ScriptLib.PrintContextLog(context, "## TD_MistTrialV3 ...gallery is finished, will do nothing.") 

		return 0

	elseif gallery_state == 1 then

		ScriptLib.PrintContextLog(context, "## TD_MistTrialV3 Gallery_state = 1 & father_state is not 0, Trying to get Challenge Progress. ") 

		if ResumeMistTrial(context) == -1 then 

			ScriptLib.PrintContextLog(context, "## TD_MistTrialV3 #WRONG# Unexpected Challenge Progress!!")

		end
		return 0

	elseif gallery_state == 0 then 

		ScriptLib.PrintContextLog(context, "## TD_MistTrialV3 ...gallery is not started, will do nothing.") 

		return 0
	else

		ScriptLib.PrintContextLog(context, "## TD_MistTrialV3 #WRONG# Unexpected Gallery state! gallery_state@".. gallery_state) 
		return 0
	end 

	return 0
end

function action_Gallery_Stop(context, evt)

	if evt.param1 ~= defs.gallery_id then 
		return -1
	end

	UpLoadActionLog(context)
	
	--evt.param3
	--1、时间到 2、客户端中断 3、LUA中断
	if evt.param3 == 1 then 

		ScriptLib.PrintContextLog(context, "## TD_MistTrialV3 Gallery Stop Triggered. reason@ Time Up.") 

		ScriptLib.SetGroupVariableValue(context, "gallery_state", 2)

		ScriptLib.FailMistTrialDungeonChallenge(context, cfg.father_index)

		ScriptLib.SetGroupVariableValue(context, "father_state", 5)

	elseif evt.param3 == 2 then

		ScriptLib.PrintContextLog(context, "## TD_MistTrialV3 Gallery Stop Triggered. reason@ Client.") 

		ScriptLib.SetGroupVariableValue(context, "gallery_state", 2)

		ScriptLib.FailMistTrialDungeonChallenge(context, cfg.father_index)

		ScriptLib.SetGroupVariableValue(context, "father_state", 5)

	elseif evt.param3 == 3 then
		ScriptLib.PrintContextLog(context, "## TD_MistTrialV3 Gallery Stop Triggered. reason@ Lua.") 
		ScriptLib.SetGroupVariableValue(context, "gallery_state", 2)
		ScriptLib.SetGroupVariableValue(context, "father_state", 5)
	end 
	
	return 0
end

function action_Group_Load(context, evt)
	ScriptLib.PrintContextLog(context, "## TD_MistTrialV3 group is loaded")
	LF_DoorController_Simple(context, false, 0)
	return 0
end

-- function action_Player_Leave_Room(context, evt)
-- 	ScriptLib.PrintContextLog(context, "## TD_MistTrialV3 leave region " .. evt.param1)

-- 	if evt.param1 == defs.elevatorCloseRegion then
-- 		-- 在没有完成三个钥匙房之前离开电梯房，需要关门
-- 		if ScriptLib.GetGroupVariableValue(context, "father_state") < 3 then
-- 			-- 最后的param一定要填-1，中间的填啥都行，反正用不上
-- 			LF_DoorController(context, true, -1)
-- 		end
-- 	end
	
-- 	return 0
-- end

-- function action_Player_Enter_Room(context, evt)
-- 	ScriptLib.PrintContextLog(context, "## TD_MistTrialV3 enter region " .. evt.param1)

-- 	if evt.param1 == defs.elevatorRegion then
-- 		-- 如果玩家不知为何离开之后又冲进来了，而且还没完成三个钥匙房，得把所有门打开
-- 		if ScriptLib.GetGroupVariableValue(context, "father_state") < 3 then

-- 			for i = 1, #defs.elevatorDoor do
-- 				ScriptLib.SetGadgetStateByConfigId(context, defs.elevatorDoor[i], doorState.open)
-- 			end

-- 			LF_CloseAllKeyDoors(context, false)
-- 		end
-- 	end
-- 	return 0
-- end


-- function action_EVENT_CHALLENGE_SUCCESS(context, evt)
--     ScriptLib.PrintContextLog(context, "## TD_CoinCollect: challenge index = "..evt.param1.." succeeds")

--     return 0
-- end


-- function action_EVENT_CHALLENGE_FAIL(context, evt)
--     ScriptLib.PrintContextLog(context, "## TD_CoinCollect: challenge index = "..evt.param1.." fails")

--     return 0
-- end

--================================================================
-- local functions
--================================================================
function LF_DoorController_Simple(context, start, childIdx)
	ScriptLib.PrintContextLog(context, "## TD_MistTrialV3 LF_DoorController_Simple is called, start = "..tostring(start)..", childIdx = "..childIdx)

	local destState
	if start == true then destState = doorState.close
	elseif start == false then destState = doorState.open
	end

	-- 校验一下childIdx必须是0-3
	if childIdx > 3 or childIdx < 0 then
		ScriptLib.PrintContextLog(context, "## TD_MistTrialV3 LF_DoorController_Simple: child index = "..childIdx.." is illegal, return immediately")
		return 0
	end

	if childIdx == 0 then
		-- 电梯房间的门全打开
		for i = 1, #defs.elevatorDoor do
			ScriptLib.SetGadgetStateByConfigId(context, defs.elevatorDoor[i], destState)
		end

		-- 其他所有的门也全打开
		LF_OpenAllKeyDoors(context, true)
		return
	end

	-- 钥匙房间的门
	ScriptLib.SetGadgetStateByConfigId(context, defs.keyDoor[childIdx].center, destState)
	ScriptLib.SetGadgetStateByConfigId(context, defs.keyDoor[childIdx].left, destState)
	ScriptLib.SetGadgetStateByConfigId(context, defs.keyDoor[childIdx].right, destState)

end


-- 【三期新增】【暂时用不上】控制场景中各种门的开启和关闭(都没设保底)，childIdx应该为1/2/3，离开电梯的特殊情况传-1
function LF_DoorController(context, start, childIdx)
	-- 根据挑战id找房间在defs表里的id
	local progress = ScriptLib.GetGroupVariableValue(context, "key_progress")
	ScriptLib.PrintContextLog(context, "## TD_MistTrialV3 LF_DoorController is called, start = "..tostring(start)..", childIdx = "..childIdx)

	if childIdx == -1 then
		-- 玩家离开电梯房间，所有电梯门都关上，其他门都打开(不存档，所以先不写这个保底，初始门应该都配成0，即本来就是开着的)
		for i = 1, #defs.elevatorDoor do
			ScriptLib.SetGadgetStateByConfigId(context, defs.elevatorDoor[i], doorState.close)
		end
		ScriptLib.PrintContextLog(context, "## TD_MistTrialV3 LF_DoorController: all doors in elevator room is closed")
		return 0
	end

	if childIdx > 3 or childIdx < 1 then
		ScriptLib.PrintContextLog(context, "## TD_MistTrialV3 LF_DoorController: child index is illegal, return immediately")
		return 0
	end

	if start == true then
		-- 玩家开启任何一个钥匙挑战，钥匙房的所有门都关上
		LF_OpenAllKeyDoors(context, false)

		-- 门的状态设置完了再改相关挑战结束room group var
		ScriptLib.SetGroupVariableValue(context, "last_room_start", childIdx)
		ScriptLib.PrintContextLog(context, "## TD_MistTrialV3 LF_DoorController: all doors in room "..childIdx.." is closed")

	elseif start == false then
		if progress == 1 then
			-- 其他房间和这个房间相连的门打开(两对，四个门)
			for i = 1, #defs.keyDoor do
				if i ~= childIdx then
					LF_OpenDoorPairs(context, i, childIdx)
				end
			end

		elseif progress == 2 then
			-- 玩家完成第二个钥匙挑战，这个房间左右两个门里，不和上一个房间相连的门打开（一对，两个门）
			-- 找完上一个完成房间的idx，再设置成新的
			local finalRoomIdx
			local lastRoomIdx = ScriptLib.GetGroupVariableValue(context, "last_room_finished")
			for i = 1, #defs.keyDoor do
				if i ~= childIdx and i ~= lastRoomIdx then
					-- 找还没去过的那个房间
					finalRoomIdx = i
				end
			end
			LF_OpenDoorPairs(context, finalRoomIdx, childIdx)


		elseif progress == 3 then
			-- 玩家完成第三个钥匙挑战，这个房间和电梯对应的门开启，电梯和它对应的门也开启
			ScriptLib.SetGadgetStateByConfigId(context, defs.keyDoor[childIdx].center, doorState.open)
			ScriptLib.SetGadgetStateByConfigId(context, defs.elevatorDoor[childIdx], doorState.open)
			ScriptLib.PrintContextLog(context, "## TD_MistTrialV3 LF_DoorController: door = "..defs.keyDoor[childIdx].center..", "..defs.elevatorDoor[childIdx].." is open")

		end
		
		-- 门的状态设置完了再改相关挑战结束room group var
		ScriptLib.SetGroupVariableValue(context, "last_room_finished", childIdx)
	end
end

-- 【暂时用不上】
function LF_OpenDoorPairs(context, roomIdx_01, roomIdx_02)
	-- todo:判断下两个room idx，[1, 3]且不能重复
	-- 找这两个room idx之间的两个门的config id
	
	-- 参数顺序无所谓，这里重新设一下
	local room01 = math.min(roomIdx_01, roomIdx_02)
	local room02 = math.max(roomIdx_01, roomIdx_02)

	if room01 == 1 and room02 == 3 then
		ScriptLib.SetGadgetStateByConfigId(context, defs.keyDoor[room01].left, doorState.open)
		ScriptLib.SetGadgetStateByConfigId(context, defs.keyDoor[room02].right, doorState.open)

	else
		ScriptLib.SetGadgetStateByConfigId(context, defs.keyDoor[room01].right, doorState.open)
		ScriptLib.SetGadgetStateByConfigId(context, defs.keyDoor[room02].left, doorState.open)

	end
	
	ScriptLib.PrintContextLog(context, "## TD_MistTrialV3 LF_GetNextDoor is called, room01 = "..room01..", room02 = "..room02..", door = "..defs.keyDoor[room01].right..
		", "..defs.keyDoor[room02].left)

	return 0
end

function LF_OpenAllKeyDoors(context, open)
	ScriptLib.PrintContextLog(context, "## TD_MistTrialV3 LF_OpenAllKeyDoors is called, open = "..tostring(open))

	local destState
	if open == true then destState = doorState.open
	elseif open == false then destState = doorState.close
	end

	for i = 1, #defs.keyDoor do
		ScriptLib.SetGadgetStateByConfigId(context, defs.keyDoor[i].center, destState)
		ScriptLib.SetGadgetStateByConfigId(context, defs.keyDoor[i].left, destState)
		ScriptLib.SetGadgetStateByConfigId(context, defs.keyDoor[i].right, destState)
	end
end

--钥匙房进度
function Reminder_Key_Progress(context, progress)

	if progress == 1 then 
		ScriptLib.ShowReminder(context, 43001002)
		return 0
	elseif progress == 2 then 
		ScriptLib.ShowReminder(context, 43001003)
		return 0
	elseif progress == 3 then 
		ScriptLib.ShowReminder(context, 43001004)
		return 0
	else
		ScriptLib.PrintContextLog(context, "## TD_MistTrialV3 #WRONG# Unexpected Key Progress Change! value@"..progress)
	end
	return 0
end

--当需要接续挑战时，根据挑战阶段挂载对应的子挑战，如果是一阶段，还需要续上挑战进度
function ResumeMistTrial(context, evt)

	--父挑战状态 0-初始 1-进了地城但未开始 2-进行中（正在激活古代符文 3-进行中（启动遗迹控制台）4-进行中（最终挑战） 5-全部完成
	local father_state = ScriptLib.GetGroupVariableValue(context, "father_state")
	ScriptLib.PrintContextLog(context, "## TD_MistTrialV3 ResumeMistTrial Called. father_state@".. father_state) 
	--迷城战线v2的限时用Gallery控制（excel表）
	--此处用于保证接续挑战时，CreateFatherChallenge的时长不要小于Gallery
	local father_life = 1800

	if father_state == 0 or father_state == 1 then 

		--挑战还没开始过，就触发了接续挑战
		ScriptLib.PrintContextLog(context, "## TD_MistTrialV3 #WRONG# Mark has set 1 but father challenge state is 0 ! ") 

		return 0

	elseif father_state == 2 then 
		--接续钥匙房挑战 defs.key_challenge
		local saved = ScriptLib.GetGroupVariableValue(context, "key_progress")

		--创建父挑战
		ScriptLib.CreateFatherChallenge(context, cfg.father_index, defs.challenge_id, father_life , {success=99999, fail=99999})

		--挑战类型为：触发特定Trigger 参数1： event_type所在枚举序号； 参数2： trigger_tag；参数3： 次数；参数4：Bool，次数达成是否计为成功；参数5：初始次数值
		ScriptLib.AttachChildChallenge(context, cfg.father_index, cfg.key_challenge_index, defs.key_challenge, {3,cfg.key_challenge_index,defs.key_target,1,saved}, {}, {success=1, fail=1} )
			
		local ret = LF_StartChallenge(context, cfg.father_index)

		ScriptLib.PrintContextLog(context, "## TD_MistTrialV3 Resuming MistTrial Starting: 激活古代符文. Saved key num@"..saved..", start challenge ret = "..ret) 

		return 0

	elseif father_state == 3 then 

		ScriptLib.PrintContextLog(context, "## TD_MistTrialV3 Resuming MistTrial Starting: 启动遗迹控制台.") 

		--创建父挑战
		ScriptLib.CreateFatherChallenge(context, cfg.father_index, defs.challenge_id, father_life ,  {success=99999, fail=99999})

		--接续启动遗迹控制台 defs.worktop_challenge
		--挑战类型为：触发特定Trigger 参数1： event_type所在枚举序号； 参数2： trigger_tag；参数3： 次数；参数4：Bool，次数达成是否计为成功；参数5：初始次数值
		ScriptLib.AttachChildChallenge(context, cfg.father_index, cfg.worktop_challenge_index, defs.worktop_challenge, {7,cfg.worktop_challenge_index,1,1}, {}, {success=1, fail=1} )

		LF_StartChallenge(context, cfg.father_index)

		return 0

	elseif father_state == 4 then 

		ScriptLib.PrintContextLog(context, "## TD_MistTrialV3 Resuming MistTrial Starting: 最终挑战.") 

		--创建父挑战
		ScriptLib.CreateFatherChallenge(context, cfg.father_index, defs.challenge_id, father_life , {success=99999, fail=99999})

		--接续 完成最终挑战
		ScriptLib.AttachChildChallenge(context, cfg.father_index, cfg.final_challenge_index, defs.final_challenge, {3,cfg.final_challenge_index,1,1}, {}, {success=99999, fail=1} )

		LF_StartChallenge(context, cfg.father_index)

		return 0


	elseif father_state == 5 then 

		--挑战还没开始过，就触发了接续挑战
		ScriptLib.PrintContextLog(context, "## TD_MistTrialV3 Trying to resume challenge but it is all clear. Do nothing.") 

		return 0
	end
	return -1
end

function ResetGroupTempVar(context)
	for k,v in pairs(buff_gadgetId) do
		ScriptLib.SetGroupTempValue(context, v,0,{})
	end
	return 0
end

--上报运营日志数据埋点
function UpLoadActionLog(context)

	local log = {
		["Buff_Attack"] = 0,
		["Buff_Heal"] = 0	
	}

	for k, v in pairs(log) do
		log[k] =  ScriptLib.GetGroupTempValue(context, k ,{})
	end
	ScriptLib.MarkGroupLuaAction(context, "Mist_trial", "", log)

	ScriptLib.PrintContextLog(context, "## TD_MistTrialV3 UpLoadActionLog: "..log["Buff_Attack"].." |"..log["Buff_Heal"])
	return 0
end

--用于检查value是否在目标table中
function CheckIsInTable(context,check_value)	
	--和关卡约定的challenge Index
	for k,v in pairs(cfg) do
		if v == check_value then 
			--ScriptLib.PrintContextLog(context, "## TD_MistTrialV3 Check Is SpecialChallenge. return 1") 
			return 1
		end
	end
	return 0
end

function LF_StartChallenge(context, challenge_index)
	-- 起challenge之前先检查一下是不是已经开了，开了就不能再起了，不然显示会被挤掉
	local success = -1
	local ret = -1
	if ScriptLib.IsChallengeStartedByChallengeIndex(context, base_info.group_id, challenge_index) == false then
		ret = ScriptLib.StartFatherChallenge(context, challenge_index)
		success = 0
	end

	ScriptLib.PrintContextLog(context, "## TD_MistTrialV3 LF_StartChallenge is called, challenge index = "..challenge_index..", succees = "..success..", challenge ret = "..ret)

	return success
end


--================================================================
-- ServerLuaCall
--================================================================
function SLC_MistTrial_TryStartChallenge(context)
	-- 在这里第一次起挑战和gallery
	ScriptLib.CreateFatherChallenge(context, cfg.father_index, 228, 1800, {success = 99999, fail = 99999, fail_on_wipe=true}) 
	ScriptLib.AttachChildChallenge(context, cfg.father_index, cfg.key_challenge_index, 229, {3,cfg.key_challenge_index,3,1},{},{success=0,fail=0})
	local ret1 = LF_StartChallenge(context, cfg.father_index)
	local ret2 = ScriptLib.StartGallery(context, defs.gallery_id)
	ScriptLib.PrintContextLog(context, "## TD_MistTrialV3 SLC_MistTrial_TryStartChallenge is called, challenge ret = "..ret1..", gallery ret = "..ret2)

	return 0
end

--================================================================
-- Initialization
--================================================================
LF_Initialize_Group(triggers, suites, variables)