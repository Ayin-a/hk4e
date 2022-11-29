-- 基础信息
local base_info = {
	group_id = 133001371
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
	{ config_id = 371001, gadget_id = 70211111, pos = { x = 1835.646, y = 194.600, z = -1509.796 }, rot = { x = 358.564, y = 359.848, z = 348.040 }, level = 1, drop_tag = "解谜中级蒙德", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 2 },
	{ config_id = 371002, gadget_id = 70380002, pos = { x = 1845.928, y = 197.088, z = -1509.048 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5, isOneoff = true, route_id = 300100245, persistent = true, area_id = 2 },
	{ config_id = 371003, gadget_id = 70380002, pos = { x = 1834.983, y = 199.494, z = -1508.630 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5, isOneoff = true, route_id = 300100246, persistent = true, area_id = 2 },
	{ config_id = 371004, gadget_id = 70380002, pos = { x = 1826.221, y = 197.198, z = -1506.362 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5, isOneoff = true, route_id = 300100247, persistent = true, area_id = 2 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1371005, name = "ANY_GADGET_DIE_371005", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_371005", action = "action_EVENT_ANY_GADGET_DIE_371005" },
	{ config_id = 1371006, name = "GADGET_STATE_CHANGE_371006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_371006", action = "action_EVENT_GADGET_STATE_CHANGE_371006", trigger_count = 0 }
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
		gadgets = { 371002, 371003, 371004 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_371005", "GADGET_STATE_CHANGE_371006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_371005(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133001371}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_371005(context, evt)
	-- 创建id为371001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 371001 }) then
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
function condition_EVENT_GADGET_STATE_CHANGE_371006(context, evt)
	if 371001 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_371006(context, evt)
	-- 销毁group存档，不影响当前场景，但卸载后group就永别了
	if 0 ~= ScriptLib.SetGroupDead(context, 0) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_group_die")
		return -1
	end
	
	return 0
end