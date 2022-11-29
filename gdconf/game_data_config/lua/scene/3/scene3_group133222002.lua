-- 基础信息
local base_info = {
	group_id = 133222002
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 2001, monster_id = 25060101, pos = { x = -4672.398, y = 201.908, z = -4518.389 }, rot = { x = 5.407, y = 95.152, z = 349.855 }, level = 30, drop_tag = "盗宝团", pose_id = 4, climate_area_id = 10, area_id = 14 },
	{ config_id = 2004, monster_id = 25060101, pos = { x = -4671.491, y = 205.630, z = -4511.473 }, rot = { x = 0.000, y = 351.760, z = 0.000 }, level = 30, drop_tag = "盗宝团", pose_id = 4, climate_area_id = 10, area_id = 14 },
	{ config_id = 2005, monster_id = 25080201, pos = { x = -4666.240, y = 201.097, z = -4521.882 }, rot = { x = 0.000, y = 302.785, z = 0.000 }, level = 30, drop_tag = "浪人武士", pose_id = 1006, climate_area_id = 10, area_id = 14 },
	{ config_id = 2006, monster_id = 25080201, pos = { x = -4671.506, y = 205.676, z = -4503.856 }, rot = { x = 0.000, y = 177.698, z = 0.000 }, level = 30, drop_tag = "浪人武士", pose_id = 1006, climate_area_id = 10, area_id = 14 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 2002, gadget_id = 70211002, pos = { x = -4671.501, y = 205.784, z = -4514.154 }, rot = { x = 3.702, y = 358.088, z = 11.731 }, level = 26, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1002003, name = "ANY_MONSTER_DIE_2003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_2003", action = "action_EVENT_ANY_MONSTER_DIE_2003" }
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
	suite = 2,
	end_suite = 1,
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
		monsters = { 2001, 2004, 2005, 2006 },
		gadgets = { 2002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_2003" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
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
function condition_EVENT_ANY_MONSTER_DIE_2003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_2003(context, evt)
	-- 将configid为 2002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2002, GadgetState.Default) then
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