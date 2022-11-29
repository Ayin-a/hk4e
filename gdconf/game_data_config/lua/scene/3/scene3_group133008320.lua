-- 基础信息
local base_info = {
	group_id = 133008320
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 320002, monster_id = 24010301, pos = { x = 635.832, y = 202.848, z = -1145.566 }, rot = { x = 0.000, y = 271.328, z = 0.000 }, level = 30, drop_tag = "遗迹重机", isOneoff = true, pose_id = 100, climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 320001, gadget_id = 70220047, pos = { x = 634.994, y = 200.372, z = -1147.183 }, rot = { x = 45.323, y = 131.256, z = 1.153 }, level = 30, isOneoff = true, persistent = true, area_id = 10 },
	{ config_id = 320003, gadget_id = 70211146, pos = { x = 612.839, y = 200.846, z = -1164.932 }, rot = { x = 355.995, y = 270.901, z = 356.919 }, level = 26, drop_tag = "雪山玉髓高级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1320004, name = "ANY_GADGET_DIE_320004", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_320004", action = "action_EVENT_ANY_GADGET_DIE_320004" },
	{ config_id = 1320005, name = "ANY_MONSTER_DIE_320005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_320005", action = "action_EVENT_ANY_MONSTER_DIE_320005" }
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
	end_suite = 2,
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
		gadgets = { 320001, 320003 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_320004", "ANY_MONSTER_DIE_320005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 320002 },
		gadgets = { 320001, 320003 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_320004", "ANY_MONSTER_DIE_320005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_320004(context, evt)
	if 320001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_320004(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133008320, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_320005(context, evt)
	--判断死亡怪物的configid是否为 320002
	if evt.param1 ~= 320002 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_320005(context, evt)
	-- 将configid为 320003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 320003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end