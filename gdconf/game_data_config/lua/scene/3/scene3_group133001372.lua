-- 基础信息
local base_info = {
	group_id = 133001372
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
	{ config_id = 372001, gadget_id = 70211111, pos = { x = 2075.705, y = 210.666, z = -1272.027 }, rot = { x = 2.686, y = 214.135, z = 359.438 }, level = 1, drop_tag = "解谜中级蒙德", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 1 },
	{ config_id = 372002, gadget_id = 70380002, pos = { x = 2080.230, y = 211.536, z = -1260.532 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5, isOneoff = true, route_id = 300100248, persistent = true, area_id = 1 },
	{ config_id = 372003, gadget_id = 70380002, pos = { x = 2076.303, y = 211.128, z = -1254.219 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5, isOneoff = true, route_id = 300100249, persistent = true, area_id = 1 },
	{ config_id = 372004, gadget_id = 70380002, pos = { x = 2071.166, y = 212.167, z = -1252.448 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5, isOneoff = true, route_id = 300100250, persistent = true, area_id = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1372005, name = "ANY_GADGET_DIE_372005", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_372005", action = "action_EVENT_ANY_GADGET_DIE_372005" },
	{ config_id = 1372006, name = "GADGET_STATE_CHANGE_372006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_372006", action = "action_EVENT_GADGET_STATE_CHANGE_372006", trigger_count = 0 }
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
		gadgets = { 372002, 372003, 372004 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_372005", "GADGET_STATE_CHANGE_372006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_372005(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133001372}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_372005(context, evt)
	-- 创建id为372001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 372001 }) then
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
function condition_EVENT_GADGET_STATE_CHANGE_372006(context, evt)
	if 372001 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_372006(context, evt)
	-- 销毁group存档，不影响当前场景，但卸载后group就永别了
	if 0 ~= ScriptLib.SetGroupDead(context, 0) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_group_die")
		return -1
	end
	
	return 0
end