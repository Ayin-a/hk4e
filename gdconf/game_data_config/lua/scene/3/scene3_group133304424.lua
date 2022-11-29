-- 基础信息
local base_info = {
	group_id = 133304424
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
	{ config_id = 424001, gadget_id = 70211101, pos = { x = -1805.316, y = 222.436, z = 2959.172 }, rot = { x = 352.204, y = 98.284, z = 357.973 }, level = 26, drop_tag = "解谜低级须弥", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 21 },
	{ config_id = 424002, gadget_id = 70380002, pos = { x = -1796.873, y = 235.000, z = 2968.414 }, rot = { x = 0.000, y = 96.463, z = 0.000 }, level = 30, isOneoff = true, route_id = 330400058, persistent = true, area_id = 21 },
	{ config_id = 424003, gadget_id = 70380002, pos = { x = -1798.540, y = 240.078, z = 2948.475 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, isOneoff = true, route_id = 330400059, persistent = true, area_id = 21 },
	{ config_id = 424004, gadget_id = 70380002, pos = { x = -1815.843, y = 227.955, z = 2954.909 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, isOneoff = true, route_id = 330400060, persistent = true, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1424005, name = "ANY_GADGET_DIE_424005", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_424005", action = "action_EVENT_ANY_GADGET_DIE_424005" },
	{ config_id = 1424006, name = "GADGET_STATE_CHANGE_424006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_424006", action = "action_EVENT_GADGET_STATE_CHANGE_424006", trigger_count = 0 }
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
		gadgets = { 424002, 424003, 424004 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_424005", "GADGET_STATE_CHANGE_424006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_424005(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133304424}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_424005(context, evt)
	-- 创建id为424001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 424001 }) then
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
function condition_EVENT_GADGET_STATE_CHANGE_424006(context, evt)
	if 424001 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_424006(context, evt)
	-- 销毁group存档，不影响当前场景，但卸载后group就永别了
	if 0 ~= ScriptLib.SetGroupDead(context, 0) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_group_die")
		return -1
	end
	
	return 0
end