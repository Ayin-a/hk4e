-- 基础信息
local base_info = {
	group_id = 133004302
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
	{ config_id = 302001, gadget_id = 70211111, pos = { x = 2334.699, y = 284.511, z = -248.801 }, rot = { x = 2.500, y = 158.200, z = 3.200 }, level = 11, drop_tag = "解谜中级蒙德", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 3 },
	{ config_id = 302002, gadget_id = 70380002, pos = { x = 2329.000, y = 290.294, z = -248.000 }, rot = { x = 0.000, y = 77.934, z = 0.000 }, level = 15, route_id = 3004519, area_id = 3 },
	{ config_id = 302003, gadget_id = 70380002, pos = { x = 2332.000, y = 290.294, z = -248.000 }, rot = { x = 0.000, y = 304.709, z = 0.000 }, level = 15, route_id = 3004519, area_id = 3 },
	{ config_id = 302004, gadget_id = 70380002, pos = { x = 2335.000, y = 290.294, z = -248.000 }, rot = { x = 0.000, y = 15.315, z = 0.000 }, level = 15, route_id = 3004519, area_id = 3 },
	{ config_id = 302006, gadget_id = 70380002, pos = { x = 2338.000, y = 290.294, z = -248.000 }, rot = { x = 0.000, y = 290.100, z = 0.000 }, level = 15, route_id = 3004519, area_id = 3 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1302005, name = "ANY_GADGET_DIE_302005", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_302005", action = "action_EVENT_ANY_GADGET_DIE_302005" },
	{ config_id = 1302007, name = "GADGET_STATE_CHANGE_302007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_302007", action = "action_EVENT_GADGET_STATE_CHANGE_302007", trigger_count = 0 }
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
		gadgets = { 302002, 302003, 302004, 302006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_302005", "GADGET_STATE_CHANGE_302007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_302005(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133004302}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_302005(context, evt)
	-- 创建id为302001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 302001 }) then
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
function condition_EVENT_GADGET_STATE_CHANGE_302007(context, evt)
	if 302001 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_302007(context, evt)
	-- 销毁group存档，不影响当前场景，但卸载后group就永别了
	if 0 ~= ScriptLib.SetGroupDead(context, 0) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_group_die")
		return -1
	end
	
	return 0
end