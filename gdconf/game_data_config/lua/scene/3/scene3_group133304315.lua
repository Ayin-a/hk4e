-- 基础信息
local base_info = {
	group_id = 133304315
}

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
	{ config_id = 315001, gadget_id = 70217020, pos = { x = -1469.927, y = 202.660, z = 2275.053 }, rot = { x = 10.619, y = 0.083, z = 0.895 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 21 },
	{ config_id = 315002, gadget_id = 70330199, pos = { x = -1470.154, y = 202.745, z = 2274.621 }, rot = { x = 8.797, y = 333.958, z = 353.774 }, level = 30, state = GadgetState.GearStop, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1315003, name = "GADGET_STATE_CHANGE_315003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_315003", action = "action_EVENT_GADGET_STATE_CHANGE_315003", trigger_count = 0 },
	{ config_id = 1315004, name = "GADGET_STATE_CHANGE_315004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_315004", action = "action_EVENT_GADGET_STATE_CHANGE_315004", trigger_count = 0 },
	{ config_id = 1315005, name = "GROUP_LOAD_315005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_315005", trigger_count = 0 }
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
		gadgets = { 315002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_315003", "GADGET_STATE_CHANGE_315004", "GROUP_LOAD_315005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 315001 },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_315003(context, evt)
	-- 检测指定三态物件的grassState是否为对应状态，其中1为正常态、2为激化态、3为消亡态
	if 315002 ~= evt.param2 then
		return false
	end
	if 1<1 or 1>3 then
	  return false
	end
	if 1 == 1 and 0 ~= evt.param1 then
	  return false
	end
	if 1 == 2 and 200 ~= evt.param1 then
	  return false
	end
	if 1 == 3 and 300 ~= evt.param1 and 301 ~= evt.param1 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_315003(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133304315, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_315004(context, evt)
	-- 检测指定三态物件的grassState是否为对应状态，其中1为正常态、2为激化态、3为消亡态
	if 315002 ~= evt.param2 then
		return false
	end
	if 3<1 or 3>3 then
	  return false
	end
	if 3 == 1 and 0 ~= evt.param1 then
	  return false
	end
	if 3 == 2 and 200 ~= evt.param1 then
	  return false
	end
	if 3 == 3 and 300 ~= evt.param1 and 301 ~= evt.param1 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_315004(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133304315, 2)
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_315005(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133304315, 2)
	
	return 0
end