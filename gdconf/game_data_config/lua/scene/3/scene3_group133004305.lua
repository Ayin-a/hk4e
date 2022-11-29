-- 基础信息
local base_info = {
	group_id = 133004305
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
	{ config_id = 305001, gadget_id = 70211111, pos = { x = 2665.600, y = 263.000, z = -362.700 }, rot = { x = 0.000, y = 234.559, z = 0.000 }, level = 16, drop_tag = "解谜中级蒙德", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 4 },
	{ config_id = 305002, gadget_id = 70380002, pos = { x = 2657.273, y = 280.000, z = -367.740 }, rot = { x = 0.000, y = 26.884, z = 0.000 }, level = 20, route_id = 3004549, area_id = 4 },
	{ config_id = 305003, gadget_id = 70380002, pos = { x = 2662.101, y = 279.998, z = -364.081 }, rot = { x = 0.000, y = 264.269, z = 0.000 }, level = 20, route_id = 3004549, area_id = 4 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1305004, name = "GADGET_STATE_CHANGE_305004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_305004", action = "action_EVENT_GADGET_STATE_CHANGE_305004", trigger_count = 0 },
	{ config_id = 1305005, name = "ANY_GADGET_DIE_305005", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_305005", action = "action_EVENT_ANY_GADGET_DIE_305005" }
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
		gadgets = { 305002, 305003 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_305004", "ANY_GADGET_DIE_305005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_305004(context, evt)
	if 305001 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_305004(context, evt)
	-- 销毁group存档，不影响当前场景，但卸载后group就永别了
	if 0 ~= ScriptLib.SetGroupDead(context, 0) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_group_die")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_305005(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133004305}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_305005(context, evt)
	-- 创建id为305001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 305001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1011, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end