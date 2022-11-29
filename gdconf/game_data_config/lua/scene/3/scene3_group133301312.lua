-- 基础信息
local base_info = {
	group_id = 133301312
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 312001, monster_id = 21011001, pos = { x = -822.512, y = 223.448, z = 3199.198 }, rot = { x = 0.000, y = 158.788, z = 0.000 }, level = 30, drop_tag = "远程丘丘人", disableWander = true, affix = { 1010, 1033 }, pose_id = 9003, area_id = 23 },
	{ config_id = 312004, monster_id = 21020801, pos = { x = -825.772, y = 216.818, z = 3189.793 }, rot = { x = 0.000, y = 319.620, z = 0.000 }, level = 30, drop_tag = "丘丘岩盔王", disableWander = true, affix = { 1011, 1033 }, pose_id = 401, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 312002, gadget_id = 70300088, pos = { x = -827.447, y = 224.375, z = 3201.510 }, rot = { x = 0.000, y = 59.990, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 312005, gadget_id = 70300086, pos = { x = -824.137, y = 217.557, z = 3192.820 }, rot = { x = 3.070, y = 44.229, z = 356.852 }, level = 30, area_id = 23 },
	{ config_id = 312006, gadget_id = 70300086, pos = { x = -823.706, y = 217.545, z = 3182.747 }, rot = { x = 355.157, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 312007, gadget_id = 70211012, pos = { x = -820.126, y = 222.605, z = 3196.088 }, rot = { x = 359.981, y = 342.556, z = 359.352 }, level = 26, drop_tag = "战斗中级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, explore = { name = "chest", exp = 10 }, area_id = 23 },
	{ config_id = 312008, gadget_id = 70310001, pos = { x = -820.927, y = 217.640, z = 3190.345 }, rot = { x = 358.439, y = 83.425, z = 357.472 }, level = 30, state = GadgetState.GearStart, area_id = 23 },
	{ config_id = 312009, gadget_id = 70310004, pos = { x = -822.217, y = 223.075, z = 3197.878 }, rot = { x = 9.640, y = 142.017, z = 359.045 }, level = 30, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1312003, name = "ANY_MONSTER_DIE_312003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_312003", action = "action_EVENT_ANY_MONSTER_DIE_312003" }
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
		monsters = { 312001, 312004 },
		gadgets = { 312002, 312005, 312006, 312007, 312008, 312009 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_312003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_312003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_312003(context, evt)
	-- 将configid为 312007 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 312007, GadgetState.Default) then
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