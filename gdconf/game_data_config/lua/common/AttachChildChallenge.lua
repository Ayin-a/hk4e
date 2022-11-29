
--------初始参数----------

local Enum ={
	CatchKey = "catchKey",
}

local tempTrigger = {
	{ config_id = 68886, name = "VARIABLE_CHANGE_68886", event = EventType.EVENT_VARIABLE_CHANGE,
	  source = Enum.CatchKey, condition = "condition_Check_Score", action = "",
	  trigger_count = 0 , tag = "666" }
}

--------初始化----------
function LF_Initialize_Level()
	for k,v in pairs(tempTrigger) do
		table.insert(triggers, v)
		table.insert(suites[init_config.suite].triggers, v.name)
	end

	local var = {  config_id=50000001,name = Enum.CatchKey, value = 0, no_refresh = false }
	variables[var.name] = var

	return 0
end

--------逻辑函数----------
function condition_Check_Score(context, evt)
	ScriptLib.PrintContextLog(context, "## TD_AttachChildChallenge : Trigger" .. evt.param1)
	if evt.param1 == evt.param2 then return false end
	if evt.param1<=0 then
		return false
	end
	return true
end
--------可调用函数--------
-- 定义父挑战信息
function DefineFatherIndex(context, prev_context, fatherIndex)
	ScriptLib.SetGroupTempValue(context, "ChildChallenge_FatherIndex", fatherIndex, {})
	ScriptLib.PrintContextLog(context, "## TD_AttachChildChallenge : fatherIndex" .. fatherIndex)
	return 0
end

-- 定义子挑战的成功失败分数
function DefineChildChallengeScore(context, prev_context, success, fail)
	ScriptLib.SetGroupTempValue(context, "ChildChallenge_Success", success, {})
	ScriptLib.SetGroupTempValue(context, "ChildChallenge_Fail", fail, {})
	ScriptLib.PrintContextLog(context, "## TD_AttachChildChallenge : success" .. success)
	ScriptLib.PrintContextLog(context, "## TD_AttachChildChallenge : fail" .. fail)
	return 0
end

--从其它Group调用该方法，可以为该Group创建对应参数。使用前请保证父挑战已经启动
function AttachChildChallengeFromDiffGroup(context, prev_context, childIndex, challengeId, targetCount)
	--在特定时间内触发特定Trigger,paramTable => {time, 3, 666, targetCount} scoreTable => {success=1,fail=0}
	local fatherIndex = ScriptLib.GetGroupTempValue(context, "ChildChallenge_FatherIndex",{})
	local _success = ScriptLib.GetGroupTempValue(context, "ChildChallenge_Success",{})
	local _fail = ScriptLib.GetGroupTempValue(context, "ChildChallenge_Fail",{})

	ScriptLib.PrintContextLog(context, "## TD_AttachChildChallenge : fatherIndex/success/fail" .. fatherIndex .."/".. _success .."/".. _fail .."/")
	if fatherIndex == 0 then
		ScriptLib.PrintContextLog(context, "## TD_AttachChildChallenge : Need DefineFatherIndex")
		return -1
	end

	local paramTable = {3, 666, targetCount, 1}
	local scoreTable = {success = _success,fail = _fail}
	ScriptLib.SetGroupVariableValue(context, Enum.CatchKey, 0)
	ScriptLib.AttachChildChallenge(context, fatherIndex, childIndex, challengeId, paramTable,{}, scoreTable)
	return 0
end

--挑战加分
function AddChildChallengeScore(context, prev_context, score)
	local currentScore = ScriptLib.GetGroupVariableValue(context, Enum.CatchKey)
	ScriptLib.SetGroupVariableValue(context, Enum.CatchKey, currentScore + score)
	return 0
end

--终止特定子挑战
function StopChildChallengeFromDiffGroup(context, prev_context, childIndex, isWin)
	-- isWin = 0 (失败) 1(完成)
	ScriptLib.StopChallenge(context, childIndex, isWin)
	return 0
end


LF_Initialize_Level()
