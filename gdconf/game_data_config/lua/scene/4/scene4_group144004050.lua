-- 基础信息
local base_info = {
	group_id = 144004050
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 50001, monster_id = 21030301, pos = { x = -236.064, y = 123.788, z = 102.161 }, rot = { x = 0.000, y = 172.166, z = 0.000 }, level = 20, drop_tag = "丘丘萨满", disableWander = true, area_id = 103 },
	{ config_id = 50002, monster_id = 21030301, pos = { x = -213.934, y = 123.707, z = 103.420 }, rot = { x = 0.000, y = 119.493, z = 0.000 }, level = 20, drop_tag = "丘丘萨满", disableWander = true, area_id = 103 },
	{ config_id = 50003, monster_id = 21010901, pos = { x = -225.409, y = 126.185, z = 113.898 }, rot = { x = 0.000, y = 27.558, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", disableWander = true, area_id = 103 },
	{ config_id = 50015, monster_id = 21010901, pos = { x = -224.234, y = 126.187, z = 110.183 }, rot = { x = 0.000, y = 165.274, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", disableWander = true, area_id = 103 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	-- 可摧毁小哨塔A
	{ config_id = 50004, gadget_id = 70950092, pos = { x = -235.746, y = 120.000, z = 102.220 }, rot = { x = 0.000, y = 314.149, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 103 },
	-- 可摧毁小哨塔B
	{ config_id = 50005, gadget_id = 70950092, pos = { x = -213.150, y = 120.000, z = 103.005 }, rot = { x = 0.000, y = 311.327, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 103 },
	-- 不可摧毁大哨塔A
	{ config_id = 50006, gadget_id = 70290059, pos = { x = -224.313, y = 120.000, z = 114.102 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 103 },
	{ config_id = 50007, gadget_id = 70950087, pos = { x = -237.311, y = 120.000, z = 105.871 }, rot = { x = 0.000, y = 201.162, z = 0.000 }, level = 1, area_id = 103 },
	{ config_id = 50008, gadget_id = 70950087, pos = { x = -211.139, y = 120.000, z = 107.624 }, rot = { x = 0.000, y = 196.466, z = 0.000 }, level = 1, area_id = 103 },
	-- 小哨塔A连接梯子A
	{ config_id = 50009, gadget_id = 70290060, pos = { x = -231.065, y = 124.319, z = 107.411 }, rot = { x = 0.000, y = 313.734, z = 0.000 }, level = 1, area_id = 103 },
	-- 小哨塔B连接梯子B
	{ config_id = 50010, gadget_id = 70290060, pos = { x = -218.547, y = 124.224, z = 107.819 }, rot = { x = 0.000, y = 221.702, z = 0.000 }, level = 1, area_id = 103 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 销毁了小哨塔A后销毁梯子A
	{ config_id = 1050012, name = "ANY_GADGET_DIE_50012", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_50012", action = "action_EVENT_ANY_GADGET_DIE_50012" },
	-- 销毁了小哨塔B后销毁梯子B
	{ config_id = 1050013, name = "ANY_GADGET_DIE_50013", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_50013", action = "action_EVENT_ANY_GADGET_DIE_50013" },
	{ config_id = 1050014, name = "ANY_MONSTER_DIE_50014", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_50014", action = "action_EVENT_ANY_MONSTER_DIE_50014" }
}

-- 变量
variables = {
	{ config_id = 1, name = "GroupCompletion", value = 0, no_refresh = false },
	{ config_id = 2, name = "remainingHeat", value = 3, no_refresh = false },
	{ config_id = 3, name = "wave", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 50011, gadget_id = 70360001, pos = { x = -225.256, y = 126.065, z = 115.912 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.ChestLocked, isOneoff = true, persistent = true, area_id = 103 }
	}
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 2,
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
		monsters = { 50001, 50002, 50003, 50015 },
		gadgets = { 50004, 50005, 50006, 50007, 50008, 50009, 50010 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_50012", "ANY_GADGET_DIE_50013", "ANY_MONSTER_DIE_50014" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = [默认在场的第一组魔物],
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_50012(context, evt)
	if 50004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_50012(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 50009 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_50013(context, evt)
	if 50005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_50013(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 50010 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_50014(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 144004050) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_50014(context, evt)
	-- 将configid为 50011 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 50011, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end