-- 基础信息
local base_info = {
	group_id = 133104294
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 294001, monster_id = 21020301, pos = { x = 370.512, y = 207.457, z = 632.725 }, rot = { x = 0.000, y = 136.040, z = 0.000 }, level = 20, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, area_id = 6 },
	{ config_id = 294004, monster_id = 21011001, pos = { x = 367.183, y = 212.828, z = 611.755 }, rot = { x = 0.000, y = 93.242, z = 0.000 }, level = 19, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003, area_id = 6 },
	{ config_id = 294005, monster_id = 21030401, pos = { x = 365.331, y = 207.450, z = 618.895 }, rot = { x = 0.000, y = 93.242, z = 0.000 }, level = 19, drop_tag = "丘丘萨满", disableWander = true, area_id = 6 },
	{ config_id = 294006, monster_id = 21011201, pos = { x = 377.714, y = 206.018, z = 618.550 }, rot = { x = 0.000, y = 113.206, z = 0.000 }, level = 19, drop_tag = "丘丘人", disableWander = true, pose_id = 9003, area_id = 6 },
	{ config_id = 294007, monster_id = 21010301, pos = { x = 374.817, y = 205.856, z = 614.799 }, rot = { x = 0.000, y = 93.242, z = 0.000 }, level = 19, drop_tag = "丘丘人", disableWander = true, pose_id = 9003, area_id = 6 },
	{ config_id = 294008, monster_id = 21011001, pos = { x = 387.584, y = 212.828, z = 633.416 }, rot = { x = 0.407, y = 70.826, z = 1.692 }, level = 19, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003, area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 294002, gadget_id = 70211012, pos = { x = 379.666, y = 207.450, z = 630.321 }, rot = { x = 0.000, y = 205.128, z = 0.000 }, level = 16, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 },
	{ config_id = 294009, gadget_id = 70220013, pos = { x = 368.323, y = 207.450, z = 619.944 }, rot = { x = 350.730, y = 359.654, z = 4.270 }, level = 19, area_id = 6 },
	{ config_id = 294010, gadget_id = 70220013, pos = { x = 374.606, y = 205.856, z = 609.688 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, area_id = 6 },
	{ config_id = 294011, gadget_id = 70220013, pos = { x = 375.740, y = 205.889, z = 612.020 }, rot = { x = 0.000, y = 25.795, z = 0.000 }, level = 19, area_id = 6 },
	{ config_id = 294012, gadget_id = 70220014, pos = { x = 376.723, y = 205.856, z = 609.744 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, area_id = 6 },
	{ config_id = 294013, gadget_id = 70310006, pos = { x = 383.687, y = 207.493, z = 636.351 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1294003, name = "ANY_MONSTER_DIE_294003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_294003", action = "action_EVENT_ANY_MONSTER_DIE_294003" }
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
		-- description = suite_1,
		monsters = { 294001, 294004, 294005, 294006, 294007, 294008 },
		gadgets = { 294002, 294009, 294010, 294011, 294012, 294013 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_294003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_294003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_294003(context, evt)
	-- 将configid为 294002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 294002, GadgetState.Default) then
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