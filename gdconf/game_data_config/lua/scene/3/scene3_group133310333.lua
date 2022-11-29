-- 基础信息
local base_info = {
	group_id = 133310333
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 333002, monster_id = 25210301, pos = { x = -2433.927, y = 115.810, z = 4704.820 }, rot = { x = 0.000, y = 81.748, z = 0.000 }, level = 32, drop_tag = "镀金旅团", pose_id = 9511, area_id = 26 },
	{ config_id = 333005, monster_id = 25210401, pos = { x = -2431.647, y = 115.739, z = 4705.754 }, rot = { x = 0.000, y = 253.744, z = 0.000 }, level = 32, drop_tag = "镀金旅团", disableWander = true, pose_id = 9512, area_id = 26 },
	{ config_id = 333007, monster_id = 25210501, pos = { x = -2451.958, y = 113.163, z = 4716.665 }, rot = { x = 0.000, y = 11.655, z = 0.000 }, level = 32, drop_tag = "镀金旅团", disableWander = true, area_id = 26 },
	{ config_id = 333008, monster_id = 28060510, pos = { x = -2451.229, y = 116.035, z = 4701.925 }, rot = { x = 0.000, y = 108.280, z = 0.000 }, level = 32, drop_tag = "走兽", disableWander = true, pose_id = 4, area_id = 26 },
	{ config_id = 333012, monster_id = 25210402, pos = { x = -2426.748, y = 114.497, z = 4717.802 }, rot = { x = 0.000, y = 195.781, z = 0.000 }, level = 32, drop_tag = "镀金旅团", pose_id = 9001, area_id = 26 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 333001, gadget_id = 70330426, pos = { x = -2428.447, y = 116.208, z = 4703.652 }, rot = { x = 357.391, y = 359.086, z = 7.912 }, level = 32, area_id = 26 },
	{ config_id = 333003, gadget_id = 70220128, pos = { x = -2432.855, y = 115.684, z = 4705.099 }, rot = { x = 11.918, y = 344.066, z = 359.684 }, level = 32, area_id = 26 },
	{ config_id = 333004, gadget_id = 70330397, pos = { x = -2416.888, y = 116.505, z = 4718.277 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, state = GadgetState.GearStart, area_id = 26 },
	{ config_id = 333006, gadget_id = 70330397, pos = { x = -2445.300, y = 114.215, z = 4709.351 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, state = GadgetState.GearStart, area_id = 26 },
	{ config_id = 333009, gadget_id = 70211002, pos = { x = -2433.415, y = 117.370, z = 4699.770 }, rot = { x = 6.050, y = 50.998, z = 1.143 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 26 },
	{ config_id = 333011, gadget_id = 70210101, pos = { x = -2439.829, y = 117.330, z = 4701.847 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用须弥", persistent = true, area_id = 26 },
	{ config_id = 333013, gadget_id = 70330428, pos = { x = -2436.716, y = 116.310, z = 4700.633 }, rot = { x = 11.484, y = 359.980, z = 2.626 }, level = 32, area_id = 26 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1333010, name = "ANY_MONSTER_DIE_333010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_333010", action = "action_EVENT_ANY_MONSTER_DIE_333010" }
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
		monsters = { 333002, 333005, 333007, 333008, 333012 },
		gadgets = { 333001, 333003, 333004, 333006, 333009, 333011, 333013 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_333010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_333010(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_333010(context, evt)
	-- 将configid为 333009 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 333009, GadgetState.Default) then
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