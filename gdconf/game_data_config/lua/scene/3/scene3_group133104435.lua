-- 基础信息
local base_info = {
	group_id = 133104435
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 435001, monster_id = 21030101, pos = { x = 467.637, y = 203.249, z = 305.640 }, rot = { x = 0.000, y = 160.998, z = 0.000 }, level = 19, drop_tag = "丘丘萨满", disableWander = true, area_id = 9 },
	{ config_id = 435004, monster_id = 21020101, pos = { x = 461.393, y = 202.956, z = 292.808 }, rot = { x = 0.000, y = 171.879, z = 0.000 }, level = 19, drop_tag = "丘丘暴徒", disableWander = true, area_id = 9 },
	{ config_id = 435006, monster_id = 21010901, pos = { x = 462.380, y = 204.918, z = 298.003 }, rot = { x = 0.000, y = 131.658, z = 0.000 }, level = 19, drop_tag = "远程丘丘人", disableWander = true, area_id = 9 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 435002, gadget_id = 70211012, pos = { x = 469.507, y = 203.353, z = 308.206 }, rot = { x = 8.017, y = 179.808, z = 3.515 }, level = 16, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 9 },
	{ config_id = 435008, gadget_id = 70220013, pos = { x = 464.654, y = 203.311, z = 301.948 }, rot = { x = 10.796, y = 123.656, z = 359.750 }, level = 19, area_id = 9 },
	{ config_id = 435010, gadget_id = 70220005, pos = { x = 473.669, y = 201.936, z = 299.826 }, rot = { x = 0.000, y = 95.000, z = 0.000 }, level = 19, area_id = 9 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1435003, name = "ANY_MONSTER_DIE_435003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_435003", action = "action_EVENT_ANY_MONSTER_DIE_435003" }
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
		monsters = { 435001, 435004, 435006 },
		gadgets = { 435002, 435008, 435010 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_435003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_435003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_435003(context, evt)
	-- 将configid为 435002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 435002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end