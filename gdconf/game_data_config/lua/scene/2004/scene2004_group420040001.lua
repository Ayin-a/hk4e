-- 基础信息
local base_info = {
	group_id = 420040001
}

-- DEFS_MISCS
-- 家园Group物件 001 计时器
local defs = {
    GalleryID = 410001,
    StartConfig = 1001,
    EndConfig = 1002,
    Operator = 1004,
    EnterRegionConfig = 1005,
    LeaveRegionConfig = 1006,
}

function CheckUidNoExist(context,enterUid)
    local uidList = ScriptLib.GetGalleryUidList(context,defs.GalleryID)
    for i = 1,#uidList do
        if enterUid == uidList[i] then
            return false
        end
    end
    return true
end

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1001, gadget_id = 77307001, pos = { x = 338.219, y = 186.550, z = 517.274 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1002, gadget_id = 77307002, pos = { x = 319.918, y = 186.550, z = 517.110 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	-- 跟随1001的操作台
	{ config_id = 1004, gadget_id = 70360001, pos = { x = 338.203, y = 186.550, z = 517.236 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_guest_can_operate = true, follow_entity = 1001 }
}

-- 区域
regions = {
	-- 当玩家进入时，触发结束。
	{ config_id = 1005, shape = RegionShape.SPHERE, radius = 2, pos = { x = 319.918, y = 186.550, z = 517.110 }, follow_entity = 1002 },
	-- 当玩家离开时，触发切换Authority切换。
	{ config_id = 1006, shape = RegionShape.SPHERE, radius = 40, pos = { x = 319.918, y = 186.550, z = 517.110 } }
}

-- 触发器
triggers = {
	-- 当玩家进入时，触发结束。
	{ config_id = 1001005, name = "ENTER_REGION_1005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_1005", trigger_count = 0, forbid_guest = false, follow_entity = 1002 },
	-- 当玩家离开时，触发切换Authority切换。
	{ config_id = 1001006, name = "LEAVE_REGION_1006", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "", action = "action_EVENT_LEAVE_REGION_1006", trigger_count = 0, forbid_guest = false },
	{ config_id = 1001007, name = "GADGET_CREATE_1007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "", action = "action_EVENT_GADGET_CREATE_1007", trigger_count = 0 },
	{ config_id = 1001008, name = "GALLERY_STOP_1008", event = EventType.EVENT_GALLERY_STOP, source = "", condition = "", action = "action_EVENT_GALLERY_STOP_1008", trigger_count = 0 },
	{ config_id = 1001009, name = "SELECT_OPTION_1009", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "", action = "action_EVENT_SELECT_OPTION_1009", trigger_count = 0, forbid_guest = false }
}

-- 变量
variables = {
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 0,
	rand_suite = false
}

--================================================================
-- 
-- 小组配置
-- 
--================================================================

suites = {
	{
		-- suite_id = 1,
		-- description = ,
		monsters = { },
		gadgets = { 1001, 1002, 1004 },
		regions = { 1005, 1006 },
		triggers = { "ENTER_REGION_1005", "LEAVE_REGION_1006", "GADGET_CREATE_1007", "GALLERY_STOP_1008", "SELECT_OPTION_1009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_ENTER_REGION_1005(context, evt)
	    -- 增加检查玩家uid是否合法的逻辑
	    local tempStart = ScriptLib.GetGroupTempValue(context, "TempStart",{})
	    local enterUid = context.uid
	
	    if evt.param1 ~= defs.EnterRegionConfig or 0 == tempStart or CheckUidNoExist(context,enterUid) then
	        return 0
	    end
	
	    ScriptLib.PrintContextLog(context, "## TD_玩法套装_计时器 : 完成玩法的玩家uid是 "..enterUid)
	    ScriptLib.UpdatePlayerGalleryScore(context, defs.GalleryID, {["uid"] = enterUid})
	    ScriptLib.StopGallery(context, defs.GalleryID, false)
	
	    return 0
end

-- 触发操作
function action_EVENT_LEAVE_REGION_1006(context, evt)
	    if evt.param1 ~= defs.LeaveRegionConfig then
	        return 0
	    end
	
	    ScriptLib.PrintContextLog(context, "## TD_玩法套装_计时器 : 离开玩家的uid是 "..context.uid)
	    local ret = ScriptLib.TryReallocateEntityAuthority(context, context.uid, defs.EndConfig, evt.param1)
	    ScriptLib.PrintContextLog(context, "## TD_玩法套装_计时器 : 切换的玩家是 = "..ret)
	
	    return 0
end

-- 触发操作
function action_EVENT_GADGET_CREATE_1007(context, evt)
	    ScriptLib.PrintContextLog(context, "##TD Gadget".. evt.param2 .."ConfigID为".. evt.param1 .. "创生了")
	    if 70360001 == evt.param2 then
	        ScriptLib.PrintContextLog(context, "##TD Gadget 符合条件，Gadget创生了")
	        ScriptLib.SetWorktopOptionsByGroupId(context, 0, evt.param1, {325})
	        ScriptLib.SetGroupTempValue(context, "TempStart", 0, {})
	    end
	    return 0
end

-- 触发操作
function action_EVENT_GALLERY_STOP_1008(context, evt)
	ScriptLib.SetWorktopOptionsByGroupId(context, 0, defs.Operator, {325})
	ScriptLib.SetGroupTempValue(context, "TempStart", 0, {})
	ScriptLib.SetGadgetStateByConfigId(context, defs.EndConfig,0)
	return 0
end

-- 触发操作
function action_EVENT_SELECT_OPTION_1009(context, evt)
	-- 将参与玩家录入到数据中
	local uidList=ScriptLib.GetSceneUidList(context)
	if ScriptLib.StartHomeGallery(context, defs.GalleryID,context.uid)
	==-1 then
	ScriptLib.SendServerMessageByLuaKey(context, "HOMEOWRLD_DUPLICATE_GALLERY", {context.uid})
	return 0
	end
	ScriptLib.SetGroupTempValue(context, "TempStart", 1, {})
	ScriptLib.DelWorktopOption(context, evt.param2)
	ScriptLib.SetGadgetStateByConfigId(context, defs.EndConfig,201)
	return 0
end