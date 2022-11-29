-- 基础信息
local base_info = {
	group_id = 220151007
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 7001, monster_id = 26090101, pos = { x = -150.750, y = -45.200, z = 73.814 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, pose_id = 102 },
	{ config_id = 7002, monster_id = 26090201, pos = { x = -146.487, y = -44.983, z = 73.549 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, pose_id = 102 },
	{ config_id = 7005, monster_id = 26090801, pos = { x = -148.660, y = -45.200, z = 71.577 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, pose_id = 102 },
	{ config_id = 7006, monster_id = 26090901, pos = { x = -148.891, y = -45.011, z = 75.629 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, pose_id = 102 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 7003, gadget_id = 70330317, pos = { x = -138.540, y = -45.053, z = 73.414 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7008, gadget_id = 70211101, pos = { x = -127.163, y = -45.022, z = 58.587 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "解谜低级须弥", isOneoff = true, persistent = true },
	{ config_id = 7009, gadget_id = 70211101, pos = { x = -147.871, y = -45.051, z = 33.187 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, drop_tag = "解谜低级须弥", isOneoff = true, persistent = true },
	{ config_id = 7011, gadget_id = 70210101, pos = { x = -146.685, y = -44.977, z = 52.911 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "搜刮点解谜果蔬须弥", isOneoff = true, persistent = true }
}

-- 区域
regions = {
	{ config_id = 7007, shape = RegionShape.SPHERE, radius = 5, pos = { x = -150.006, y = -45.210, z = 67.238 } }
}

-- 触发器
triggers = {
	{ config_id = 1007004, name = "ANY_MONSTER_DIE_7004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_7004", action = "action_EVENT_ANY_MONSTER_DIE_7004" },
	{ config_id = 1007007, name = "ENTER_REGION_7007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_7007", action = "action_EVENT_ENTER_REGION_7007" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 7010, gadget_id = 70211101, pos = { x = -146.627, y = -45.210, z = 52.859 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, drop_tag = "解谜低级须弥", isOneoff = true, persistent = true }
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
		gadgets = { 7003, 7008, 7009, 7011 },
		regions = { 7007 },
		triggers = { "ENTER_REGION_7007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 7001, 7002, 7005, 7006 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_7004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_7004(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 220151007) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_7004(context, evt)
	-- 将configid为 7003 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 7003, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_7007(context, evt)
	if evt.param1 ~= 7007 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_7007(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220151007, 2)
	
	return 0
end