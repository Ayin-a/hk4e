-- gallery+challenge。保持challenge和gallery生命周期同步
-- 挑战无达成目标，只是借用侧边栏
	--钓鱼开启：如果当前没有在挑战，则开Gallery，开挑战
	--挑战倒计时结束：关Gallery，停止钓鱼
	--另外处理Gallery意外先结束，同步退出钓鱼-停挑战

-- local defs = {

--	--对应GalleryID
-- 	gallery_id = 11001,

--	--GroupID
--	group_id = 100000000,

--	--挑战方式 0-指定ID的鱼钓起计数 1-记录指定ID的鱼最大连续成功数
-- 	fishing_type = 0,

--	--这个Group对应的挑战ID
-- 	challenge_id = 0,

--	--本挑战中，算作计数目标的鱼IDs 鱼ID在FishData表
-- 	target_fish_id = 
--	{1,2,3,4,5},

-- }

--2021.7.14迭代：部分挑战时长改为2分钟，其余为3分钟
local shortChallenges = {
	111178,
	111180
}
local extraTriggers = {
	--检测挑战结束了的情况
	{ name = "challenge_success", config_id = 8000001, event = EventType.EVENT_CHALLENGE_SUCCESS, source = "", condition = "", action = "action_challenge_success", trigger_count = 0},
	{ name = "challenge_fail", config_id = 8000002, event = EventType.EVENT_CHALLENGE_FAIL, source = "", condition = "", action = "action_challenge_fail", trigger_count = 0},
	--Gallery结束时关挑战
	{ name = "gallery_stop", config_id = 800003, event = EventType.EVENT_GALLERY_STOP, source = "", condition = "", action = "action_gallery_stop", trigger_count = 0},
	--钓鱼开始开Gallery，开挑战
	{ name = "fishing_start", config_id = 8000004, event = EventType.EVENT_FISHING_START, source = "", condition = "", action = "action_fishing_start", trigger_count = 0},

	{ name = "fishing_timeout_flee", config_id = 8000005, event = EventType.EVENT_FISHING_TIMEOUT_FLEE, source = "", condition = "", action = "action_fishing_timeout_flee", trigger_count = 0},
	{ name = "fishing_qte_finish", config_id = 8000006, event = EventType.EVENT_FISHING_QTE_FINISH, source = "", condition = "", action = "action_fishing_qte_finish", trigger_count = 0},	
	{ name = "fishing_score_change", config_id = 8000007, event = EventType.EVENT_VARIABLE_CHANGE, source = "challenge_score", condition = "", action = "", trigger_count = 0, tag = "1000"}, 
	{ name = "leave_region", config_id = 8000008, event = EventType.EVENT_LEAVE_REGION, source = "", condition = "", action = "action_leave_region", trigger_count = 0}
}

function Initialize()
	for i,v in ipairs(extraTriggers) do
		table.insert(triggers, v)
		table.insert(suites[init_config.suite].triggers, v.name)
	end
	--挑战计数进度
	table.insert(variables,{ config_id=50000001,name = "challenge_score", value = 0})

	return 0
end

function action_fishing_start(context, evt)
	ScriptLib.PrintContextLog(context, "[fishing] action_fishing_start.")
	if  ScriptLib.GetGroupTempValue(context, "fishing_state", {}) == 0 then

		local timeLimit = 180 --默认挑战时长

		--重置计分
		ScriptLib.SetGroupTempValue(context, "tempScore", 0, {})
		ScriptLib.SetGroupTempValue(context, "tempUnmissScore", 0, {})

		--设置uid
		ScriptLib.SetGroupTempValue(context,"fisher_uid", context.uid, {})

		--设置挑战状态标记
		ScriptLib.SetGroupTempValue(context, "fishing_state", 1, {})

		--开启钓鱼活动Gallery
		ScriptLib.PrintContextLog(context, "[fishing] Starting Gallery @"..defs.gallery_id)
		ScriptLib.StartGallery(context, defs.gallery_id)
		ScriptLib.SetGroupTempValue(context,"gallery_state", 1, {})

		--开启挑战
		ScriptLib.PrintContextLog(context, "[fishing] Starting Challenge ChallengeID@"..defs.challenge_id.." GroupID@"..defs.group_id)

		if CheckIsInTable(context, defs.challenge_id, shortChallenges) then
			timeLimit = 120
		end
		----ScriptLib.ActiveChallenge(context,创建的区域挑战的识别id,DungeonChallengeData里的id,限定的时间,Event_Type所在枚举的序号,Trigger的tag字段值,触发几次)
		ScriptLib.ActiveChallenge(context,defs.challenge_id, defs.challenge_id, timeLimit, 3, 1000, 999)
		ScriptLib.SetGroupTempValue(context,"challenge_state", 1, {})
	end
	return 0
end

--处理Gallery万一比挑战先结束
function action_gallery_stop(context, evt)
	ScriptLib.SetGroupTempValue(context, "gallery_state", 0, {})
	--正常应该Gallery结束控制Challenge结束
	if  ScriptLib.GetGroupTempValue(context, "fishing_state", {}) == 1 then
		
		--设置挑战状态标记
		ScriptLib.SetGroupTempValue(context, "fishing_state", 0, {})

		if  ScriptLib.GetGroupTempValue(context, "challenge_state", {}) == 1 then 
			--停挑战
			ScriptLib.StopChallenge(context, defs.challenge_id, 1)
		end

		--退出钓鱼
		local fisher_uid = ScriptLib.GetGroupTempValue(context, "fisher_uid", {})
		ScriptLib.PrintContextLog(context, "[fishing] Gallery stopped while fishing. StopFishing UID@"..fisher_uid)
		ScriptLib.StopFishing(context,fisher_uid)
	end
	return 0
end

--处理挑战结束
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

--兜底，处理挑战万一以成功结束
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
		if defs.fishing_type == 1 then
		--单轮计数重置
			ScriptLib.SetGroupTempValue(context,"tempScore", 0, {})
		end	
	--end
	return 0
end

--每次退出钓鱼QTE状态时触发 
	--evt.param1 鱼id
	--evt.param2 0-失败 1-成功
	--evt.param3 0-未进包（即背包满/到达活动要求的获取上限）1-进包
	--evt.param4 本次QTE中，bonus最长持续时间
function action_fishing_qte_finish(context, evt)
	local target_fish = evt.param1
	local score = 0
	local fishing_score = {}
	ScriptLib.PrintContextLog(context, "[fishing] fishing_qte_finish. target_fish is @"..target_fish.." is_Free @".. evt.param3)
------计分模式0：钓鱼成功直接计数
	if defs.fishing_type == 0 then
		--若成功钓起
		if evt.param2 == 1 then
			--如果是目标鱼，加分
			if CheckIsInTable(context,target_fish,defs.target_fish_id) then					
				--单局计数+1
				ScriptLib.ChangeGroupTempValue(context, "tempScore", 1, {})

				--["fishing_score"]:{钓鱼个数, 最大连续数, 最大Bonus时长} 单目标挑战传单元素就行
				score = ScriptLib.GetGroupTempValue(context, "tempScore", {})
				fishing_score = {score}
				--触发挑战计数Trigger
				ScriptLib.SetGroupVariableValue(context, "challenge_score", score)
				
			--如果不是目标鱼，不加分，但还是要UpdateGallery，非目标鱼也要算上
			else
				score = ScriptLib.GetGroupTempValue(context, "tempScore", {})
				fishing_score = {score}
			end
			--处理是否放生
			local is_free = false
			if evt.param3 ~= 1 then 
				is_free = true
			end
			--更新Gallery分数
			ScriptLib.UpdatePlayerGalleryScore(context, defs.gallery_id, {["fishing_score"] = fishing_score, ["fish_id"] = evt.param1, ["is_free"] = is_free})
		end
		return 0
	end
------计分模式1：记录最大连续成功数
	if defs.fishing_type == 1 then
 		--若成功钓起...
		if evt.param2 == 1 then

			--单局计数+1
			ScriptLib.ChangeGroupTempValue(context, "tempScore", 1, {})

			local tempUnmissScore = ScriptLib.GetGroupTempValue(context, "tempUnmissScore", {})
			local tempScore = ScriptLib.GetGroupTempValue(context, "tempScore", {})

			--检查是不是该刷新最大连续记录		
			if tempUnmissScore < tempScore then
				--若是，则连续挑战计分更新
				ScriptLib.SetGroupTempValue(context,"tempUnmissScore", tempScore, {})

				--触发挑战计数Trigger
				ScriptLib.SetGroupVariableValue(context, "challenge_score", score)
			end

			--更新Gallery分数
			--["fishing_score"]:{钓鱼个数, 最大连续数, 最大Bonus时长} 单目标挑战传单元素就行
			local score = ScriptLib.GetGroupTempValue(context, "tempUnmissScore", {})
			fishing_score = {score}
			local is_free = false
			if evt.param3 ~= 1 then 
				is_free = true
			end
			ScriptLib.UpdatePlayerGalleryScore(context, defs.gallery_id, {["fishing_score"] = fishing_score, ["fish_id"] = evt.param1, ["is_free"] =is_free})
		--若失败逃逸..
		else
			ScriptLib.PrintContextLog(context, "[fishing] Type 1: tempScore reset")
			--单轮计数重置
			ScriptLib.SetGroupTempValue(context,"tempScore", 0, {})
		end
		return 0
	end
	return 0
end

function action_leave_region(context, evt)

	if  ScriptLib.GetGroupTempValue(context, "fishing_state", {}) == 1 then
		
		--设置挑战状态标记
		ScriptLib.SetGroupTempValue(context, "fishing_state", 0, {})

		--停挑战
		if  ScriptLib.GetGroupTempValue(context, "challenge_state", {}) == 1 then 
			
			ScriptLib.StopChallenge(context, defs.challenge_id, 1)
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


--用于检查value是否在目标table中
function CheckIsInTable(context,value,table)

	for k, v in pairs(table) do
		if v == value then
			return true
		end
	end
	return false
end

Initialize()
