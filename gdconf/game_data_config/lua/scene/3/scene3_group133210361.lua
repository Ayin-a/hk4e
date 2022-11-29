-- 基础信息
local base_info = {
	group_id = 133210361
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 361001, monster_id = 21010501, pos = { x = -3440.125, y = 203.856, z = -1019.102 }, rot = { x = 0.000, y = 145.370, z = 0.000 }, level = 30, drop_tag = "远程丘丘人", disableWander = true, pose_id = 32, area_id = 17 },
	{ config_id = 361002, monster_id = 21010501, pos = { x = -3417.995, y = 203.790, z = -1017.843 }, rot = { x = 0.000, y = 12.501, z = 0.000 }, level = 30, drop_tag = "远程丘丘人", disableWander = true, pose_id = 32, area_id = 17 },
	{ config_id = 361003, monster_id = 21030601, pos = { x = -3430.405, y = 203.741, z = -982.272 }, rot = { x = 0.000, y = 156.475, z = 0.000 }, level = 30, drop_tag = "丘丘萨满", disableWander = true, pose_id = 9012, area_id = 17 },
	{ config_id = 361024, monster_id = 22010401, pos = { x = -3428.932, y = 206.190, z = -1007.953 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "深渊法师", disableWander = true, pose_id = 9013, area_id = 17 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	-- 可摧毁小哨塔A
	{ config_id = 361004, gadget_id = 70950092, pos = { x = -3439.807, y = 199.519, z = -1019.044 }, rot = { x = 0.000, y = 314.149, z = 0.000 }, level = 18, state = GadgetState.GearStart, area_id = 17 },
	-- 可摧毁小哨塔B
	{ config_id = 361005, gadget_id = 70950092, pos = { x = -3417.211, y = 199.519, z = -1018.258 }, rot = { x = 0.000, y = 311.327, z = 0.000 }, level = 18, state = GadgetState.GearStart, area_id = 17 },
	-- 不可摧毁大哨塔A
	{ config_id = 361006, gadget_id = 70290182, pos = { x = -3428.374, y = 199.519, z = -1007.162 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, state = GadgetState.GearStart, area_id = 17 },
	{ config_id = 361007, gadget_id = 70950087, pos = { x = -3441.372, y = 200.000, z = -1015.393 }, rot = { x = 0.000, y = 49.032, z = 0.000 }, level = 18, area_id = 17 },
	{ config_id = 361008, gadget_id = 70950087, pos = { x = -3415.200, y = 200.000, z = -1013.640 }, rot = { x = 0.000, y = 196.466, z = 0.000 }, level = 18, area_id = 17 },
	-- 小哨塔A连接梯子A
	{ config_id = 361009, gadget_id = 70290060, pos = { x = -3435.126, y = 203.838, z = -1013.852 }, rot = { x = 0.000, y = 313.734, z = 0.000 }, level = 18, area_id = 17 },
	-- 小哨塔B连接梯子B
	{ config_id = 361010, gadget_id = 70290060, pos = { x = -3422.608, y = 203.743, z = -1013.445 }, rot = { x = 0.000, y = 221.702, z = 0.000 }, level = 18, area_id = 17 },
	{ config_id = 361011, gadget_id = 70211002, pos = { x = -3429.317, y = 205.584, z = -1005.351 }, rot = { x = 0.000, y = 181.413, z = 0.000 }, level = 26, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 17 },
	{ config_id = 361015, gadget_id = 70950093, pos = { x = -3435.928, y = 200.000, z = -1022.018 }, rot = { x = 0.000, y = 152.742, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 361016, gadget_id = 70950093, pos = { x = -3415.056, y = 199.998, z = -1021.524 }, rot = { x = 0.000, y = 152.742, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 361017, gadget_id = 70950093, pos = { x = -3437.310, y = 199.998, z = -980.930 }, rot = { x = 0.000, y = 152.742, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 361018, gadget_id = 70290057, pos = { x = -3429.838, y = 199.998, z = -987.673 }, rot = { x = 0.000, y = 198.517, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 361019, gadget_id = 70290057, pos = { x = -3411.610, y = 199.998, z = -1016.762 }, rot = { x = 0.000, y = 94.302, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 361020, gadget_id = 70290057, pos = { x = -3442.434, y = 200.000, z = -1024.051 }, rot = { x = 0.000, y = 198.517, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 361021, gadget_id = 70290057, pos = { x = -3441.176, y = 199.998, z = -999.543 }, rot = { x = 0.000, y = 120.182, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 361022, gadget_id = 70290057, pos = { x = -3429.815, y = 199.998, z = -976.661 }, rot = { x = 0.000, y = 358.568, z = 0.000 }, level = 30, area_id = 17 },
	-- 可摧毁小哨塔B
	{ config_id = 361023, gadget_id = 70950092, pos = { x = -3430.394, y = 199.519, z = -982.282 }, rot = { x = 0.000, y = 191.869, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 17 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 销毁了小哨塔A后销毁梯子A
	{ config_id = 1361012, name = "ANY_GADGET_DIE_361012", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_361012", action = "action_EVENT_ANY_GADGET_DIE_361012" },
	-- 销毁了小哨塔B后销毁梯子B
	{ config_id = 1361013, name = "ANY_GADGET_DIE_361013", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_361013", action = "action_EVENT_ANY_GADGET_DIE_361013" },
	{ config_id = 1361014, name = "ANY_MONSTER_DIE_361014", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_361014", action = "action_EVENT_ANY_MONSTER_DIE_361014" }
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
		monsters = { 361001, 361002, 361003, 361024 },
		gadgets = { 361004, 361005, 361006, 361007, 361008, 361009, 361010, 361011, 361015, 361016, 361017, 361018, 361019, 361020, 361021, 361022, 361023 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_361012", "ANY_GADGET_DIE_361013", "ANY_MONSTER_DIE_361014" },
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
function condition_EVENT_ANY_GADGET_DIE_361012(context, evt)
	if 361004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_361012(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 361009 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_361013(context, evt)
	if 361005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_361013(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 361010 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_361014(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133210361) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_361014(context, evt)
	-- 将configid为 361011 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 361011, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end