-- 基础信息
local base_info = {
	group_id = 144001158
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 158003, monster_id = 21010201, pos = { x = 870.834, y = 121.933, z = 239.001 }, rot = { x = 0.000, y = 10.978, z = 0.000 }, level = 20, drop_tag = "丘丘人", disableWander = true, pose_id = 9012, area_id = 102 },
	{ config_id = 158004, monster_id = 21010201, pos = { x = 874.126, y = 121.889, z = 239.326 }, rot = { x = 0.000, y = 330.696, z = 0.000 }, level = 20, drop_tag = "丘丘人", disableWander = true, pose_id = 9012, area_id = 102 },
	{ config_id = 158005, monster_id = 21010401, pos = { x = 871.673, y = 125.284, z = 230.139 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", disableWander = true, pose_id = 402, area_id = 102 },
	{ config_id = 158006, monster_id = 21011001, pos = { x = 879.660, y = 120.638, z = 232.629 }, rot = { x = 0.000, y = 307.651, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", disableWander = true, pose_id = 32, area_id = 102 },
	{ config_id = 158007, monster_id = 21011001, pos = { x = 866.431, y = 121.881, z = 236.531 }, rot = { x = 0.000, y = 26.027, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", disableWander = true, area_id = 102 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 158002, gadget_id = 70211002, pos = { x = 872.485, y = 121.914, z = 241.778 }, rot = { x = 0.000, y = 170.829, z = 0.000 }, level = 16, drop_tag = "战斗低级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 102 },
	{ config_id = 158008, gadget_id = 70950087, pos = { x = 889.533, y = 120.000, z = 231.716 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 158009, gadget_id = 70950087, pos = { x = 879.301, y = 120.000, z = 217.979 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 158010, gadget_id = 70950087, pos = { x = 883.459, y = 120.000, z = 251.085 }, rot = { x = 0.000, y = 94.735, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 158011, gadget_id = 70950087, pos = { x = 856.216, y = 120.000, z = 230.071 }, rot = { x = 0.000, y = 24.706, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 158012, gadget_id = 70950087, pos = { x = 855.864, y = 120.000, z = 245.942 }, rot = { x = 0.000, y = 275.555, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 158013, gadget_id = 70290057, pos = { x = 852.054, y = 120.000, z = 236.898 }, rot = { x = 0.000, y = 97.089, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 158014, gadget_id = 70290057, pos = { x = 888.961, y = 119.451, z = 243.896 }, rot = { x = 0.000, y = 66.343, z = 0.000 }, level = 1, area_id = 102 }
}

-- 区域
regions = {
	{ config_id = 158015, shape = RegionShape.SPHERE, radius = 5, pos = { x = 743.367, y = 120.000, z = 244.404 }, area_id = 102 }
}

-- 触发器
triggers = {
	{ config_id = 1158001, name = "ANY_MONSTER_DIE_158001", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_158001", action = "action_EVENT_ANY_MONSTER_DIE_158001" },
	{ config_id = 1158015, name = "ENTER_REGION_158015", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" }
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
		monsters = { 158003, 158004, 158005, 158006, 158007 },
		gadgets = { 158002, 158008, 158009, 158010, 158011, 158012, 158013, 158014 },
		regions = { 158015 },
		triggers = { "ANY_MONSTER_DIE_158001", "ENTER_REGION_158015" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_158001(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_158001(context, evt)
	-- 将configid为 158002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 158002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end