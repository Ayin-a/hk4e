-- 基础信息
local base_info = {
	group_id = 133007204
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
	{ config_id = 884, gadget_id = 70500000, pos = { x = 2563.474, y = 200.860, z = 369.667 }, rot = { x = 0.000, y = 221.780, z = 0.000 }, level = 23, point_type = 2003, area_id = 4 },
	{ config_id = 885, gadget_id = 70500000, pos = { x = 2563.929, y = 201.029, z = 365.161 }, rot = { x = 0.000, y = 305.547, z = 0.000 }, level = 23, point_type = 2003, area_id = 4 },
	{ config_id = 886, gadget_id = 70500000, pos = { x = 2567.841, y = 201.294, z = 370.536 }, rot = { x = 0.000, y = 305.547, z = 0.000 }, level = 23, point_type = 2003, area_id = 4 },
	{ config_id = 887, gadget_id = 70500000, pos = { x = 2568.352, y = 201.509, z = 366.027 }, rot = { x = 0.000, y = 305.547, z = 0.000 }, level = 23, point_type = 2003, area_id = 4 },
	{ config_id = 888, gadget_id = 70211101, pos = { x = 2565.920, y = 201.264, z = 367.792 }, rot = { x = 0.000, y = 210.511, z = 0.000 }, level = 21, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 4 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000236, name = "GATHER_236", event = EventType.EVENT_GATHER, source = "887", condition = "condition_EVENT_GATHER_236", action = "action_EVENT_GATHER_236", tlog_tag = "风龙_204_小灯草宝箱_触发" },
	{ config_id = 1000289, name = "GATHER_289", event = EventType.EVENT_GATHER, source = "886", condition = "condition_EVENT_GATHER_289", action = "action_EVENT_GATHER_289", tlog_tag = "风龙_204_小灯草宝箱_触发2" },
	{ config_id = 1000290, name = "GATHER_290", event = EventType.EVENT_GATHER, source = "885", condition = "condition_EVENT_GATHER_290", action = "action_EVENT_GATHER_290", tlog_tag = "风龙_204_小灯草宝箱_触发3" },
	{ config_id = 1000291, name = "GATHER_291", event = EventType.EVENT_GATHER, source = "884", condition = "condition_EVENT_GATHER_291", action = "action_EVENT_GATHER_291", tlog_tag = "风龙_204_小灯草宝箱_触发4" }
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
	rand_suite = true
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
		gadgets = { 884, 885, 886, 887 },
		regions = { },
		triggers = { "GATHER_236", "GATHER_289", "GATHER_290", "GATHER_291" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GATHER_236(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133007204}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GATHER_236(context, evt)
	-- 创建id为888的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 888 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GATHER_289(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133007204}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GATHER_289(context, evt)
	-- 创建id为888的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 888 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GATHER_290(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133007204}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GATHER_290(context, evt)
	-- 创建id为888的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 888 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GATHER_291(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133007204}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GATHER_291(context, evt)
	-- 创建id为888的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 888 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end