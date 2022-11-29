-- 基础信息
local base_info = {
	group_id = 144001077
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 77001, monster_id = 21010901, pos = { x = -509.775, y = 120.017, z = -772.020 }, rot = { x = 0.000, y = 238.488, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003, area_id = 100 },
	{ config_id = 77004, monster_id = 21010401, pos = { x = -511.411, y = 120.000, z = -771.343 }, rot = { x = 0.000, y = 232.241, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", pose_id = 9003, area_id = 100 },
	{ config_id = 77005, monster_id = 22010201, pos = { x = -504.906, y = 120.126, z = -772.918 }, rot = { x = 0.000, y = 251.980, z = 0.000 }, level = 22, drop_tag = "深渊法师", pose_id = 9013, area_id = 100 },
	{ config_id = 77020, monster_id = 21010701, pos = { x = -510.992, y = 120.415, z = -754.561 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 22, drop_tag = "丘丘人", area_id = 100 },
	{ config_id = 77021, monster_id = 21010201, pos = { x = -509.752, y = 120.595, z = -754.211 }, rot = { x = 0.000, y = 2.235, z = 0.000 }, level = 22, drop_tag = "丘丘人", area_id = 100 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 77002, gadget_id = 70211012, pos = { x = -500.257, y = 120.584, z = -768.287 }, rot = { x = 0.000, y = 60.462, z = 0.000 }, level = 26, drop_tag = "战斗中级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 100 },
	{ config_id = 77009, gadget_id = 70300086, pos = { x = -496.799, y = 120.809, z = -769.275 }, rot = { x = 0.000, y = 284.700, z = 350.730 }, level = 1, area_id = 100 },
	{ config_id = 77010, gadget_id = 70300086, pos = { x = -508.826, y = 120.368, z = -762.930 }, rot = { x = 0.000, y = 0.000, z = 356.570 }, level = 1, area_id = 100 },
	{ config_id = 77011, gadget_id = 70220013, pos = { x = -495.543, y = 121.043, z = -768.686 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 100 },
	{ config_id = 77012, gadget_id = 70220013, pos = { x = -508.870, y = 120.465, z = -761.082 }, rot = { x = 0.000, y = 22.836, z = 3.686 }, level = 1, area_id = 100 },
	{ config_id = 77013, gadget_id = 70220026, pos = { x = -496.462, y = 120.750, z = -770.242 }, rot = { x = 0.000, y = 46.157, z = 0.000 }, level = 1, area_id = 100 },
	{ config_id = 77014, gadget_id = 70310006, pos = { x = -508.952, y = 120.237, z = -766.833 }, rot = { x = 0.000, y = 0.000, z = 0.717 }, level = 1, area_id = 100 },
	{ config_id = 77018, gadget_id = 70220026, pos = { x = -503.447, y = 120.075, z = -774.220 }, rot = { x = 0.000, y = 301.708, z = 0.000 }, level = 1, area_id = 100 },
	{ config_id = 77019, gadget_id = 70220026, pos = { x = -500.755, y = 120.302, z = -772.712 }, rot = { x = 0.000, y = 336.273, z = 0.000 }, level = 1, area_id = 100 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1077003, name = "ANY_MONSTER_DIE_77003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_77003", action = "action_EVENT_ANY_MONSTER_DIE_77003" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 77006, gadget_id = 70220025, pos = { x = -499.943, y = 120.772, z = -766.722 }, rot = { x = 83.518, y = 45.775, z = 357.729 }, level = 1, area_id = 100 },
		{ config_id = 77007, gadget_id = 70220025, pos = { x = -498.911, y = 120.764, z = -767.836 }, rot = { x = 83.152, y = 57.642, z = 83.500 }, level = 1, area_id = 100 },
		{ config_id = 77008, gadget_id = 70220025, pos = { x = -500.425, y = 120.811, z = -765.275 }, rot = { x = 83.408, y = 68.625, z = 68.488 }, level = 1, area_id = 100 }
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
		monsters = { 77001, 77004, 77005, 77020, 77021 },
		gadgets = { 77002, 77009, 77010, 77011, 77012, 77013, 77014, 77018, 77019 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_77003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_77003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_77003(context, evt)
	-- 将configid为 77002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 77002, GadgetState.Default) then
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