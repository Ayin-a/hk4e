--- ServerUploadTool Save to [/root/env/data/lua/common/V2_3]  ---

--[[
	2.3迷城战线复刻

	每个小房间内容是单独的挑战。
	此group负责管理：负责记着3个特殊挑战的进度、负责持续显示父挑战标题、挑战阶段、挂个大region用于触发断线重连后挑战接续

	和关卡约定的challenge Index：
		父挑战 999
		点亮三颗符文 901
		启动遗迹控制台 902
		最终挑战 903
]]
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
	}
]]

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

}

--和关卡约定的challenge Index
local cfg = {
	["father_index"] = 999,
	["key_challenge_index"] = 901,
	["worktop_challenge_index"] = 902,
	["final_challenge_index"] = 903
}

function LF_Initialize_Group(triggers, suites)
	for i=1,#extraTriggers do
		table.insert(triggers, extraTriggers[i])
		table.insert(suites[1].triggers,extraTriggers[i].name)
	end
	--Gallery是否在进行 0-未开始 1-进行中 2-已成功（不再触发）
	table.insert(variables,{ config_id=50000001,name = "gallery_state", value = 0, no_refresh = true})
	--父挑战状态 0-初始 1-进了地城但未开始 2-进行中（正在激活古代符文 3-进行中（启动遗迹控制台）4-进行中（最终挑战） 5-全部完成
	table.insert(variables,{ config_id=50000002,name = "father_state", value = 0, no_refresh = true})

	--钥匙房 激活古代符文进度
	table.insert(variables,{ config_id=50000003,name = "key_progress", value = 0, no_refresh = true})

	--子挑战用的触发器
	table.insert(variables,{ config_id=50000004,name = "catchKey", value = 0, no_refresh = false})

	--地脉异常等级
	table.insert(variables,{ config_id=50000005,name = "floor_level", value = 1, no_refresh = true})

	return 0
end
-----------------以下由关卡调用---------------------

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
 		ScriptLib.PrintContextLog(context, "[MistTrialV2] #WRONG# Trying to start a subchallenge while father is not actived!! ") 
 	end
	return 0
end

--参数为 {怪物所在group_id, 目标个数target_count}
function SetKillMonsterTarget(context, prev_context, group_id, target_count)

	ScriptLib.SetGroupTempValue(context, "target_group", group_id, {})
	ScriptLib.SetGroupTempValue(context, "target_count", target_count, {})
	ScriptLib.PrintContextLog(context, "[MistTrialV2] Set Kill Monster Target. Group@" .. group_id.." Count@".. target_count)

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
	return 0
end

--终止特定子挑战
function StopMistTrialChildChallenge(context, prev_context, childIndex, isWin)
	-- isWin = 0 (失败) 1(完成)
	ScriptLib.StopChallenge(context, childIndex, isWin)
	return 0
end

--当钥匙房被完成时，调这个方法-----
--参数为 {1}
function AddMistTrialKeyProgress(context, prev_context, param)
	ScriptLib.PrintContextLog(context, "[MistTrialV2] Get Key Progress. add@"..param) 
	local father_state = ScriptLib.GetGroupVariableValue(context, "father_state")
	--if father_state == 2 then
		ScriptLib.ChangeGroupVariableValue(context, "key_progress", param)
		local key_progress = ScriptLib.GetGroupVariableValue(context, "key_progress")
		Reminder_Key_Progress(context, key_progress)
	--else
		--ScriptLib.PrintContextLog(context, "[MistTrialV2] #WRONG# Trying to finish a key room while father challenge is @"..father_state.." (need 2)") 
	--end
	return 0
end
--由于复活的实现原因，不能反复Attach，如果一个地城有多个复活房，每次交互复活房操作台的时候先调用这个来移除
function RemoveReviveAbility(context, prev_context)
	ScriptLib.PrintContextLog(context, "[MistTrialV2] Remove MistTrial Revive Ability.") 
	ScriptLib.DelGalleryAbilityGroup(context, {}, defs.gallery_id, 0)
	return 0
end

--LD通知Ability变动 。 参数 0-地脉异常升级 1-全队复活

function ModifyMistTrialAbility(context, prev_context, param)
	ScriptLib.PrintContextLog(context, "[MistTrialV2] Modify MistTrial Ability. Param@"..param) 

	if param == 0 then 
		--设置地脉异常等级，初始1级 升档最多3次  一共4个档
		ScriptLib.ChangeGroupTempValue(context, "Buff_Attack", 1, {})
		ScriptLib.ChangeGroupVariableValue(context, "floor_level", 1)

		local floor_level = ScriptLib.GetGroupVariableValue(context, "floor_level")

		if floor_level > 4 or floor_level < 1 then 

			ScriptLib.PrintContextLog(context, "[MistTrialV2] #WRONG# Unexpected floor_level: Got@"..floor_level.." (floor_level is 1 ~ 4 in MistTrialV2)") 

			return 0
		else
			ScriptLib.SetMistTrialServerGlobalValue(context, floor_level)
		end

		return 0

	elseif param == 1 then 

		--复活
		ScriptLib.ChangeGroupTempValue(context, "Buff_Heal", 1, {})
		ScriptLib.AttachGalleryAbilityGroup(context, {}, defs.gallery_id, 0)

		return 0

	else
		ScriptLib.PrintContextLog(context, "[MistTrialV2] #WRONG# Unexpected ModifyMistTrialAbility param: Got@"..param.." (param is 0 or 1 in MistTrialV2)") 
	end

	return 0
end

-----------------以下非关卡调用---------------------

--用于获知挑战进行到哪个阶段了.三符文完成
function action_Key_Challenge_Success(context, evt)
	ScriptLib.PrintContextLog(context, "[MistTrialV2] Get Challenge Success. @"..evt.param1) 
	ScriptLib.SetGroupVariableValue(context, "father_state", 3)
	return 0
end
--用于获知挑战进行到哪个阶段了.激活操作台完成
function action_Worktop_Challenge_Success(context, evt)
	ScriptLib.PrintContextLog(context, "[MistTrialV2] Get Challenge Success. @"..evt.param1) 
	ScriptLib.SetGroupVariableValue(context, "father_state", 4)
	return 0
end
--用于获知挑战进行到哪个阶段了.最终挑战完成
function action_Final_Challenge_Success(context, evt)
	ScriptLib.PrintContextLog(context, "[MistTrialV2] Get Challenge Success. @"..evt.param1) 
	ScriptLib.SetGroupVariableValue(context, "father_state", 5)
	return 0
end
--初始化标志位
function action_Gallery_Start(context, evt)
	ScriptLib.PrintContextLog(context, "[MistTrialV2] Gallery Start Detected!! GalleryId@"..evt.param1) 
	ScriptLib.SetGroupVariableValue(context, "gallery_state", 1)
	ScriptLib.SetGroupVariableValue(context, "father_state", 2)
	ResetGroupTempVar(context)
	--由于复活的实现原因，需要手动下下来才行（复刻不要再复用这个1.5的远古ability了！）b1326884 
	ScriptLib.DelGalleryAbilityGroup(context, {}, defs.gallery_id, 0)
	
	return 0
end

--当一个小房间的杀怪挑战完成时，向那个group发一个success
function action_Sub_Challenge_Success(context, evt)
	if CheckIsInTable(context, tonumber(evt.source_name)) == 1 then
		--特殊三挑战不发，发了也没用
		return 0
	else
		local fromGroup = ScriptLib.GetGroupTempValue(context, "target_group", {}) 
		ScriptLib.PrintContextLog(context, "[MistTrialV2] A Sub Challenge Finished. ChallengeID@"..evt.param1.." ChallengeIndex@"..evt.source_name..". Send GroupVar(succcess = 1) to Group@"..fromGroup) 
		ScriptLib.SetGroupVariableValueByGroup(context, "success", 1, fromGroup)
	end

	return 0
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
		ScriptLib.PrintContextLog(context, "[MistTrialV2] #WRONG# Unexpected Key Progress Change! value@"..progress)
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

	ScriptLib.PrintContextLog(context, "[MistTrialV2] Enter father region triggered...") 

	if ScriptLib.GetGroupVariableValue(context, "father_state") == 0 then 

		ScriptLib.SetGroupVariableValue(context, "father_state", 1)

		ScriptLib.PrintContextLog(context, "[MistTrialV2] First Time Enter region. Set mark.")
		return 0
	end	

	local gallery_state = ScriptLib.GetGroupVariableValue(context, "gallery_state")

	if gallery_state == 2 then 

		ScriptLib.PrintContextLog(context, "[MistTrialV2] ...gallery is finished, will do nothing.") 

		return 0

	elseif gallery_state == 1 then

		ScriptLib.PrintContextLog(context, "[MistTrialV2] Gallery_state = 1 & father_state is not 0, Trying to get Challenge Progress. ") 

		if ResumeMistTrial(context) == -1 then 

			ScriptLib.PrintContextLog(context, "[MistTrialV2] #WRONG# Unexpected Challenge Progress!!")

		end
		return 0

	elseif gallery_state == 0 then 

		ScriptLib.PrintContextLog(context, "[MistTrialV2] ...gallery is not started, will do nothing.") 

		return 0
	else

		ScriptLib.PrintContextLog(context, "[MistTrialV2] #WRONG# Unexpected Gallery state! gallery_state@".. gallery_state) 
		return 0
	end 

	return 0
end

--当需要接续挑战时，根据挑战阶段挂载对应的子挑战，如果是一阶段，还需要续上挑战进度
function ResumeMistTrial(context, evt)

	--父挑战状态 0-初始 1-进了地城但未开始 2-进行中（正在激活古代符文 3-进行中（启动遗迹控制台）4-进行中（最终挑战） 5-全部完成
	local father_state = ScriptLib.GetGroupVariableValue(context, "father_state")
	ScriptLib.PrintContextLog(context, "[MistTrialV2] ResumeMistTrial Called. father_state@".. father_state) 
	--迷城战线v2的限时用Gallery控制（excel表）
	--此处用于保证接续挑战时，CreateFatherChallenge的时长不要小于Gallery
	local father_life = 1800

	if father_state == 0 or father_state == 1 then 

		--挑战还没开始过，就触发了接续挑战
		ScriptLib.PrintContextLog(context, "[MistTrialV2] #WRONG# Mark has set 1 but father challenge state is 0 ! ") 

		return 0

	elseif father_state == 2 then 
		--接续钥匙房挑战 defs.key_challenge
		local saved = ScriptLib.GetGroupVariableValue(context, "key_progress")

		--创建父挑战
		ScriptLib.CreateFatherChallenge(context, cfg.father_index, defs.challenge_id, father_life , {success=99999, fail=99999})

		--挑战类型为：触发特定Trigger 参数1： event_type所在枚举序号； 参数2： trigger_tag；参数3： 次数；参数4：Bool，次数达成是否计为成功；参数5：初始次数值
		ScriptLib.AttachChildChallenge(context, cfg.father_index, cfg.key_challenge_index, defs.key_challenge, {3,901,defs.key_target,1,saved}, {}, {success=1, fail=1} )
		ScriptLib.StartFatherChallenge(context, cfg.father_index)

		ScriptLib.PrintContextLog(context, "[MistTrialV2] Resuming MistTrial Starting: 激活古代符文. Saved key num@"..saved) 

		return 0

	elseif father_state == 3 then 

		ScriptLib.PrintContextLog(context, "[MistTrialV2] Resuming MistTrial Starting: 启动遗迹控制台.") 

		--创建父挑战
		ScriptLib.CreateFatherChallenge(context, cfg.father_index, defs.challenge_id, father_life ,  {success=99999, fail=99999})

		--接续启动遗迹控制台 defs.worktop_challenge
		--挑战类型为：触发特定Trigger 参数1： event_type所在枚举序号； 参数2： trigger_tag；参数3： 次数；参数4：Bool，次数达成是否计为成功；参数5：初始次数值
		ScriptLib.AttachChildChallenge(context, cfg.father_index, cfg.worktop_challenge_index, defs.worktop_challenge, {7,902,1,1}, {}, {success=1, fail=1} )

		ScriptLib.StartFatherChallenge(context, cfg.father_index)

		return 0

	elseif father_state == 4 then 

		ScriptLib.PrintContextLog(context, "[MistTrialV2] Resuming MistTrial Starting: 最终挑战.") 

		--创建父挑战
		ScriptLib.CreateFatherChallenge(context, cfg.father_index, defs.challenge_id, father_life , {success=99999, fail=99999})

		--接续 完成最终挑战
		ScriptLib.AttachChildChallenge(context, cfg.father_index, cfg.final_challenge_index, defs.final_challenge, {3,903,1,1}, {}, {success=99999, fail=1} )

		ScriptLib.StartFatherChallenge(context, cfg.father_index)

		return 0


	elseif father_state == 5 then 

		--挑战还没开始过，就触发了接续挑战
		ScriptLib.PrintContextLog(context, "[MistTrialV2] Trying to resume challenge but it is all clear. Do nothing.") 

		return 0
	end
	return -1
end

function action_Gallery_Stop(context, evt)

	if evt.param1 ~= defs.gallery_id then 
		return -1
	end
	UpLoadActionLog(context)
	--evt.param3
	--1、时间到 2、客户端中断 3、LUA中断
	if evt.param3 == 1 then 

		ScriptLib.PrintContextLog(context, "[MistTrialV2] Gallery Stop Triggered. reason@ Time Up.") 

		ScriptLib.SetGroupVariableValue(context, "gallery_state", 2)

		ScriptLib.FailMistTrialDungeonChallenge(context, 999)

		ScriptLib.SetGroupVariableValue(context, "father_state", 5)

	elseif evt.param3 == 2 then

		ScriptLib.PrintContextLog(context, "[MistTrialV2] Gallery Stop Triggered. reason@ Client.") 

		ScriptLib.SetGroupVariableValue(context, "gallery_state", 2)

		ScriptLib.FailMistTrialDungeonChallenge(context, 999)

		ScriptLib.SetGroupVariableValue(context, "father_state", 5)

	elseif evt.param3 == 3 then
		ScriptLib.PrintContextLog(context, "[MistTrialV2] Gallery Stop Triggered. reason@ Lua.") 
		ScriptLib.SetGroupVariableValue(context, "gallery_state", 2)
		ScriptLib.SetGroupVariableValue(context, "father_state", 5)
	end 
	
	return 0
end
function ResetGroupTempVar(context)
	for k,v in pairs(buff_gadgetId) do
		ScriptLib.SetGroupTempValue(context, v,0,{})
	end
	return 0
end
--上报运营日志数据 需求单s1286673 
function UpLoadActionLog(context)

	local log = {
		["Buff_Attack"] = 0,
		["Buff_Heal"] = 0	
	}

	for k, v in pairs(log) do
		log[k] =  ScriptLib.GetGroupTempValue(context, k ,{})
	end
	ScriptLib.MarkGroupLuaAction(context, "Mist_trial", "", log)

	ScriptLib.PrintContextLog(context, "[MistTrialV2] UpLoadActionLog: "..log["Buff_Attack"].." |"..log["Buff_Heal"])
	return 0
end
--用于检查value是否在目标table中
function CheckIsInTable(context,check_value)	
	--和关卡约定的challenge Index
	local indexs = {999,901,902,903}

	for k,v in pairs(indexs) do
		if v == check_value then 
			--ScriptLib.PrintContextLog(context, "[MistTrialV2] Check Is SpecialChallenge. return 1") 
			return 1
		end
	end
	return 0
end

LF_Initialize_Group(triggers, suites)