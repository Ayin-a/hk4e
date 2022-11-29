-- 基础信息
local base_info = {
	group_id = 133003340
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
	{ config_id = 3384, gadget_id = 70380002, pos = { x = 2845.000, y = 272.291, z = -1848.341 }, rot = { x = 0.000, y = 138.279, z = 0.000 }, level = 15, route_id = 3003196, area_id = 1 },
	{ config_id = 3385, gadget_id = 70380002, pos = { x = 2848.000, y = 272.291, z = -1848.341 }, rot = { x = 0.000, y = 168.744, z = 0.000 }, level = 15, route_id = 3003196, area_id = 1 },
	{ config_id = 3386, gadget_id = 70380002, pos = { x = 2851.000, y = 272.291, z = -1848.341 }, rot = { x = 0.000, y = 327.860, z = 0.000 }, level = 15, route_id = 3003196, area_id = 1 },
	{ config_id = 3387, gadget_id = 70380002, pos = { x = 2854.000, y = 272.291, z = -1848.341 }, rot = { x = 0.000, y = 158.080, z = 0.000 }, level = 15, route_id = 3003196, area_id = 1 },
	{ config_id = 3388, gadget_id = 70211111, pos = { x = 2847.169, y = 260.402, z = -1865.338 }, rot = { x = 0.000, y = 32.238, z = 358.331 }, level = 11, drop_tag = "解谜中级蒙德", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000259, name = "ANY_GADGET_DIE_259", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_259", action = "action_EVENT_ANY_GADGET_DIE_259", tlog_tag = "望风山地_340_射击自然靶标_结算" }
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
		gadgets = { 3384, 3385, 3386, 3387 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_259" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_259(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133003340}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_259(context, evt)
	-- 创建id为3388的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 3388 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end