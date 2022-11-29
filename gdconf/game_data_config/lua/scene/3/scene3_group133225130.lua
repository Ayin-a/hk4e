-- 基础信息
local base_info = {
	group_id = 133225130
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 130001, monster_id = 21010301, pos = { x = -6422.059, y = 256.766, z = -2561.794 }, rot = { x = 0.000, y = 111.963, z = 0.000 }, level = 33, drop_tag = "丘丘人", pose_id = 9016, climate_area_id = 7, area_id = 18 },
	{ config_id = 130004, monster_id = 21030601, pos = { x = -6426.623, y = 256.598, z = -2566.663 }, rot = { x = 0.000, y = 103.477, z = 0.000 }, level = 33, drop_tag = "丘丘萨满", pose_id = 9012, climate_area_id = 7, area_id = 18 },
	{ config_id = 130006, monster_id = 21010201, pos = { x = -6426.402, y = 256.459, z = -2563.847 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "丘丘人", pose_id = 9003, climate_area_id = 7, area_id = 18 },
	{ config_id = 130007, monster_id = 21010301, pos = { x = -6428.322, y = 255.976, z = -2562.709 }, rot = { x = 0.000, y = 71.134, z = 0.000 }, level = 33, drop_tag = "丘丘人", pose_id = 9012, climate_area_id = 7, area_id = 18 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 130002, gadget_id = 70211002, pos = { x = -6422.729, y = 256.919, z = -2567.297 }, rot = { x = 0.000, y = 321.800, z = 0.000 }, level = 26, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 },
	{ config_id = 130005, gadget_id = 70310004, pos = { x = -6426.524, y = 256.323, z = -2561.712 }, rot = { x = 11.012, y = 0.000, z = 0.000 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 },
	{ config_id = 130008, gadget_id = 70220013, pos = { x = -6420.843, y = 256.524, z = -2567.913 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 130009, gadget_id = 70220014, pos = { x = -6421.884, y = 256.775, z = -2566.184 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 130010, gadget_id = 70220014, pos = { x = -6420.651, y = 256.624, z = -2566.437 }, rot = { x = 15.356, y = 327.111, z = 351.917 }, level = 33, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1130003, name = "ANY_MONSTER_DIE_130003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_130003", action = "action_EVENT_ANY_MONSTER_DIE_130003" }
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
		monsters = { 130001, 130004, 130006, 130007 },
		gadgets = { 130002, 130005, 130008, 130009, 130010 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_130003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_130003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_130003(context, evt)
	-- 将configid为 130002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 130002, GadgetState.Default) then
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