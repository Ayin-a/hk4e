-- 基础信息
local base_info = {
	group_id = 133301055
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 55001, monster_id = 21020501, pos = { x = -829.725, y = 259.597, z = 3435.053 }, rot = { x = 0.000, y = 296.189, z = 0.000 }, level = 33, drop_tag = "丘丘岩盔王", disableWander = true, pose_id = 401, area_id = 23 },
	{ config_id = 55004, monster_id = 21010401, pos = { x = -833.387, y = 267.388, z = 3426.638 }, rot = { x = 0.000, y = 24.315, z = 0.000 }, level = 33, drop_tag = "远程丘丘人", disableWander = true, pose_id = 402, area_id = 23 },
	{ config_id = 55005, monster_id = 21010401, pos = { x = -840.485, y = 264.158, z = 3461.714 }, rot = { x = 0.000, y = 147.386, z = 0.000 }, level = 33, drop_tag = "远程丘丘人", disableWander = true, pose_id = 402, area_id = 23 },
	{ config_id = 55006, monster_id = 21020301, pos = { x = -862.216, y = 264.523, z = 3441.604 }, rot = { x = 0.000, y = 85.020, z = 0.000 }, level = 30, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, area_id = 23 },
	{ config_id = 55007, monster_id = 21010501, pos = { x = -817.683, y = 260.055, z = 3432.484 }, rot = { x = 0.000, y = 26.790, z = 0.000 }, level = 33, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9013, area_id = 23 },
	{ config_id = 55008, monster_id = 21011201, pos = { x = -844.359, y = 260.517, z = 3435.672 }, rot = { x = 0.000, y = 196.826, z = 0.000 }, level = 33, drop_tag = "丘丘人", pose_id = 9012, area_id = 23 },
	{ config_id = 55009, monster_id = 21011201, pos = { x = -845.529, y = 260.621, z = 3430.972 }, rot = { x = 0.000, y = 51.023, z = 0.000 }, level = 30, drop_tag = "丘丘人", pose_id = 9012, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 55002, gadget_id = 70211012, pos = { x = -847.513, y = 261.006, z = 3444.629 }, rot = { x = 359.095, y = 78.833, z = 359.646 }, level = 26, drop_tag = "战斗中级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 23 },
	{ config_id = 55010, gadget_id = 70310009, pos = { x = -847.131, y = 260.819, z = 3433.753 }, rot = { x = 4.340, y = 112.428, z = 357.593 }, level = 33, area_id = 23 },
	{ config_id = 55012, gadget_id = 70220013, pos = { x = -857.686, y = 261.571, z = 3451.592 }, rot = { x = 0.000, y = 65.147, z = 0.000 }, level = 33, area_id = 23 },
	{ config_id = 55013, gadget_id = 70220013, pos = { x = -854.052, y = 261.438, z = 3450.662 }, rot = { x = 3.505, y = 340.454, z = 351.239 }, level = 33, area_id = 23 },
	{ config_id = 55014, gadget_id = 70220013, pos = { x = -860.243, y = 264.532, z = 3436.600 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 55015, gadget_id = 70220013, pos = { x = -852.365, y = 261.076, z = 3432.299 }, rot = { x = 0.000, y = 30.697, z = 0.000 }, level = 30, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1055003, name = "ANY_MONSTER_DIE_55003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_55003", action = "action_EVENT_ANY_MONSTER_DIE_55003" },
	{ config_id = 1055011, name = "ANY_MONSTER_DIE_55011", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_55011", action = "action_EVENT_ANY_MONSTER_DIE_55011" }
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
		monsters = { 55004, 55005, 55006, 55007, 55008, 55009 },
		gadgets = { 55002, 55010, 55012, 55013, 55014, 55015 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_55011" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 55001 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_55003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_55003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_55003(context, evt)
	-- 将configid为 55002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 55002, GadgetState.Default) then
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

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_55011(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_55011(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133301055, 2)
	
	return 0
end