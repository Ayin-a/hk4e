-- 基础信息
local base_info = {
	group_id = 133008230
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 230001, monster_id = 21020601, pos = { x = 756.454, y = 201.111, z = -1097.435 }, rot = { x = 0.000, y = 154.070, z = 0.000 }, level = 30, drop_tag = "丘丘暴徒", disableWander = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 230004, monster_id = 21020601, pos = { x = 758.127, y = 200.979, z = -1100.485 }, rot = { x = 0.000, y = 337.215, z = 0.000 }, level = 30, drop_tag = "丘丘暴徒", disableWander = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 230005, monster_id = 21010901, pos = { x = 778.053, y = 206.658, z = -1108.322 }, rot = { x = 0.000, y = 273.275, z = 0.000 }, level = 30, drop_tag = "远程丘丘人", disableWander = true, pose_id = 32, climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 230002, gadget_id = 70211146, pos = { x = 749.197, y = 201.372, z = -1103.117 }, rot = { x = 0.000, y = 67.687, z = 0.000 }, level = 26, drop_tag = "雪山玉髓高级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 10 },
	{ config_id = 230006, gadget_id = 70310015, pos = { x = 759.627, y = 200.873, z = -1122.456 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStart, persistent = true, area_id = 10 },
	{ config_id = 230007, gadget_id = 70310015, pos = { x = 758.352, y = 201.114, z = -1088.588 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStart, persistent = true, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1230003, name = "ANY_MONSTER_DIE_230003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_230003", action = "action_EVENT_ANY_MONSTER_DIE_230003" }
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
		monsters = { 230001, 230004, 230005 },
		gadgets = { 230002, 230006, 230007 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_230003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_230003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_230003(context, evt)
	-- 将configid为 230002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 230002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4001, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end