-- gallery+challenge。保持challenge和gallery生命周期同步
-- 挑战无达成目标，只是借用侧边栏
	--钓鱼开启：如果当前没有在挑战，则开Gallery，开挑战
	--挑战倒计时结束：关Gallery，停止钓鱼
	--另外处理Gallery意外先结束，同步退出钓鱼-停挑战

-- local defs = {

--	--GroupID
--	group_id = 100000000,
--	--对应的GalleryID
--	gallery_id = 11005,
    ---本挑战中，算作计数目标的鱼IDs 鱼ID在FishData表
--  target_fish_id = 19

-- }

local cfg = {

	--父挑战ID
	father_id = 111181,
	--子挑战ID - 钓鱼总数
	child_total = 111186,
	--子挑战ID - 连续
	child_unmiss= 111187,
	--子挑战ID - 尽量呆在Bonus区域
	child_bonus= 111188

}

local extraTriggers = {
	--检测挑战结束
	{ name = "challenge_success", config_id = 8000001, event = EventType.EVENT_CHALLENGE_SUCCESS, source = "", condition = "", action = "action_challenge_success", trigger_count = 0},
	{ name = "challenge_fail", config_id = 8000002, event = EventType.EVENT_CHALLENGE_FAIL, source = "", condition = "", action = "action_challenge_fail", trigger_count = 0},
	--Gallery结束时关挑战
	{ name = "gallery_stop", config_id = 800003, event = EventType.EVENT_GALLERY_STOP, source = "", condition = "", action = "action_gallery_stop", trigger_count = 0},
	--钓鱼开始开Gallery，开挑战
	{ name = "fishing_start", config_id = 8000004, event = EventType.EVENT_FISHING_START, source = "", condition = "", action = "action_fishing_start", trigger_count = 0},

	{ name = "fishing_qte_finish", config_id = 8000005, event = EventType.EVENT_FISHING_QTE_FINISH, source = "", condition = "", action = "action_fishing_qte_finish", trigger_count = 0},
	{ name = "fishing_timeout_flee", config_id = 8000010, event = EventType.EVENT_FISHING_TIMEOUT_FLEE, source = "", condition = "", action = "action_fishing_timeout_flee", trigger_count = 0},
	--挑战计数用Trigger
	{ name = "score_change_total", config_id = 8000006, event = EventType.EVENT_VARIABLE_CHANGE, source = "score_total", condition = "", action = "", trigger_count = 0, tag = "1000"},
	{ name = "score_change_unmiss", config_id = 8000007, event = EventType.EVENT_VARIABLE_CHANGE, source = "score_unmiss", condition = "", action = "", trigger_count = 0, tag = "1001"},
	{ name = "score_change_bonus", config_id = 8000008, event = EventType.EVENT_VARIABLE_CHANGE, source = "bonus_time", condition = "", action = "", trigger_count = 0, tag = "1002"},
	{ name = "leave_region", config_id = 8000009, event = EventType.EVENT_LEAVE_REGION, source = "", condition = "", action = "action_leave_region", trigger_count = 0}
}

function Initialize()
	for i,v in ipairs(extraTriggers) do
		table.insert(triggers, v)
		table.insert(suites[init_config.suite].triggers, v.name)
	end
	--挑战计数进度-总数
	table.insert(variables,{ config_id=50000001,name = "score_total", value = 0})
	--挑战计数进度-连续上钩
	table.insert(variables,{ config_id=50000002,name = "score_unmiss", value = 0})
	--挑战计数进度-最大Bonus时长
	table.insert(variables,{ config_id=50000003,name = "bonus_time", value = 0})

	--隐藏任务用标志 0-未满足任务条件 1-已满足条件，可触发任务
		--这个标志不做no_refresh，因为任务那边希望每次都触发
	table.insert(variables,{ config_id=50000004,name = "quest_mark", value = 0})

	return 0
end

function action_fishing_start(context, evt)
	ScriptLib.PrintContextLog(context, "[fishing] action_fishing_start")
	--检查钓鱼状态标记
	if  ScriptLib.GetGroupTempValue(context, "fishing_state", {}) == 0 then
		--重置计分
		ScriptLib.SetGroupTempValue(context, "tempScore", 0, {})--连续成功计数器
		ScriptLib.SetGroupTempValue(context, "tempUnmissScore", 0, {})--最大连续成功数
		ScriptLib.SetGroupTempValue(context, "bonusTime", 0, {})--最大Bonus时长
		ScriptLib.SetGroupTempValue(context, "totalCount", 0, {}) --钓起目标鱼总数

		--设置uid
		ScriptLib.SetGroupTempValue(context,"fisher_uid", context.uid, {})

		--设置挑战状态标记
		ScriptLib.SetGroupTempValue(context, "fishing_state", 1, {})

		--开启钓鱼活动Gallery
		ScriptLib.PrintContextLog(context, "[fishing] Starting Gallery @"..defs.gallery_id)
		ScriptLib.StartGallery(context, defs.gallery_id)
		ScriptLib.SetGroupTempValue(context,"gallery_state", 1, {})

		--组合挑战
		ScriptLib.PrintContextLog(context, "[fishing] Creating Challenge Father ID@"..cfg.father_id)
		--创建父挑战
		ScriptLib.CreateFatherChallenge(context, cfg.father_id, cfg.father_id, 180, {success=1, fail=1})
		ScriptLib.StartFatherChallenge(context, cfg.father_id)

		--添加子挑战-总数cfg.child_total
		ScriptLib.AttachChildChallenge(context,cfg.father_id,cfg.child_total,cfg.child_total, {3,1000,99}, {context.uid},{success=1, fail=1})
		--添加子挑战-连续cfg.child_unmiss
		ScriptLib.AttachChildChallenge(context,cfg.father_id,cfg.child_unmiss,cfg.child_unmiss, {3,1001,99}, {context.uid},{success=1, fail=1})
		--添加子挑战-bonus cfg.child_bonus
		ScriptLib.AttachChildChallenge(context,cfg.father_id,cfg.child_bonus,cfg.child_bonus, {3,1002,99}, {context.uid},{success=1, fail=1})

		
		ScriptLib.SetGroupTempValue(context,"challenge_state", 1, {})
	end
	return 0
end

--处理Gallery结束
function action_gallery_stop(context, evt)
	ScriptLib.SetGroupTempValue(context, "gallery_state", 0, {})
	--检查是否要触发隐藏任务
	if ScriptLib.GetGroupVariableValue(context, "quest_mark") == 1 then
		--ScriptLib.SetGroupVariableValue(context, "quest_mark", 2)
		ScriptLib.AddQuestProgress(context, "7266801")
	end

	if  ScriptLib.GetGroupTempValue(context, "fishing_state", {}) == 1 then
		
		--设置挑战状态标记
		ScriptLib.SetGroupTempValue(context, "fishing_state", 0, {})

		if  ScriptLib.GetGroupTempValue(context, "challenge_state", {}) == 1 then 
			--停挑战
			ScriptLib.EndFatherChallenge(context, cfg.father_id)
		end

		--退出钓鱼
		local fisher_uid = ScriptLib.GetGroupTempValue(context, "fisher_uid", {})

		ScriptLib.StopFishing(context,fisher_uid)
	end
	return 0
end

--处理挑战自己失败结束
function action_challenge_fail(context, evt)
	ScriptLib.SetGroupTempValue(context, "challenge_state", 0, {})
	if  ScriptLib.GetGroupTempValue(context, "fishing_state", {}) == 1 then
		
		--设置挑战状态标记
		ScriptLib.SetGroupTempValue(context, "fishing_state", 0, {})

		--停止Gallery false失败 true成功。这里需要填false
		if ScriptLib.GetGroupTempValue(context, "gallery_state", {}) == 1 then 
			ScriptLib.StopGallery(context, defs.gallery_id, false)
			ScriptLib.PrintContextLog(context, "[fishing] Gallery stopped by challenge end.")
		end

		--退出钓鱼
		local fisher_uid = ScriptLib.GetGroupTempValue(context, "fisher_uid", {})

		ScriptLib.StopFishing(context,fisher_uid)
	end
	return 0
end

--处理挑战万一成功结束
function action_challenge_success(context, evt)
	ScriptLib.SetGroupTempValue(context, "challenge_state", 0, {})
	if  ScriptLib.GetGroupTempValue(context, "fishing_state", {}) == 1 then
		
		--设置挑战状态标记
		ScriptLib.SetGroupTempValue(context, "fishing_state", 0, {})

		--停止Gallery false失败 true成功
		if ScriptLib.GetGroupTempValue(context, "gallery_state", {}) == 1 then 
			ScriptLib.StopGallery(context, defs.gallery_id, false)
		end

		--退出钓鱼
		local fisher_uid = ScriptLib.GetGroupTempValue(context, "fisher_uid", {})

		ScriptLib.StopFishing(context,fisher_uid)
	end
	return 0
end

--如果触发了超时逃走，直接按一次QTE失败处理
function action_fishing_timeout_flee(context, evt)
	--if  ScriptLib.GetGroupTempValue(context, "fishing_state", {}) == 1 then
		ScriptLib.PrintContextLog(context, "[fishing] action_fishing_timeout_flee.")
		--单轮计数重置
		ScriptLib.SetGroupTempValue(context,"tempScore", 0, {})
	--end
	return 0
end
--每次退出钓鱼QTE状态时触发 
	--evt.param1 鱼id
	--evt.param2 0-失败 1-成功
	--evt.param3 0-未进包（即背包满/到达活动要求的获取上限）1-进包
	--evt.param4 本次QTE中，bonus最长持续时间
function action_fishing_qte_finish(context, evt)

	--QTE失败/钓到其他鱼 都算打断连续记录
	--若成功钓起
	if evt.param2 == 1 then
		--拿到当前连续成功数
		local tempScore = ScriptLib.GetGroupTempValue(context, "tempScore", {})
		local tempUnmissScore = ScriptLib.GetGroupTempValue(context, "tempUnmissScore", {})
		--看是不是目标鱼
		if evt.param1 == defs.target_fish_id then

			---------处理隐藏任务
			if ScriptLib.GetGroupVariableValue(context, "quest_mark") == 0 then
				ScriptLib.SetGroupVariableValue(context, "quest_mark", 1)
			end

			---------处理总数
			--单局计数+1
			ScriptLib.ChangeGroupTempValue(context, "totalCount", 1, {})
			ScriptLib.ChangeGroupTempValue(context, "tempScore", 1, {})		

			tempScore = ScriptLib.GetGroupTempValue(context, "tempScore", {})
			
			--触发总数挑战的计数Trigger
			ScriptLib.SetGroupVariableValue(context, "score_total", tempScore)

			--------处理连续成功
			
			--检查是不是该刷新最大连续记录		
			if tempUnmissScore < tempScore then
				--若是，则连续挑战计分更新
				ScriptLib.SetGroupTempValue(context,"tempUnmissScore", tempScore, {})
				--触发连续成功挑战计数Trigger
				ScriptLib.SetGroupVariableValue(context, "score_unmiss", tempScore)
				
			end

			--------处理Bonus时间
			
			--检查是不是该刷新最大bonus时间记录,evt里发过来是整数，还是取一下floor保险
			ScriptLib.PrintContextLog(context, "This BonusTime@"..evt.param4)
			local diff = 0
			--不大于180秒，正常算差
			if evt.param4 <= 180 then	
				diff = math.floor(evt.param4 - ScriptLib.GetGroupTempValue(context, "bonusTime", {}))
			--大于180秒，按180秒算差
			else
				diff = math.floor(180 - ScriptLib.GetGroupTempValue(context, "bonusTime", {}))
			end
			--差值是几，就触发几次Trigger
			if diff > 0 then
				ScriptLib.SetGroupTempValue(context,"bonusTime", evt.param4, {})				
				UpdateBonusTimeForChallenge(context,diff)
			end
		--如果不是目标鱼，也要更新Gallery
		else			
			--单轮计数重置
			ScriptLib.SetGroupTempValue(context,"tempScore", 0, {})

		end

		--------更新Gallery分数
		--["fishing_score"]:{钓鱼个数, 最大连续数, 最大Bonus时长} 单目标挑战传单元素就行
		tempUnmissScore = ScriptLib.GetGroupTempValue(context, "tempUnmissScore", {})
		local totalCount = ScriptLib.GetGroupTempValue(context, "totalCount", {})
		local bonusTime = ScriptLib.GetGroupTempValue(context, "bonusTime", {})
		local fishing_score = {totalCount, tempUnmissScore, bonusTime}

		local is_free = false
		if evt.param3 ~= 1 then 
			is_free = true
		end
		ScriptLib.UpdatePlayerGalleryScore(context, defs.gallery_id, {["fishing_score"] = fishing_score, ["fish_id"] = evt.param1, ["is_free"] = is_free})
		ScriptLib.PrintContextLog(context, "[fishing] Gallery Score updated. score_total@"..totalCount.." score_unmiss@"..tempUnmissScore.." MaxBounesTime@"..bonusTime)
	--若失败逃逸
	else
		ScriptLib.PrintContextLog(context, "[fishing] Moonfin: tempScore reset")
		--单轮计数重置
		ScriptLib.SetGroupTempValue(context,"tempScore", 0, {})
	end

	return 0
end

function UpdateBonusTimeForChallenge(context, count)
	for i = 1, count do
		ScriptLib.ChangeGroupVariableValue(context, "bonus_time", 1)
	end
	return 0
end


function action_leave_region(context, evt)

	if  ScriptLib.GetGroupTempValue(context, "fishing_state", {}) == 1 then
		
		--设置挑战状态标记
		ScriptLib.SetGroupTempValue(context, "fishing_state", 0, {})

		--停挑战
		if  ScriptLib.GetGroupTempValue(context, "challenge_state", {}) == 1 then 
			--停挑战
			ScriptLib.EndFatherChallenge(context, cfg.father_id)
		end

		--停Gallery false失败 true成功
		if ScriptLib.GetGroupTempValue(context, "gallery_state", {}) == 1 then 
			ScriptLib.StopGallery(context, defs.gallery_id, false)
		end

		--退出钓鱼
		local fisher_uid = ScriptLib.GetGroupTempValue(context, "fisher_uid", {})
		ScriptLib.PrintContextLog(context, "[fishing] Leave challenge region. StopFishing UID@"..fisher_uid)
		ScriptLib.StopFishing(context,fisher_uid)
	end
	return 0
end

Initialize()
