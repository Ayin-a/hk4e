-- 基础信息
local base_info = {
	group_id = 133302348
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
	{ config_id = 348001, gadget_id = 70217020, pos = { x = -574.036, y = 210.729, z = 2990.704 }, rot = { x = 6.811, y = 355.283, z = 355.878 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 24 },
	{ config_id = 348002, gadget_id = 70330199, pos = { x = -574.461, y = 210.216, z = 2990.280 }, rot = { x = 6.948, y = 354.310, z = 353.103 }, level = 27, state = GadgetState.GearStop, area_id = 24 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1348003, name = "GADGET_STATE_CHANGE_348003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_348003", action = "action_EVENT_GADGET_STATE_CHANGE_348003", trigger_count = 0 },
	{ config_id = 1348004, name = "GADGET_STATE_CHANGE_348004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_348004", action = "action_EVENT_GADGET_STATE_CHANGE_348004", trigger_count = 0 },
	{ config_id = 1348005, name = "GROUP_LOAD_348005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_348005", trigger_count = 0 }
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
		gadgets = { 348002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_348003", "GADGET_STATE_CHANGE_348004", "GROUP_LOAD_348005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 348001 },
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
function condition_EVENT_GADGET_STATE_CHANGE_348003(context, evt)
	-- 检测指定三态物件的grassState是否为对应状态，其中1为正常态、2为激化态、3为消亡态
	if 348002 ~= evt.param2 then
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
function action_EVENT_GADGET_STATE_CHANGE_348003(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133302348, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_348004(context, evt)
	-- 检测指定三态物件的grassState是否为对应状态，其中1为正常态、2为激化态、3为消亡态
	if 348002 ~= evt.param2 then
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
function action_EVENT_GADGET_STATE_CHANGE_348004(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133302348, 2)
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_348005(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133302348, 2)
	
	return 0
end