-- 基础信息
local base_info = {
	group_id = 133106458
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 458001, monster_id = 21010901, pos = { x = -932.044, y = 210.758, z = 1863.381 }, rot = { x = 0.000, y = 72.834, z = 0.000 }, level = 36, drop_tag = "远程丘丘人", pose_id = 32, area_id = 19 },
	{ config_id = 458004, monster_id = 21010501, pos = { x = -906.176, y = 204.328, z = 1865.736 }, rot = { x = 0.000, y = 130.034, z = 0.000 }, level = 36, drop_tag = "远程丘丘人", disableWander = true, pose_id = 32, area_id = 19 },
	{ config_id = 458005, monster_id = 21030401, pos = { x = -914.557, y = 201.124, z = 1877.030 }, rot = { x = 0.000, y = 167.802, z = 0.000 }, level = 36, drop_tag = "丘丘萨满", area_id = 19 },
	{ config_id = 458007, monster_id = 21020301, pos = { x = -919.126, y = 201.051, z = 1865.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "丘丘暴徒", area_id = 19 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 458002, gadget_id = 70211012, pos = { x = -915.244, y = 201.224, z = 1872.622 }, rot = { x = 6.085, y = 101.426, z = 356.394 }, level = 26, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 19 },
	{ config_id = 458008, gadget_id = 70300085, pos = { x = -915.481, y = 200.797, z = 1872.794 }, rot = { x = 355.454, y = 0.616, z = 354.449 }, level = 36, area_id = 19 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1458003, name = "ANY_MONSTER_DIE_458003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_458003", action = "action_EVENT_ANY_MONSTER_DIE_458003" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 458006, monster_id = 21010101, pos = { x = -904.700, y = 194.485, z = 1856.801 }, rot = { x = 0.000, y = 36.385, z = 0.000 }, level = 36, drop_tag = "丘丘人", disableWander = true, pose_id = 9016, area_id = 19 }
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
		monsters = { 458001, 458004, 458005, 458007 },
		gadgets = { 458002, 458008 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_458003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_458003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_458003(context, evt)
	-- 将configid为 458002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 458002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4000, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end