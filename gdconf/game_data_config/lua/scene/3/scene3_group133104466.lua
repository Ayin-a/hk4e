-- 基础信息
local base_info = {
	group_id = 133104466
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 466001, monster_id = 25030201, pos = { x = 43.944, y = 224.083, z = 775.120 }, rot = { x = 0.000, y = 235.032, z = 0.000 }, level = 24, drop_tag = "盗宝团", disableWander = true, pose_id = 9005, area_id = 9 },
	{ config_id = 466004, monster_id = 25010401, pos = { x = 41.841, y = 224.083, z = 769.916 }, rot = { x = 0.000, y = 359.227, z = 0.000 }, level = 19, drop_tag = "盗宝团", disableWander = true, pose_id = 9004, area_id = 9 },
	{ config_id = 466005, monster_id = 25010501, pos = { x = 38.088, y = 224.366, z = 769.839 }, rot = { x = 0.000, y = 52.711, z = 0.000 }, level = 24, drop_tag = "盗宝团", pose_id = 9004, area_id = 9 },
	{ config_id = 466006, monster_id = 25010201, pos = { x = 37.930, y = 224.008, z = 773.549 }, rot = { x = 0.000, y = 101.819, z = 0.000 }, level = 24, drop_tag = "盗宝团", pose_id = 9004, area_id = 9 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 466002, gadget_id = 70211012, pos = { x = 30.405, y = 224.008, z = 770.664 }, rot = { x = 0.000, y = 118.534, z = 0.000 }, level = 16, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 9 },
	{ config_id = 466007, gadget_id = 70310006, pos = { x = 41.469, y = 224.083, z = 772.764 }, rot = { x = 0.000, y = 61.067, z = 0.000 }, level = 19, area_id = 9 },
	{ config_id = 466008, gadget_id = 70220013, pos = { x = 40.219, y = 224.008, z = 777.686 }, rot = { x = 0.000, y = 28.037, z = 0.000 }, level = 24, area_id = 9 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1466003, name = "ANY_MONSTER_DIE_466003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_466003", action = "action_EVENT_ANY_MONSTER_DIE_466003" }
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
		monsters = { 466001, 466005, 466006 },
		gadgets = { 466002, 466007, 466008 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_466003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_466003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_466003(context, evt)
	-- 将configid为 466002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 466002, GadgetState.Default) then
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