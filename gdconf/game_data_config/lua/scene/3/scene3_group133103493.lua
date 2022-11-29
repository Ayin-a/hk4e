-- 基础信息
local base_info = {
	group_id = 133103493
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
	{ config_id = 493001, gadget_id = 70211111, pos = { x = 202.450, y = 219.909, z = 1389.206 }, rot = { x = 0.000, y = 199.800, z = 0.000 }, level = 21, drop_tag = "解谜中级璃月", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 },
	{ config_id = 493002, gadget_id = 70380002, pos = { x = 215.547, y = 223.832, z = 1383.128 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, isOneoff = true, route_id = 310300176, persistent = true, area_id = 6 },
	{ config_id = 493003, gadget_id = 70380002, pos = { x = 197.154, y = 220.023, z = 1372.881 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, isOneoff = true, route_id = 310300177, persistent = true, area_id = 6 },
	{ config_id = 493004, gadget_id = 70380002, pos = { x = 189.828, y = 229.603, z = 1392.644 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, isOneoff = true, route_id = 310300178, persistent = true, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1493005, name = "ANY_GADGET_DIE_493005", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_493005", action = "action_EVENT_ANY_GADGET_DIE_493005" },
	{ config_id = 1493006, name = "GADGET_STATE_CHANGE_493006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_493006", action = "action_EVENT_GADGET_STATE_CHANGE_493006", trigger_count = 0 }
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
		gadgets = { 493002, 493003, 493004 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_493005", "GADGET_STATE_CHANGE_493006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_493005(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133103493}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_493005(context, evt)
	-- 创建id为493001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 493001 }) then
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
function condition_EVENT_GADGET_STATE_CHANGE_493006(context, evt)
	if 493001 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_493006(context, evt)
	-- 销毁group存档，不影响当前场景，但卸载后group就永别了
	if 0 ~= ScriptLib.SetGroupDead(context, 0) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_group_die")
		return -1
	end
	
	return 0
end