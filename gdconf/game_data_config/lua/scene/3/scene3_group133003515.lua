-- 基础信息
local base_info = {
	group_id = 133003515
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
	{ config_id = 515001, gadget_id = 70211111, pos = { x = 2915.652, y = 262.067, z = -1561.220 }, rot = { x = 355.889, y = 38.573, z = 4.520 }, level = 26, drop_tag = "解谜中级蒙德", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 1 },
	{ config_id = 515002, gadget_id = 70380002, pos = { x = 2919.697, y = 274.956, z = -1563.662 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, isOneoff = true, route_id = 300300301, persistent = true, area_id = 1 },
	{ config_id = 515003, gadget_id = 70380002, pos = { x = 2916.714, y = 274.939, z = -1563.623 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, isOneoff = true, route_id = 300300301, persistent = true, area_id = 1 },
	{ config_id = 515004, gadget_id = 70380002, pos = { x = 2913.761, y = 274.838, z = -1563.547 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, isOneoff = true, route_id = 300300301, persistent = true, area_id = 1 },
	{ config_id = 515006, gadget_id = 70380002, pos = { x = 2910.741, y = 274.838, z = -1563.560 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, isOneoff = true, route_id = 300300301, persistent = true, area_id = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1515005, name = "ANY_GADGET_DIE_515005", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_515005", action = "action_EVENT_ANY_GADGET_DIE_515005" },
	{ config_id = 1515007, name = "GADGET_STATE_CHANGE_515007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_515007", action = "action_EVENT_GADGET_STATE_CHANGE_515007", trigger_count = 0 }
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
		gadgets = { 515002, 515003, 515004, 515006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_515005", "GADGET_STATE_CHANGE_515007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_515005(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133003515}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_515005(context, evt)
	-- 创建id为515001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 515001 }) then
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

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_515007(context, evt)
	if 515001 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_515007(context, evt)
	-- 销毁group存档，不影响当前场景，但卸载后group就永别了
	if 0 ~= ScriptLib.SetGroupDead(context, 0) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_group_die")
		return -1
	end
	
	return 0
end