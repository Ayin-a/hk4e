-- 基础信息
local base_info = {
	group_id = 144004047
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 47001, monster_id = 21010501, pos = { x = -906.564, y = 123.977, z = -238.458 }, rot = { x = 0.000, y = 20.037, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", disableWander = true, area_id = 103 },
	{ config_id = 47002, monster_id = 21010901, pos = { x = -884.434, y = 123.860, z = -237.199 }, rot = { x = 0.000, y = 353.810, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", disableWander = true, area_id = 103 },
	{ config_id = 47004, monster_id = 21030301, pos = { x = -895.588, y = 126.172, z = -226.722 }, rot = { x = 0.000, y = 27.558, z = 0.000 }, level = 20, drop_tag = "丘丘萨满", disableWander = true, area_id = 103 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 47003, gadget_id = 70211012, pos = { x = -895.756, y = 126.065, z = -224.707 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "战斗中级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 103 },
	-- 可摧毁小哨塔A
	{ config_id = 47009, gadget_id = 70950092, pos = { x = -906.246, y = 120.000, z = -238.400 }, rot = { x = 0.000, y = 314.149, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 103 },
	-- 可摧毁小哨塔B
	{ config_id = 47010, gadget_id = 70950092, pos = { x = -883.650, y = 120.000, z = -237.614 }, rot = { x = 0.000, y = 311.327, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 103 },
	-- 不可摧毁大哨塔A
	{ config_id = 47012, gadget_id = 70290059, pos = { x = -894.813, y = 120.000, z = -226.518 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 103 },
	{ config_id = 47013, gadget_id = 70950087, pos = { x = -907.811, y = 120.000, z = -234.749 }, rot = { x = 0.000, y = 49.032, z = 0.000 }, level = 1, area_id = 103 },
	{ config_id = 47014, gadget_id = 70950087, pos = { x = -881.639, y = 120.000, z = -232.996 }, rot = { x = 0.000, y = 196.466, z = 0.000 }, level = 1, area_id = 103 },
	-- 小哨塔A连接梯子A
	{ config_id = 47015, gadget_id = 70290060, pos = { x = -901.565, y = 124.319, z = -233.208 }, rot = { x = 0.000, y = 313.734, z = 0.000 }, level = 1, area_id = 103 },
	-- 小哨塔B连接梯子B
	{ config_id = 47016, gadget_id = 70290060, pos = { x = -889.047, y = 124.224, z = -232.801 }, rot = { x = 0.000, y = 221.702, z = 0.000 }, level = 1, area_id = 103 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1047005, name = "ANY_MONSTER_DIE_47005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_47005", action = "action_EVENT_ANY_MONSTER_DIE_47005" },
	-- 销毁了小哨塔A后销毁梯子A
	{ config_id = 1047025, name = "ANY_GADGET_DIE_47025", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_47025", action = "action_EVENT_ANY_GADGET_DIE_47025" },
	-- 销毁了小哨塔B后销毁梯子B
	{ config_id = 1047026, name = "ANY_GADGET_DIE_47026", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_47026", action = "action_EVENT_ANY_GADGET_DIE_47026" }
}

-- 变量
variables = {
	{ config_id = 1, name = "GroupCompletion", value = 0, no_refresh = false },
	{ config_id = 2, name = "remainingHeat", value = 3, no_refresh = false },
	{ config_id = 3, name = "wave", value = 0, no_refresh = false }
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
		monsters = { 47001, 47002, 47004 },
		gadgets = { 47003, 47009, 47010, 47012, 47013, 47014, 47015, 47016 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_47005", "ANY_GADGET_DIE_47025", "ANY_GADGET_DIE_47026" },
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
function condition_EVENT_ANY_MONSTER_DIE_47005(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 144004047) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_47005(context, evt)
	-- 将configid为 47003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 47003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_47025(context, evt)
	if 47009 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_47025(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 47015 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_47026(context, evt)
	if 47010 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_47026(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 47016 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end