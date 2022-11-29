--[[======================================
||	filename:       Activity_Parkour
||	owner:          chao.cui
||	description:    3.0大活动-跑酷
||	LogName:        TD
||	Protection:     ???
=======================================]]

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


	--镜头注目
	look_pos = {x=555, y=555, z=555},
	duration = 2,
}
]]--

local global =
{
    father_challengeID = 2010050,
    total_coin_count = 0,
}

local triggers_start = 
{
	--测试用
	--{ config_id = 8000000, name = "Test_GM",  event = EventType.EVENT_VARIABLE_CHANGE, source = "testGM", condition = "", action = "", trigger_count = 0, tag = "100"},
    { config_id = 41000001, name = "Gallery_Stop", event = EventType.EVENT_GALLERY_STOP, source = "", condition = "", action = "action_gallery_stop", trigger_count = 0 },

    { config_id = 40000000, name = "Gadget_Create", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "", action = "action_gadget_create", trigger_count = 0 },

    { config_id = 40000001, name = "Select_Option", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_select_option", action = "action_select_option", trigger_count = 0 },
    { config_id = 40000002, name = "Challenge_Fail", event = EventType.EVENT_CHALLENGE_FAIL, source = "",condition = "", action = "action_challenge_fail", trigger_count= 0 },
    { config_id = 40000003, name = "Coin_Get", event = EventType.EVENT_VARIABLE_CHANGE, source = "coin_counter", condition = "", action = "", trigger_count = 0, tag = "888" },
    --{ config_id = 8000004, name = "Spec_Coin_Get",  event = EventType.EVENT_VARIABLE_CHANGE, source = "spec_coin_counter", condition = "", action = "", trigger_count = 0, tag = "999"},
        --玩法RegionID，进入此圈开启性能优化，放在load_on_start第一个suit里
    { config_id = 40000005, name = "Enter_Optimiz_Region", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_enter_OptimizRegion", trigger_count = 0 },
    { config_id = 40000006, name = "Leave_Optimiz_Region", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "",action = "action_leave_OptimizRegion", trigger_count= 0 },
    { config_id = 40000007, name = "Group_Will_Unload", event = EventType.EVENT_GROUP_WILL_UNLOAD, source = "", condition = "", action = "action_group_will_unload", trigger_count = 0 },
    { config_id = 40000008, name = "Enter_Tutorial_Region", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_enter_TutorialRegion", trigger_count = 0 },
}

local triggers_end = 
{
 	--终点的trigger
    { config_id = 40000009, name = "Enter_Region", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_enter_final", action = "", trigger_count = 0, tag = "666" },
    { config_id = 40000010, name = "Challenge_Success", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "", condition = "", action = "action_challenge_success", trigger_count= 0 },
}

---------- Basic Functions -------------
-- 打印日志
function PrintLog(context, content)
	local log = "## [Activity_Parkour] TD: "..content
	ScriptLib.PrintContextLog(context, log)
end

--用于检查value是否在目标table中
function CheckIsInTable(context, value, check_table)
	for i = 1,#check_table do
		if check_table[i] == value then
			return true
		end
	end
	return false
end

--------- Local Functions -----------
function LF_Initialize_Group(triggers, suites)
	--起点用触发器
	for k,v in pairs(triggers_start) do
		table.insert(triggers, v)
		table.insert(suites[1].triggers, v.name)
	end

	--全程结尾触发器
	for k,v in pairs(triggers_end) do
		table.insert(triggers, v)
		table.insert(suites[defs.end_suite].triggers, v.name)
	end

    -- Vars
	table.insert(variables, { config_id = 50000001, name = "coin_counter", value = 0})
	--table.insert(variables,{ config_id=50000002,name = "spec_coin_counter", value = 0})

    LF_Calculate_Coin_Num()

	return 0
end

-- 统计关卡的金币总数
function LF_Calculate_Coin_Num()
    local sum = 0
    for _, gadgetInfo in pairs(gadgets) do
        if gadgetInfo.gadget_id == 70220121 then 
            sum = sum + 1
        end
    end
    global.total_coin_count = sum
end

function LF_InitChallenge(context)

	--挑战状态标记
	ScriptLib.SetGroupTempValue(context, "challenge_state", 1, {})

	-- 开父挑战再Attach保序 
	ScriptLib.CreateFatherChallenge(context, 1, global.father_challengeID, defs.challenge_time, {success = 10, fail = 5})
	if 0 == ScriptLib.StartFatherChallenge(context, 1) then 
        --PrintLog(context, "开启父挑战成功")
    else 
        PrintLog(context, "开启父挑战失败")
    end
    -- param table：param1-event类型, param2-Tag, param3:次数, param4:达到次数是否success
    -- 限时到达	
	if 0 ~= ScriptLib.AttachChildChallenge(context, 1, 101, 2010051, {4, 666, 1, 1}, {}, {success = 10, fail = 5}) then 
        PrintLog(context, "子挑战2010051添加失败")
    end
    -- 收集金币
	if 0 ~= ScriptLib.AttachChildChallenge(context, 1, 102, 2010052, {3, 888, 999}, {}, {success = 0, fail = 0}) then 
        PrintLog(context, "子挑战2010052添加失败")
    end

	return 0
end

function LF_Try_StartTutorial(context)

    --local ownerUid = context.owner_uid

    if 0 ~= ScriptLib.AssignPlayerShowTemplateReminder(context,192,{param_uid_vec={},param_vec={},uid_vec={context.uid}}) then
        PrintLog(context, "弹教程失败")
    else 
        PrintLog(context, "弹教程成功")
    end

    return 0
end

function LF_FailChallenge(context, reason)

    PrintLog(context, "挑战失败处理")
    --停Gallery
	--Reason 0-NONE 1-超时 2-客户端中断 3-lua设置成功 4-lua设置失败
	ScriptLib.StopGalleryByReason(context, defs.gallery_id, reason)

    LF_Reset_Level(context)

	return 0
end

function LF_RevertVisionType(context)
	local uidList = ScriptLib.GetSceneUidList(context)
	for k, v in pairs(uidList) do
        if 0 == ScriptLib.RevertPlayerRegionVision(context, v) then 
            PrintLog(context, "Revert Vision成功"..v)
        end
        if 0 ~= ScriptLib.SetPlayerGroupVisionType(context, {v}, {1}) then
            PrintLog(context, "设置VisionType失败"..v)
        end
	end
	return 0
end

function CameraAction(context)

	if defs.look_pos and defs.duration then 

		--触发镜头注目，强制注目形式，不广播其他玩家
		local pos_follow = {x=0, y=0, z=0}
		ScriptLib.BeginCameraSceneLook(context, { look_pos = defs.look_pos, is_allow_input = false, duration = defs.duration, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                            is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                            is_set_screen_XY = false, screen_x = 0, screen_y = 0 })
		return 0
	else
		PrintLog(context, "缺少镜头参数")
	end
	return 0
end

function LF_Reset_Level(context)
    
    --重置变量
    ScriptLib.SetGroupVariableValue(context, "coin_counter", 0)
    ScriptLib.SetGroupTempValue(context, "challenge_state", 0, {})

    -- 设置操作台
    ScriptLib.SetWorktopOptionsByGroupId(context, base_info.group_id, defs.starter_gadget, {175})
    ScriptLib.SetGadgetStateByConfigId(context, defs.starter_gadget, GadgetState.Default)

    for i = 2, #suites do
        ScriptLib.RemoveExtraGroupSuite(context, base_info.group_id, i)
    end

    --环境小动物恢复
    ScriptLib.SwitchSceneEnvAnimal(context, 2)

    LF_RevertVisionType(context)

    ScriptLib.RefreshGroup(context, { group_id = base_info.group_id, suite = 1 })
end

--------- Server Lua Call -----------

function SLC_Activity_Parkour_PickCoin(context)
    -- 触发挑战trigger
    ScriptLib.ChangeGroupVariableValue(context, "coin_counter", 1)

    -- pick_up为拾取类型。0：金币
    if 0 ~= ScriptLib.UpdatePlayerGalleryScore(context, defs.gallery_id, {["pick_up"] = 0}) then
        PrintLog(context, "Gallery通信失败")
    end

	return 0
end

---------- Triggers -----------
function action_gallery_stop(context, evt)
    -- TEST
    PrintLog(context, "GalleryID:"..evt.param1.."终止。原因:"..evt.param3)
    --环境小动物恢复
	ScriptLib.SwitchSceneEnvAnimal(context, 2)
	--VisionType恢复
	LF_RevertVisionType(context)
    return 0
end

function action_enter_TutorialRegion(context, evt)

	if defs.guide_regionID == nil then 
		return 0
	elseif evt.param1 == defs.guide_regionID then 
		LF_Try_StartTutorial(context)
	end
	return 0
end

function action_gadget_create(context, evt)

    if defs.starter_gadget ~= evt.param1 then
		return -1	
	end
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, base_info.group_id, defs.starter_gadget, {175}) then
        PrintLog(context, "设置操作台选项失败")
        return -1
    end
	
	return 0
end

function condition_select_option(context, evt)
	--幻梦之门玩法中阻止挑战开启
	if ScriptLib.IsChallengeStartedByChallengeId(context, 267) then
		ScriptLib.ShowReminderByUid(context, {context.uid}, 400046)
		return false
	end
	return true
end

--机关开启处理
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
            PrintLog(context, "加载suite"..v)
        end
	end


	--环境小动物关闭
	ScriptLib.SwitchSceneEnvAnimal(context, 0)

    -- VISION TYPE
    ScriptLib.SetPlayerGroupVisionType(context, {context.uid}, {0})
	-- if base_info.group_id == 133008671 then 
	-- 	ScriptLib.SetPlayerGroupVisionType(context, {context.uid}, {0,3})
    -- end

	ScriptLib.ForbidPlayerRegionVision(context, context.uid)

	LF_InitChallenge(context)
	
	--开启Gallery
	if 0 ~= ScriptLib.StartGallery(context, defs.gallery_id) then 
        PrintLog(context, "开启Gallery失败")
    else
        PrintLog(context, "金币总数-"..global.total_coin_count)
        if 0 ~= ScriptLib.UpdatePlayerGalleryScore(context, defs.gallery_id, {["total_coin_count"] = global.total_coin_count}) then
            PrintLog(context, "Gallery传金币数量失败")
        end
    end

    --TODO:镜头注目 
	CameraAction(context)

	return 0

end

function action_challenge_success(context,evt)
	if evt.param1 ~= global.father_challengeID then
		return -1
	end

    PrintLog(context, "挑战成功处理")
    --停Gallery
	--Reason 0-NONE 1-超时 2-客户端中断 3-lua设置成功 4-lua设置失败
	ScriptLib.StopGalleryByReason(context, defs.gallery_id, 3)

    LF_Reset_Level(context)

	-- -- 终点kill特效
	-- ScriptLib.KillEntityByConfigId(context, { group_id = base_info.group_id, config_id = defs.end_gadget, entity_type = EntityType.GADGET })

    -- -- Remove所有关卡suite
	-- for i = 2, (#suites-1) do
	--     ScriptLib.RemoveExtraGroupSuite(context, base_info.group_id, i)
	-- end

	return 0
end

function action_challenge_fail(context, evt)
	
	--param2 剩余时间
	if evt.param2 <= 0 then 
        -- 超时
		LF_FailChallenge(context, 1)
	else
        if ScriptLib.IsPlayerAllAvatarDie(context, context.owner_uid) then 
            -- 团灭
            PrintLog(context, "挑战失败-灭队")
            LF_FailChallenge(context, 8)
        else
            -- 主动中断
            PrintLog(context, "挑战失败-客户端中断/其他")
            LF_FailChallenge(context, 2)
        end
	end
	
	return 0
end


function action_enter_OptimizRegion(context, evt)
	--检查Region的configId是否是优化圈
	if CheckIsInTable(context,evt.param1, defs.parkour_regions) then

		ScriptLib.ChangeGroupTempValue(context, "is_in_region", 1, {})

		if ScriptLib.GetGroupTempValue(context, "challenge_state", {}) == 1 then
            PrintLog(context, "进入跑酷区域"..evt.param1)
		end
	end

	return 0
end

function action_leave_OptimizRegion(context,evt)

	--检查Region的configId是否是优化圈
	if CheckIsInTable(context,evt.param1,defs.parkour_regions) then

		ScriptLib.ChangeGroupTempValue(context, "is_in_region", -1, {})

		if ScriptLib.GetGroupTempValue(context, "challenge_state", {}) ~= 1 then
			return 0
		end

        PrintLog(context, "出赛道区域"..evt.param1)

		--如果完全出圈了，触发挑战失败
		local is_in_region = ScriptLib.GetGroupTempValue(context, "is_in_region", {})
		if is_in_region <= 0 then 
			LF_FailChallenge(context, 4)
		end				
	end
	return 0
end

--终点检查
function condition_enter_final(context, evt)
	if evt.param1 ~= defs.end_regionID then 
		return false
	end
	return true
end

--卸载保护
function action_group_will_unload(context,evt)


    PrintLog(context, "GROUP UNLOAD.")

	return 0
end



LF_Initialize_Group(triggers, suites)