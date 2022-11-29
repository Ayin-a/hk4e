-- 基础信息
local base_info = {
	group_id = 133008027
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 27001, monster_id = 25010401, pos = { x = 1527.237, y = 271.585, z = -863.050 }, rot = { x = 0.000, y = 57.019, z = 0.000 }, level = 30, drop_tag = "盗宝团", disableWander = true, pose_id = 9005, climate_area_id = 1, area_id = 10 },
	{ config_id = 27004, monster_id = 25030201, pos = { x = 1538.043, y = 271.102, z = -863.499 }, rot = { x = 0.000, y = 211.162, z = 0.000 }, level = 30, drop_tag = "盗宝团", disableWander = true, pose_id = 9008, climate_area_id = 1, area_id = 10 },
	{ config_id = 27005, monster_id = 25010401, pos = { x = 1535.682, y = 271.632, z = -854.613 }, rot = { x = 0.000, y = 316.593, z = 0.000 }, level = 30, drop_tag = "盗宝团", disableWander = true, pose_id = 2, climate_area_id = 1, area_id = 10 },
	{ config_id = 27006, monster_id = 25070101, pos = { x = 1535.659, y = 271.133, z = -864.053 }, rot = { x = 0.000, y = 76.225, z = 0.000 }, level = 30, drop_tag = "盗宝团", disableWander = true, pose_id = 9009, climate_area_id = 1, area_id = 10 },
	{ config_id = 27007, monster_id = 25010401, pos = { x = 1537.843, y = 270.818, z = -866.298 }, rot = { x = 0.000, y = 335.137, z = 0.000 }, level = 30, drop_tag = "盗宝团", disableWander = true, pose_id = 9002, climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 27002, gadget_id = 70211022, pos = { x = 1529.623, y = 271.390, z = -865.213 }, rot = { x = 1.309, y = 53.878, z = 355.728 }, level = 26, drop_tag = "雪山战斗高级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1027003, name = "ANY_MONSTER_DIE_27003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_27003", action = "action_EVENT_ANY_MONSTER_DIE_27003" }
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
		monsters = { 27001, 27004, 27005, 27006, 27007 },
		gadgets = { 27002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_27003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_27003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_27003(context, evt)
	-- 将configid为 27002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 27002, GadgetState.Default) then
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