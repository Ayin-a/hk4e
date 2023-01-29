--ServerUploadTool Save to [/root/env/data/lua/common/V3_4]
--======================================================================================================================
--||   Filename      ||    Activity_SeaLampParkour
--||   RelVersion    ||    V3_4
--||   Owner         ||    shuo-yu
--||   Description   ||    
--||   LogName       ||    ##[Activity_SeaLampParkour]
--||   Protection    ||    
--======================================================================================================================
--Defs & Miscs || 需要LD配置的内容

--[[
local defs = {

	gallery_id = ,

	--开启机关交互后，加载哪个/些suit
	load_on_start = {2},

	--开启机关的configID，SelectOption为175
	starter_gadget = 0,

	--终点region的configID
	end_regionID = 0,

	--玩法RegionID，进入此圈开启性能优化，在suit1
	parkour_regions = {},

	--全程终点在哪个suit,如果这个group非终点，则配0
	end_suite = 0,

	--挑战限时秒
	challenge_time = 300,

	--跑酷金币gadgetID
	gadget_token_id = 70220121,

	--镜头注目
	look_EntityCid = 333004,
	follow_EntityCid = 333004,
}
--]]
--Local Field

local RefData = 
{
	father_challenge_id = 2010050,
	child01_challenge_id = 2010051,
	child02_challenge_id = 2010052,
}

local StartTriggers =
{
	--gallery停止tirgger
    { config_id = 34000010, name = "Gallery_Stop", event = EventType.EVENT_GALLERY_STOP, source = "", condition = "", action = "action_gallery_stop", trigger_count = 0 },
    --挑战操作台创建trigger
    { config_id = 34000020, name = "Gadget_Create", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "", action = "action_gadget_create", trigger_count = 0 },
    --选择操作台选项对应trigger
    { config_id = 34000030, name = "Select_Option", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_select_option", action = "action_select_option", trigger_count = 0 },
    --挑战失败trigger 包括超时、主动关闭、团灭
    { config_id = 34000040, name = "Challenge_Fail", event = EventType.EVENT_CHALLENGE_FAIL, source = "",condition = "", action = "action_challenge_fail", trigger_count= 0 },
    --coin_counter变化时更新gallery计分
    { config_id = 34000050, name = "Coin_Get", event = EventType.EVENT_VARIABLE_CHANGE, source = "coin_counter", condition = "", action = "", trigger_count = 0, tag = "888" },
	--进入玩法region 打标记
    { config_id = 34000060, name = "Enter_Gameplay_Region", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_enter_GameplayRegion", trigger_count = 0 },
    --退出玩法region 挑战开启情况下退出region直接关闭gallery
    { config_id = 34000070, name = "Leave_Gameplay_Region", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "",action = "action_leave_GameplayRegion", trigger_count= 0 },
    --group卸载触发
    { config_id = 34000080, name = "Group_Will_Unload", event = EventType.EVENT_GROUP_WILL_UNLOAD, source = "", condition = "", action = "action_group_will_unload", trigger_count = 0 },
    --进入教程region 弹相关reminderTemplate
    { config_id = 34000090, name = "Enter_Tutorial_Region", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_enter_TutorialRegion", trigger_count = 0 },
}

local EndTriggers = 
{
	--跑酷终点trigger
	{ config_id = 34000091, name = "Enter_Region", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_enter_final", action = "", trigger_count = 0, tag = "666" },
    --挑战成功trigger
    { config_id = 34000092, name = "Challenge_Success", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "", condition = "", action = "action_challenge_success", trigger_count= 0 },
}


--Condition Func
--处理不能开启玩法的情况
function condition_select_option(context, evt)
	--幻梦之门玩法中阻止挑战开启
	if ScriptLib.IsChallengeStartedByChallengeId(context, 267) then
		ScriptLib.ShowReminderByUid(context, {context.uid}, 400046)
		return false
	end
	return true
end
--判断是不是终点圈
function condition_enter_final(context, evt)
	if evt.param1 ~= defs.end_regionID then 
		return false
	end
	return true
end

--Action Func
--进教程范围 弹教程reminder
function action_enter_TutorialRegion(context, evt)

	if defs.guide_regionID == nil then 
		return 0
	elseif evt.param1 == defs.guide_regionID then 
		LF_TryStartTutorial(context)
	end
	return 0
end
--跑酷操作台创建时 加操作台选项
function action_gadget_create(context, evt)

    if defs.starter_gadget ~= evt.param1 then
		return -1	
	end
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, base_info.group_id, defs.starter_gadget, {175}) then
        LF_PrintLog(context, "设置操作台选项失败")
        return -1
    end
	
	return 0
end
--点下选项后 玩法开启 改标记变量 切操作台 加载初始玩法suite 开启环境优化 开启gallery 开启挑战 触发镜头注目
function action_select_option(context, evt)
	--检查SelectOption
	if defs.starter_gadget ~= evt.param1 or 175 ~= evt.param2 then
		return -1	
	end
	--检查是否单机
	if true == ScriptLib.CheckIsInMpMode(context) then
		for k,v in pairs(gadgets) do
			if v.config_id == defs.starter_gadget then
				center = v.pos
				break
			end
		end
        -- 400053:多人游戏状态下无法进行挑战
		ScriptLib.ShowReminderRadius(context, 400053, center, 2) 
		return -1
	end

	--LD用多个Region覆盖赛道范围，这个变量用于判断是否出圈
	ScriptLib.SetGroupTempValue(context, "is_in_region", 0, {})

	--切操作台状态
	ScriptLib.SetGadgetStateByConfigId(context, defs.starter_gadget, GadgetState.GearStart) 
	--去掉操作台SelectOption
	ScriptLib.DelWorktopOptionByGroupId(context, base_info.group_id, defs.starter_gadget, 175) 

	--加载第一波suite
	for k, v in pairs(defs.load_on_start) do
		if 0 == ScriptLib.AddExtraGroupSuite(context, base_info.group_id, v) then 
            LF_PrintLog(context, "加载suite"..v)
        end
	end

	LF_SetEnvOptimize(context,true)

	LF_InitChallenge(context)
	
	-- --开启Gallery
	-- if 0 ~= ScriptLib.StartGallery(context, defs.gallery_id) then 
 --        LF_PrintLog(context, "开启Gallery失败")
 --    else
    	-- local nums = LF_GetCoinsNum()
 --        LF_PrintLog(context, "金币总数-"..nums)
 --        if 0 ~= ScriptLib.UpdatePlayerGalleryScore(context, defs.gallery_id, {["total_coin_count"] = nums}) then
 --            LF_PrintLog(context, "Gallery传金币数量失败")
 --        end
 --    end

    --TODO:镜头注目 
	LF_CameraAction(context)

	return 0

end
--挑战成功 关gallery reason lua设置成功
function action_challenge_success(context,evt)
	if evt.param1 ~= RefData.father_challenge_id then
		return -1
	end

    LF_PrintLog(context, "挑战成功处理")

	LF_StopGamePlayByReason(context, 3)

	return 0
end
--挑战失败 关gallery reason 超时、灭队、主动中断
function action_challenge_fail(context, evt)
	if evt.param1 ~= RefData.father_challenge_id then
		return -1
	end
	--param2 剩余时间
	if evt.param2 <= 0 then 
        -- 超时
		LF_StopGamePlayByReason(context, 1)
	else
        if ScriptLib.IsPlayerAllAvatarDie(context, context.owner_uid) then 
            -- 团灭
            LF_PrintLog(context, "挑战失败-灭队")
            LF_StopGamePlayByReason(context, 8)
        else
            -- 主动中断
            LF_PrintLog(context, "挑战失败-客户端中断/其他")
            LF_StopGamePlayByReason(context, 2)
        end
	end
	
	return 0
end

--进入玩法区域 打标记
function action_enter_GameplayRegion(context, evt)
	--检查Region的configId是否是优化圈
	if LF_CheckIsInTable(context,evt.param1, defs.parkour_regions) then
		--流程未开始时不处理
		if ScriptLib.GetGroupTempValue(context, "is_in_region", {}) == -1 then
			LF_PrintLog(context, "is_in_region not set, group id: "..base_info.group_id)
			return 0
		end

		ScriptLib.ChangeGroupTempValue(context, "is_in_region", 1, {})

		if ScriptLib.GetGroupTempValue(context, "challenge_state", {}) == 1 then
            LF_PrintLog(context, "进入跑酷区域"..evt.param1)
		end
	end

	return 0
end
--退出玩法区域 如果挑战已开 关gallery reason达到次数未成功
function action_leave_GameplayRegion(context,evt)

	--检查Region的configId是否是优化圈
	if LF_CheckIsInTable(context,evt.param1,defs.parkour_regions) then
		--流程未开始时不处理
		if ScriptLib.GetGroupTempValue(context, "is_in_region", {}) == -1 then
			LF_PrintLog(context, "is_in_region not set, group id: "..base_info.group_id)
			return 0
		end

		ScriptLib.ChangeGroupTempValue(context, "is_in_region", -1, {})

		--挑战未开始时不处理
		if ScriptLib.GetGroupTempValue(context, "challenge_state", {}) ~= 1 then
			LF_PrintLog(context, "challenge not start, group id: "..base_info.group_id)
			return 0
		end

        LF_PrintLog(context, "出赛道区域"..evt.param1)

		--如果完全出圈了，触发挑战失败
		local is_in_region = ScriptLib.GetGroupTempValue(context, "is_in_region", {})
		if is_in_region <= 0 then 
			LF_StopGamePlayByReason(context, 4)
		end				
	end
	return 0
end
--group异常卸载停止挑战
function action_group_will_unload(context,evt)

    LF_PrintLog(context, "GROUP UNLOAD GroupID: "..base_info.group_id)
    ScriptLib.StopChallenge(context,1,0)

	return 0
end
--打印停gallery原因
function action_gallery_stop(context, evt)

    LF_PrintLog(context, "GalleryID:"..evt.param1.."终止。原因:"..evt.param3)
   
    return 0
end

--LF Func
--查看是否为table元素
function LF_CheckIsInTable(context, value, check_table)
	for i = 1,#check_table do
		if check_table[i] == value then
			return true
		end
	end
	return false
end
--打印本活动相关Log
function LF_PrintLog(context, content)
	local log = "## [Activity_SeaLampParkour] TD: "..content
	ScriptLib.PrintContextLog(context, log)
end
--玩法trigger、var初始化
function LF_SeaLampParkour_Initialize()

	LF_InsertTriggers(StartTriggers,1)
	LF_InsertTriggers(EndTriggers,defs.end_suite)

	-- Vars
	table.insert(variables, { config_id = 50000001, name = "coin_counter", value = 0})

	return 0
end
--插入trigger 并对table suites做越界保护
function LF_InsertTriggers(TempTrigger,suiteIndex) 
	if suiteIndex <= 0 or suiteIndex > #suites then
		return -1
	end

	for k,v in pairs(TempTrigger) do
        table.insert(triggers,v)
        table.insert(suites[suiteIndex].triggers,v.name)
    end
    return 0
end
--获取关卡配置的金币数目
function LF_GetCoinsNum()
	local count = 0

	for k, v in pairs(gadgets) do
		if v.gadget_id == defs.gadget_token_id then 
			count = count + 1
		end
	end

	return count
end
--重置关卡 变量重置、操作台重置、Group回到默认状态、关闭环境优化
function LF_ResetLevel(context)

	--变量重置 挑战状态以及金币计数
    ScriptLib.SetGroupVariableValue(context, "coin_counter", 0)
    ScriptLib.SetGroupTempValue(context, "challenge_state", 0, {})

    -- 设置操作台为初始待交互状态
    ScriptLib.SetWorktopOptionsByGroupId(context, base_info.group_id, defs.starter_gadget, {175})
    ScriptLib.SetGadgetStateByConfigId(context, defs.starter_gadget, GadgetState.Default)

    for i = 2, #suites do
        ScriptLib.RemoveExtraGroupSuite(context, base_info.group_id, i)
    end

    LF_SetEnvOptimize(context,false)

    ScriptLib.RefreshGroup(context, { group_id = base_info.group_id, suite = 1 })

end
--设置环境优化的开启/关闭
function LF_SetEnvOptimize(context, IsSet)
	--IsSet == true 代表对环境进行优化设置
	if IsSet == true then
		--关闭环境小动物
		ScriptLib.SwitchSceneEnvAnimal(context, 0)

    	ScriptLib.SetPlayerGroupVisionType(context, {context.uid}, {0})
    	--此玩家只能看到0的Group

		ScriptLib.ForbidPlayerRegionVision(context, context.uid)
	else
		--环境小动物恢复
		ScriptLib.SwitchSceneEnvAnimal(context, 2)

		ScriptLib.RevertPlayerRegionVision(context, context.uid)

		ScriptLib.SetPlayerGroupVisionType(context, {context.uid}, {1})
	end

	return 0
end
--设置镜头注目
function LF_CameraAction(context)

	if nil ~= gadgets[defs.look_EntityCid] and nil ~= points[defs.follow_EntityCid] then 

		local pos = gadgets[defs.look_EntityCid].pos
		local camPos = points[defs.follow_EntityCid].pos

		--触发镜头注目，强制注目形式，不广播其他玩家
		ScriptLib.BeginCameraSceneLookWithTemplate(context, 1,
		{look_configid=0, look_pos = pos,  
		follow_type =2, follow_pos = camPos,is_broadcast =false, delay = 0, }) 

	else
		LF_PrintLog(context, "缺少镜头参数 Group: "..base_info.group_id)
	end

	return 0
end
--弹玩法教程templateReminder
function LF_TryStartTutorial(context)

    local ownerUid = context.owner_uid

    if 0 ~= ScriptLib.AssignPlayerShowTemplateReminder(context,158,{param_uid_vec={},param_vec={},uid_vec={context.uid}}) then
        LF_PrintLog(context, "弹教程失败")
    else 
        LF_PrintLog(context, "弹教程成功")
    end

    return 0
end
--初始化玩法挑战
function LF_InitChallenge(context)

	--挑战状态标记
	ScriptLib.SetGroupTempValue(context, "challenge_state", 1, {})

	-- 开父挑战再Attach保序 
	ScriptLib.CreateFatherChallenge(context, 1, RefData.father_challenge_id, defs.challenge_time, {success = 10, fail = 5})
	if 0 == ScriptLib.StartFatherChallenge(context, 1) then 
        LF_PrintLog(context, "开启父挑战成功")
    else 
        LF_PrintLog(context, "开启父挑战失败")
    end
    -- param table：param1-event类型, param2-Tag, param3:次数, param4:达到次数是否success
    -- 限时到达	
	if 0 ~= ScriptLib.AttachChildChallenge(context, 1, 101, RefData.child01_challenge_id, {4, 666, 1, 1}, {}, {success = 10, fail = 5}) then 
        LF_PrintLog(context, "子挑战2010051添加失败")
    end
    -- 收集金币
	if 0 ~= ScriptLib.AttachChildChallenge(context, 1, 102, RefData.child02_challenge_id, {3, 888, LF_GetCoinsNum()}, {}, {success = 0, fail = 0}) then 
        LF_PrintLog(context, "子挑战2010052添加失败")
    end

	return 0
end
--停gallery 发送reason 并重置关卡
function LF_StopGamePlayByReason(context, reason)

 --    LF_PrintLog(context, "Gallery停止 GalleryID: "..defs.gallery_id)
 --    --停Gallery
	-- --Reason 0-NONE 1-超时 2-客户端中断 3-lua设置成功 4-lua设置失败
	-- ScriptLib.StopGalleryByReason(context, defs.gallery_id, reason)
 --    LF_PrintLog(context, "Reason: "..reason)

	LF_ResetLevel(context)
	LF_PrintLog(context, "Level Reset")

	return 0
end

--ServerLuaCall
--金币更新计数 物件复用3.0 slc名称保持与3.0一致
function SLC_Activity_Parkour_PickCoin(context)
    -- 触发挑战trigger
    ScriptLib.ChangeGroupVariableValue(context, "coin_counter", 1)

    -- -- pick_up为拾取类型。0：金币
    -- if 0 ~= ScriptLib.UpdatePlayerGalleryScore(context, defs.gallery_id, {["pick_up"] = 0}) then
    --     LF_PrintLog(context, "Gallery通信失败")
    -- end

	return 0
end

--End Lua
LF_SeaLampParkour_Initialize()