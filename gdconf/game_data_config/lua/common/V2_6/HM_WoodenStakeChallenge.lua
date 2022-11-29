
local extraTriggers={
  { config_id = 8000001, name = "EVENT_ANY_GADGET_DIE", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_EVENT_ANY_GADGET_DIE", trigger_count = 0 },
  { config_id = 8000002, name = "EVENT_TIME_AXIS_PASS", event = EventType.EVENT_TIME_AXIS_PASS, source = "WoodenStakeChallenge", condition = "", action = "action_EVENT_TIME_AXIS_PASS", trigger_count = 0 },
  { config_id = 8000003, name = "EVENT_GROUP_LOAD", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD", trigger_count = 0 },
  { config_id = 8000004, name = "EVENT_Refresh_Delay", event = EventType.EVENT_TIME_AXIS_PASS, source = "RefreshDelay", condition = "", action = "action_Refresh_Delay", trigger_count = 0 },
}


function LF_Initialize_Group(triggers, suites)
	for i=1,#extraTriggers do
		table.insert(triggers, extraTriggers[i])
		table.insert(suites[init_config.suite].triggers,extraTriggers[i].name)
	end
end

function action_EVENT_ANY_GADGET_DIE(context, evt)
	ScriptLib.PrintContextLog(context,"HM_WoodenStakeChallenge:gadget die")
	--如果uid非空，则记录是谁干的
	if context.uid~=0 and context.uid~=nil then
		ScriptLib.PrintContextLog(context,"HM_WoodenStakeChallenge uid:"..context.uid)
		--计数标志加一
		ScriptLib.ChangeGroupTempValue(context, "uidListIndex", 1, {})
		local tempIdx=ScriptLib.GetGroupTempValue(context, "uidListIndex", {})
		--存uid
		ScriptLib.SetGroupTempValue(context, "uid"..tempIdx, context.uid, {})
	else
		ScriptLib.PrintContextLog(context,"HM_WoodenStakeChallenge uid is null")
	end
	--木箱销毁相关判定
	if ScriptLib.GetGroupTempValue(context, "TimeAxisPlaying", {})==0 then
		ScriptLib.PrintContextLog(context,"HM_WoodenStakeChallenge:TimeAxisPlaying Zero")
		--毁坏木箱计数
		ScriptLib.ChangeGroupTempValue(context, "destoryedStakeNum", 1, {})
		--修改flag表示玩法开启
		ScriptLib.SetGroupTempValue(context, "TimeAxisPlaying", 1, {})
		--起2S的时间轴
		ScriptLib.InitTimeAxis(context, "WoodenStakeChallenge", {defs.challengeTime or 2}, false)
		ScriptLib.PrintContextLog(context,"HM_WoodenStakeChallenge:WoodenStakeChallenge start")
		--起reminder提示开始
		--ScriptLib.ShowReminder(context, 400125)
	else
		--毁坏木箱计数
		ScriptLib.ChangeGroupTempValue(context, "destoryedStakeNum", 1, {})
		--log
		ScriptLib.PrintContextLog(context,"HM_WoodenStakeChallenge:destoryedStakeNum check")
		--检测是否所有木箱都销毁
		if ScriptLib.GetGroupTempValue(context, "destoryedStakeNum", {})>=6 then
			--根据uidListIndex拿取参与击杀的uidList
			local uidList={}
			for i=1,ScriptLib.GetGroupTempValue(context, "uidListIndex", {}) do
				local repeated=false
				local tempUid=ScriptLib.GetGroupTempValue(context, "uid"..i, {})

				for j=1,#uidList do
					if uidList[j]==tempUid then
						repeated=true
						break
					end
				end
				if repeated==false then
					table.insert(uidList,tempUid)
				end
			end
			--上传接口上传展示数据
			ScriptLib.UpdateStakeHomePlayRecord(context, uidList)
			--reminer提示成功
			ScriptLib.ShowReminder(context, 400126)
			--关闭时间轴
			ScriptLib.EndTimeAxis(context, "WoodenStakeChallenge")
			ScriptLib.InitTimeAxis(context, "RefreshDelay", {defs.delayTime or 1}, false)
		end
	end
	return 0
end

function action_EVENT_TIME_AXIS_PASS(context, evt)
	ScriptLib.PrintContextLog(context,"HM_WoodenStakeChallenge:fail time axis in")
	--重置参数
	ScriptLib.SetGroupTempValue(context, "uidListIndex", 0, {})
	ScriptLib.SetGroupTempValue(context, "TimeAxisPlaying", 0, {})
	ScriptLib.SetGroupTempValue(context, "destoryedStakeNum", 0, {})
	--起reminder提示结束
	--ScriptLib.ShowReminder(context, 400127)
	--刷新group
	ScriptLib.RefreshGroup(context, { group_id = 0, suite = 1 })
	return 0
end

function action_Refresh_Delay(context, evt)
	ScriptLib.PrintContextLog(context,"HM_WoodenStakeChallenge:success time axis in")
	--重置参数
	ScriptLib.SetGroupTempValue(context, "uidListIndex", 0, {})
	ScriptLib.SetGroupTempValue(context, "TimeAxisPlaying", 0, {})
	ScriptLib.SetGroupTempValue(context, "destoryedStakeNum", 0, {})
	--刷新group
	ScriptLib.RefreshGroup(context, { group_id = 0, suite = 1 })
	return 0
end

function action_EVENT_GROUP_LOAD(context, evt)
	--重置记录的被销毁木桩数目
	ScriptLib.SetGroupTempValue(context, "destoryedStakeNum", 0, {})
	--重置记录的玩家数目
	ScriptLib.SetGroupTempValue(context, "uidListIndex", 0, {})
	--重置游玩状态
	ScriptLib.SetGroupTempValue(context, "TimeAxisPlaying", 0, {})
	--清空时间轴
	ScriptLib.EndTimeAxis(context, "WoodenStakeChallenge")
	ScriptLib.EndTimeAxis(context, "RefreshDelay")
	return 0
end

LF_Initialize_Group(triggers, suites)