-- 基础信息
local base_info = {
	group_id = 133008114
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 114001, monster_id = 23010601, pos = { x = 1335.244, y = 314.938, z = -857.068 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "先遣队", disableWander = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 114005, monster_id = 23010101, pos = { x = 1334.747, y = 316.031, z = -840.764 }, rot = { x = 0.000, y = 305.954, z = 0.000 }, level = 30, drop_tag = "先遣队", disableWander = true, pose_id = 9011, climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 114002, gadget_id = 70211012, pos = { x = 1336.628, y = 316.232, z = -843.344 }, rot = { x = 0.000, y = 290.701, z = 0.000 }, level = 26, drop_tag = "雪山战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1114003, name = "ANY_MONSTER_DIE_114003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_114003", action = "action_EVENT_ANY_MONSTER_DIE_114003" }
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
		monsters = { 114001, 114005 },
		gadgets = { 114002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_114003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_114003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_114003(context, evt)
	-- 将configid为 114002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 114002, GadgetState.Default) then
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