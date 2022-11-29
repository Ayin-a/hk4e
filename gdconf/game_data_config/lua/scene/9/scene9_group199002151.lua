-- 基础信息
local base_info = {
	group_id = 199002151
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 151006, monster_id = 21020101, pos = { x = -44.504, y = 120.750, z = -823.039 }, rot = { x = 0.000, y = 4.088, z = 0.000 }, level = 20, drop_tag = "丘丘暴徒", pose_id = 401, area_id = 401 },
	{ config_id = 151009, monster_id = 21010101, pos = { x = -40.723, y = 120.500, z = -819.329 }, rot = { x = 0.000, y = 285.108, z = 0.000 }, level = 20, drop_tag = "丘丘人", area_id = 401 },
	{ config_id = 151010, monster_id = 21010301, pos = { x = -55.525, y = 120.900, z = -816.190 }, rot = { x = 0.000, y = 314.695, z = 0.000 }, level = 20, drop_tag = "丘丘人", pose_id = 9011, area_id = 401 },
	{ config_id = 151011, monster_id = 21020201, pos = { x = -50.047, y = 121.060, z = -820.865 }, rot = { x = 0.000, y = 338.360, z = 0.000 }, level = 20, drop_tag = "丘丘暴徒", pose_id = 401, area_id = 401 },
	{ config_id = 151012, monster_id = 20011001, pos = { x = -56.315, y = 121.652, z = -814.773 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_tag = "史莱姆", disableWander = true, area_id = 401 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 151001, gadget_id = 70300083, pos = { x = -53.936, y = 120.718, z = -823.457 }, rot = { x = 0.000, y = 23.118, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 151002, gadget_id = 70300081, pos = { x = -37.909, y = 120.416, z = -823.738 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 151003, gadget_id = 70300086, pos = { x = -48.661, y = 120.705, z = -825.229 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 151004, gadget_id = 70300081, pos = { x = -64.641, y = 120.449, z = -813.492 }, rot = { x = 0.000, y = 228.183, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 151005, gadget_id = 70211012, pos = { x = -47.679, y = 121.008, z = -820.325 }, rot = { x = 0.000, y = 13.832, z = 0.000 }, level = 16, drop_tag = "战斗中级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, explore = { name = "chest", exp = 1 }, area_id = 401 },
	{ config_id = 151007, gadget_id = 70300085, pos = { x = -56.419, y = 120.713, z = -814.874 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 151008, gadget_id = 70300087, pos = { x = -56.313, y = 121.189, z = -814.803 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1151013, name = "ANY_MONSTER_DIE_151013", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_151013", action = "action_EVENT_ANY_MONSTER_DIE_151013" }
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
		monsters = { 151006, 151009, 151010, 151011, 151012 },
		gadgets = { 151001, 151002, 151003, 151004, 151005, 151007, 151008 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_151013" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_151013(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_151013(context, evt)
	-- 将configid为 151005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 151005, GadgetState.Default) then
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