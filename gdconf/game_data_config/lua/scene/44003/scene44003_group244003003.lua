-- 基础信息
local base_info = {
	group_id = 244003003
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 3001, monster_id = 20010901, pos = { x = -189.180, y = 25.527, z = 132.876 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, affix = { 4116 } },
	{ config_id = 3002, monster_id = 20010901, pos = { x = -191.793, y = 25.555, z = 132.914 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, affix = { 4116 } },
	{ config_id = 3003, monster_id = 20010801, pos = { x = -194.312, y = 25.569, z = 131.636 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, affix = { 4116 } },
	{ config_id = 3004, monster_id = 20010801, pos = { x = -187.089, y = 25.503, z = 131.630 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, affix = { 4116 } }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3005, gadget_id = 70350005, pos = { x = -190.430, y = 25.232, z = 140.716 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1003006, name = "ANY_MONSTER_DIE_3006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_3006", action = "action_EVENT_ANY_MONSTER_DIE_3006" }
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
		monsters = { },
		gadgets = { 3005 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_3006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 3001, 3002, 3003, 3004 },
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
function condition_EVENT_ANY_MONSTER_DIE_3006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_3006(context, evt)
	-- 将configid为 3005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 244003008, 5)
	
	return 0
end