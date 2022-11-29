-- 基础信息
local base_info = {
	group_id = 133008029
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 29001, monster_id = 23010401, pos = { x = 1394.955, y = 286.393, z = -1051.324 }, rot = { x = 0.000, y = 129.937, z = 0.000 }, level = 30, drop_tag = "先遣队", disableWander = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 29004, monster_id = 23010601, pos = { x = 1397.384, y = 284.759, z = -1036.956 }, rot = { x = 0.000, y = 67.303, z = 0.000 }, level = 30, drop_tag = "先遣队", disableWander = true, pose_id = 9002, climate_area_id = 1, area_id = 10 },
	{ config_id = 29005, monster_id = 23010301, pos = { x = 1387.708, y = 286.485, z = -1046.038 }, rot = { x = 6.365, y = 64.435, z = 0.907 }, level = 30, drop_tag = "先遣队", disableWander = true, climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 29002, gadget_id = 70211022, pos = { x = 1383.899, y = 286.747, z = -1046.374 }, rot = { x = 2.543, y = 97.547, z = 1.239 }, level = 26, drop_tag = "雪山战斗高级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 10 },
	{ config_id = 29007, gadget_id = 70310018, pos = { x = 1397.791, y = 286.372, z = -1049.733 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1029003, name = "ANY_MONSTER_DIE_29003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_29003", action = "action_EVENT_ANY_MONSTER_DIE_29003" }
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
		monsters = { 29001, 29004, 29005 },
		gadgets = { 29002, 29007 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_29003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_29003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_29003(context, evt)
	-- 将configid为 29002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 29002, GadgetState.Default) then
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