-- 基础信息
local base_info = {
	group_id = 133310406
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 406004, monster_id = 21010501, pos = { x = -2920.562, y = 219.548, z = 5038.168 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "远程丘丘人", disableWander = true, pose_id = 32, area_id = 27 },
	{ config_id = 406007, monster_id = 21020201, pos = { x = -2914.433, y = 213.151, z = 5043.852 }, rot = { x = 0.000, y = 283.950, z = 0.000 }, level = 32, drop_tag = "丘丘暴徒", disableWander = true, area_id = 27 },
	{ config_id = 406008, monster_id = 20011201, pos = { x = -2920.563, y = 213.642, z = 5045.662 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "史莱姆", disableWander = true, area_id = 27 },
	{ config_id = 406009, monster_id = 20011201, pos = { x = -2921.116, y = 212.472, z = 5054.083 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "史莱姆", disableWander = true, area_id = 27 },
	{ config_id = 406010, monster_id = 21010201, pos = { x = -2920.354, y = 212.080, z = 5051.783 }, rot = { x = 0.000, y = 336.467, z = 0.000 }, level = 32, drop_tag = "丘丘人", disableWander = true, pose_id = 9012, area_id = 27 },
	{ config_id = 406013, monster_id = 21010101, pos = { x = -2922.318, y = 213.517, z = 5044.425 }, rot = { x = 0.000, y = 81.698, z = 0.000 }, level = 32, drop_tag = "丘丘人", pose_id = 9015, area_id = 27 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 406001, gadget_id = 70220013, pos = { x = -2927.654, y = 213.932, z = 5043.496 }, rot = { x = 13.473, y = 16.975, z = 346.830 }, level = 32, area_id = 27 },
	{ config_id = 406002, gadget_id = 70220013, pos = { x = -2927.282, y = 213.169, z = 5046.313 }, rot = { x = 4.041, y = 337.243, z = 353.492 }, level = 32, area_id = 27 },
	{ config_id = 406003, gadget_id = 70211002, pos = { x = -2915.439, y = 211.363, z = 5049.900 }, rot = { x = 17.097, y = 51.166, z = 1.819 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 27 },
	{ config_id = 406005, gadget_id = 70300087, pos = { x = -2921.245, y = 212.009, z = 5053.916 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 406006, gadget_id = 70300087, pos = { x = -2920.684, y = 213.180, z = 5045.470 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1406011, name = "ANY_MONSTER_DIE_406011", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_406011", action = "action_EVENT_ANY_MONSTER_DIE_406011" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 406012, monster_id = 21011201, pos = { x = -2922.319, y = 209.944, z = 5044.425 }, rot = { x = 0.000, y = 81.698, z = 0.000 }, level = 32, drop_tag = "丘丘人", pose_id = 9015, area_id = 27 }
	}
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
		monsters = { 406004, 406007, 406008, 406009, 406010, 406013 },
		gadgets = { 406001, 406002, 406003, 406005, 406006 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_406011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_406011(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_406011(context, evt)
	-- 将configid为 406003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 406003, GadgetState.Default) then
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