-- 基础信息
local base_info = {
	group_id = 133304420
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
	{ config_id = 420001, gadget_id = 70211111, pos = { x = -1609.007, y = 227.302, z = 2272.985 }, rot = { x = 0.000, y = 250.834, z = 0.000 }, level = 26, drop_tag = "解谜中级须弥", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 21 },
	{ config_id = 420002, gadget_id = 70380002, pos = { x = -1749.970, y = 197.210, z = 2172.049 }, rot = { x = 0.000, y = 337.795, z = 0.000 }, level = 30, isOneoff = true, route_id = 330400051, persistent = true, area_id = 21 },
	{ config_id = 420003, gadget_id = 70380002, pos = { x = -1747.027, y = 198.954, z = 2233.830 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, isOneoff = true, route_id = 330400052, persistent = true, area_id = 21 },
	{ config_id = 420004, gadget_id = 70380002, pos = { x = -1717.247, y = 210.760, z = 2283.038 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, isOneoff = true, route_id = 330400053, persistent = true, area_id = 21 },
	{ config_id = 420007, gadget_id = 70380002, pos = { x = -1644.826, y = 216.801, z = 2274.287 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, isOneoff = true, route_id = 330400054, persistent = true, area_id = 21 },
	{ config_id = 420009, gadget_id = 70380002, pos = { x = -1612.382, y = 229.895, z = 2273.356 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, isOneoff = true, route_id = 330400056, persistent = true, area_id = 21 },
	{ config_id = 420010, gadget_id = 70380002, pos = { x = -1677.017, y = 193.120, z = 2255.882 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, isOneoff = true, route_id = 330400057, persistent = true, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1420005, name = "ANY_GADGET_DIE_420005", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_420005", action = "action_EVENT_ANY_GADGET_DIE_420005" },
	{ config_id = 1420006, name = "GADGET_STATE_CHANGE_420006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_420006", action = "action_EVENT_GADGET_STATE_CHANGE_420006", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 420008, gadget_id = 70380002, pos = { x = -1689.451, y = 216.115, z = 2336.807 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, isOneoff = true, route_id = 330400055, persistent = true, area_id = 21 }
	}
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
		gadgets = { 420002, 420003, 420004, 420007, 420009, 420010 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_420005", "GADGET_STATE_CHANGE_420006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_420005(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133304420}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_420005(context, evt)
	-- 创建id为420001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 420001 }) then
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
function condition_EVENT_GADGET_STATE_CHANGE_420006(context, evt)
	if 420001 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_420006(context, evt)
	-- 销毁group存档，不影响当前场景，但卸载后group就永别了
	if 0 ~= ScriptLib.SetGroupDead(context, 0) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_group_die")
		return -1
	end
	
	return 0
end