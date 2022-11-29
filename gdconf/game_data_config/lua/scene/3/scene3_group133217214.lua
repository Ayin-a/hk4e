-- 基础信息
local base_info = {
	group_id = 133217214
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 214001, monster_id = 25080201, pos = { x = -4688.110, y = 200.412, z = -3957.878 }, rot = { x = 0.000, y = 92.221, z = 0.000 }, level = 30, drop_tag = "浪人武士", disableWander = true, pose_id = 1001, climate_area_id = 10, area_id = 14 },
	{ config_id = 214005, monster_id = 25080301, pos = { x = -4684.654, y = 200.091, z = -3960.442 }, rot = { x = 0.000, y = 292.998, z = 0.000 }, level = 30, drop_tag = "浪人武士", disableWander = true, pose_id = 1003, climate_area_id = 10, area_id = 14 },
	{ config_id = 214006, monster_id = 25010501, pos = { x = -4695.348, y = 200.609, z = -3954.616 }, rot = { x = 0.000, y = 94.339, z = 0.000 }, level = 30, drop_tag = "盗宝团", disableWander = true, climate_area_id = 10, area_id = 14 },
	{ config_id = 214007, monster_id = 25010301, pos = { x = -4692.981, y = 201.389, z = -3969.917 }, rot = { x = 0.000, y = 228.397, z = 0.000 }, level = 30, drop_tag = "盗宝团", disableWander = true, pose_id = 9003, climate_area_id = 10, area_id = 14 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 214002, gadget_id = 70211002, pos = { x = -4671.340, y = 200.424, z = -3950.158 }, rot = { x = 10.746, y = 236.714, z = 359.794 }, level = 26, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 14 },
	{ config_id = 214004, gadget_id = 70310009, pos = { x = -4688.043, y = 200.683, z = -3961.505 }, rot = { x = 0.000, y = 52.985, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 214008, gadget_id = 70220050, pos = { x = -4682.629, y = 199.537, z = -3965.305 }, rot = { x = 16.514, y = 0.000, z = 347.101 }, level = 30, area_id = 14 },
	{ config_id = 214009, gadget_id = 70220051, pos = { x = -4682.675, y = 199.709, z = -3963.786 }, rot = { x = 0.000, y = 0.000, z = 12.862 }, level = 30, area_id = 14 },
	{ config_id = 214010, gadget_id = 70220048, pos = { x = -4683.911, y = 200.198, z = -3964.976 }, rot = { x = 0.000, y = 25.892, z = 0.000 }, level = 30, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1214003, name = "ANY_MONSTER_DIE_214003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_214003", action = "action_EVENT_ANY_MONSTER_DIE_214003" }
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
		monsters = { 214001, 214005, 214006, 214007 },
		gadgets = { 214002, 214004, 214008, 214009, 214010 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_214003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_214003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_214003(context, evt)
	-- 将configid为 214002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 214002, GadgetState.Default) then
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