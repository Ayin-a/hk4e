-- 基础信息
local base_info = {
	group_id = 133106466
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 466001, monster_id = 25070101, pos = { x = -624.475, y = 139.308, z = 1676.178 }, rot = { x = 0.000, y = 42.069, z = 0.000 }, level = 36, drop_tag = "盗宝团", disableWander = true, pose_id = 9006, area_id = 19 },
	{ config_id = 466004, monster_id = 25010501, pos = { x = -623.262, y = 139.259, z = 1677.404 }, rot = { x = 0.000, y = 208.354, z = 0.000 }, level = 36, drop_tag = "盗宝团", pose_id = 9006, area_id = 19 },
	{ config_id = 466005, monster_id = 25030301, pos = { x = -609.085, y = 139.835, z = 1691.991 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "盗宝团", pose_id = 9003, area_id = 19 },
	{ config_id = 466006, monster_id = 25070101, pos = { x = -614.244, y = 139.228, z = 1685.589 }, rot = { x = 0.000, y = 64.543, z = 0.000 }, level = 36, drop_tag = "盗宝团", area_id = 19 },
	{ config_id = 466007, monster_id = 25060101, pos = { x = -605.437, y = 139.922, z = 1691.179 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "盗宝团", pose_id = 9101, area_id = 19 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 466002, gadget_id = 70211002, pos = { x = -630.944, y = 139.265, z = 1679.877 }, rot = { x = 358.981, y = 98.440, z = 0.960 }, level = 26, drop_tag = "战斗低级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 19 },
	{ config_id = 466008, gadget_id = 70310010, pos = { x = -623.299, y = 139.101, z = 1688.014 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, state = GadgetState.GearStart, persistent = true, area_id = 19 }
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
		monsters = { 466001, 466004, 466005, 466006, 466007 },
		gadgets = { 466002, 466008 },
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
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4001, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end