-- 基础信息
local base_info = {
	group_id = 133007132
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
	{ config_id = 450, gadget_id = 70500000, pos = { x = 2794.662, y = 208.925, z = 159.597 }, rot = { x = 0.000, y = 221.780, z = 0.000 }, level = 23, point_type = 2003, area_id = 4 },
	{ config_id = 451, gadget_id = 70500000, pos = { x = 2795.117, y = 208.818, z = 155.092 }, rot = { x = 0.000, y = 305.547, z = 0.000 }, level = 23, point_type = 2003, area_id = 4 },
	{ config_id = 452, gadget_id = 70500000, pos = { x = 2799.029, y = 209.194, z = 160.467 }, rot = { x = 0.000, y = 305.547, z = 0.000 }, level = 23, point_type = 2003, area_id = 4 },
	{ config_id = 453, gadget_id = 70500000, pos = { x = 2799.540, y = 208.785, z = 155.958 }, rot = { x = 0.000, y = 305.547, z = 0.000 }, level = 23, point_type = 2003, area_id = 4 },
	{ config_id = 454, gadget_id = 70211101, pos = { x = 2797.108, y = 208.869, z = 157.722 }, rot = { x = 0.000, y = 210.511, z = 0.000 }, level = 21, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 4 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000073, name = "GATHER_73", event = EventType.EVENT_GATHER, source = "450", condition = "condition_EVENT_GATHER_73", action = "action_EVENT_GATHER_73", tlog_tag = "风龙_132_小灯草宝箱_触发" },
	{ config_id = 1000286, name = "GATHER_286", event = EventType.EVENT_GATHER, source = "451", condition = "condition_EVENT_GATHER_286", action = "action_EVENT_GATHER_286", tlog_tag = "风龙_132_小灯草宝箱_触发2" },
	{ config_id = 1000287, name = "GATHER_287", event = EventType.EVENT_GATHER, source = "452", condition = "condition_EVENT_GATHER_287", action = "action_EVENT_GATHER_287", tlog_tag = "风龙_132_小灯草宝箱_触发3" },
	{ config_id = 1000288, name = "GATHER_288", event = EventType.EVENT_GATHER, source = "453", condition = "condition_EVENT_GATHER_288", action = "action_EVENT_GATHER_288", tlog_tag = "风龙_132_小灯草宝箱_触发4" }
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
		gadgets = { 450, 451, 452, 453 },
		regions = { },
		triggers = { "GATHER_73", "GATHER_286", "GATHER_287", "GATHER_288" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GATHER_73(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133007132}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GATHER_73(context, evt)
	-- 创建id为454的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 454 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GATHER_286(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133007132}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GATHER_286(context, evt)
	-- 创建id为454的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 454 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GATHER_287(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133007132}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GATHER_287(context, evt)
	-- 创建id为454的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 454 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GATHER_288(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133007132}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GATHER_288(context, evt)
	-- 创建id为454的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 454 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end