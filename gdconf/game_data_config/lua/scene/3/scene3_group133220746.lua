-- 基础信息
local base_info = {
	group_id = 133220746
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 746003, monster_id = 28020803, pos = { x = -2455.502, y = 201.175, z = -4155.790 }, rot = { x = 0.000, y = 106.184, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, pose_id = 2, area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 746007, gadget_id = 70220008, pos = { x = -2464.645, y = 201.303, z = -4141.635 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 746009, gadget_id = 70360274, pos = { x = -2464.645, y = 201.303, z = -4141.635 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, mark_flag = 1, area_id = 11 },
	{ config_id = 746011, gadget_id = 70360276, pos = { x = -2464.645, y = 201.303, z = -4141.635 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1746010, name = "ANY_MONSTER_DIE_746010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_746010", action = "action_EVENT_ANY_MONSTER_DIE_746010", trigger_count = 0 },
	{ config_id = 1746012, name = "ANY_GADGET_DIE_746012", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_746012", action = "action_EVENT_ANY_GADGET_DIE_746012", trigger_count = 0 }
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
		monsters = { 746003 },
		gadgets = { 746009 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_746010" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 746007, 746011 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_746012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_746010(context, evt)
	--判断死亡怪物的死亡类型是否为1，0为普通死亡（比如被击杀），1为普通地被killself杀死，2为消失（比如小动物逃跑消失，北风狼脱战消失）
	if evt.param2 ~= 1 then
	    return false
	 end
	
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_746010(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133220746, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_746012(context, evt)
	if 746007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_746012(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133220753, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end