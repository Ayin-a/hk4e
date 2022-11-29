-- 基础信息
local base_info = {
	group_id = 133104504
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
	{ config_id = 504001, gadget_id = 70211111, pos = { x = 940.531, y = 248.560, z = 778.424 }, rot = { x = 5.286, y = 138.468, z = 353.665 }, level = 16, drop_tag = "解谜中级璃月", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 },
	{ config_id = 504002, gadget_id = 70380002, pos = { x = 941.531, y = 249.927, z = 781.084 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, isOneoff = true, route_id = 310400203, persistent = true, area_id = 6 },
	{ config_id = 504003, gadget_id = 70380002, pos = { x = 946.766, y = 249.834, z = 776.809 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, isOneoff = true, route_id = 310400204, persistent = true, area_id = 6 },
	{ config_id = 504004, gadget_id = 70380002, pos = { x = 936.888, y = 250.739, z = 772.745 }, rot = { x = 0.000, y = 258.718, z = 0.000 }, level = 2, isOneoff = true, route_id = 310400205, persistent = true, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1504005, name = "ANY_GADGET_DIE_504005", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_504005", action = "action_EVENT_ANY_GADGET_DIE_504005" },
	{ config_id = 1504006, name = "GADGET_STATE_CHANGE_504006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_504006", action = "action_EVENT_GADGET_STATE_CHANGE_504006", trigger_count = 0 }
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
		gadgets = { 504002, 504003, 504004 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_504005", "GADGET_STATE_CHANGE_504006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_504005(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133104504}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_504005(context, evt)
	-- 创建id为504001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 504001 }) then
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
function condition_EVENT_GADGET_STATE_CHANGE_504006(context, evt)
	if 504001 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_504006(context, evt)
	-- 销毁group存档，不影响当前场景，但卸载后group就永别了
	if 0 ~= ScriptLib.SetGroupDead(context, 0) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_group_die")
		return -1
	end
	
	return 0
end