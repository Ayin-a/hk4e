-- 基础信息
local base_info = {
	group_id = 199002118
}

-- DEFS_MISCS
local defs = 
{
        rmd_list = {1111157,1111158,1111159},
}
--从table中取得随机value
function LF_GetRandomResult(context, source_table)

        math.randomseed(ScriptLib.GetServerTime(context))
        rand_index = math.random(#source_table)
        
        if nil ~= source_table[rand_index] then
                ScriptLib.PrintContextLog(context, "## [GetRandom] Get Random Result: value@"..source_table[rand_index])
                return source_table[rand_index]
        end
        ScriptLib.PrintContextLog(context, "## [GetRandom] Get Random Result failed! rand_index@"..rand_index)
        return -1
end

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 118001, monster_id = 22010101, pos = { x = 710.641, y = 126.210, z = -116.892 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_tag = "深渊法师", disableWander = true, area_id = 402 },
	{ config_id = 118002, monster_id = 22010201, pos = { x = 710.298, y = 126.178, z = -98.915 }, rot = { x = 0.000, y = 233.512, z = 0.000 }, level = 20, drop_tag = "深渊法师", disableWander = true, area_id = 402 },
	{ config_id = 118003, monster_id = 21011001, pos = { x = 684.291, y = 123.864, z = -94.241 }, rot = { x = 0.000, y = 200.557, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", pose_id = 32, area_id = 402 },
	{ config_id = 118004, monster_id = 21010501, pos = { x = 687.010, y = 123.832, z = -126.764 }, rot = { x = 0.000, y = 334.264, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", pose_id = 32, area_id = 402 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 118005, gadget_id = 70290059, pos = { x = 710.459, y = 120.000, z = -116.512 }, rot = { x = 0.000, y = 252.583, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 118006, gadget_id = 70290057, pos = { x = 720.654, y = 119.259, z = -125.594 }, rot = { x = 0.000, y = 296.570, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 118007, gadget_id = 70290057, pos = { x = 716.246, y = 119.227, z = -82.421 }, rot = { x = 0.000, y = 50.940, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 118008, gadget_id = 70290057, pos = { x = 697.561, y = 119.276, z = -80.682 }, rot = { x = 0.000, y = 349.417, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 118009, gadget_id = 70290059, pos = { x = 709.885, y = 120.000, z = -97.622 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 118010, gadget_id = 70290060, pos = { x = 709.643, y = 124.956, z = -107.510 }, rot = { x = 0.000, y = 85.612, z = 347.624 }, level = 20, area_id = 402 },
	{ config_id = 118011, gadget_id = 70290061, pos = { x = 692.548, y = 120.000, z = -135.747 }, rot = { x = 0.000, y = 5.368, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 118012, gadget_id = 70290056, pos = { x = 707.721, y = 120.000, z = -134.397 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 402 },
	{ config_id = 118013, gadget_id = 70950092, pos = { x = 684.666, y = 120.000, z = -93.908 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 118014, gadget_id = 70950092, pos = { x = 687.406, y = 120.000, z = -127.199 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 118015, gadget_id = 70950087, pos = { x = 682.542, y = 120.000, z = -95.523 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 118016, gadget_id = 70950087, pos = { x = 682.381, y = 120.000, z = -92.491 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 118017, gadget_id = 70950087, pos = { x = 686.253, y = 120.000, z = -96.362 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 118018, gadget_id = 70950087, pos = { x = 685.175, y = 120.000, z = -125.631 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 118019, gadget_id = 70950087, pos = { x = 689.501, y = 120.000, z = -124.990 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 118020, gadget_id = 70950087, pos = { x = 685.562, y = 120.000, z = -124.295 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 118021, gadget_id = 70950087, pos = { x = 687.939, y = 120.000, z = -130.513 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 118023, gadget_id = 70211002, pos = { x = 709.565, y = 125.767, z = -107.912 }, rot = { x = 0.000, y = 260.922, z = 0.000 }, level = 16, drop_tag = "战斗低级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 402 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 改变变量，解锁宝箱
	{ config_id = 1118022, name = "ANY_MONSTER_DIE_118022", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_118022", action = "action_EVENT_ANY_MONSTER_DIE_118022" }
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
		monsters = { 118001, 118002, 118003, 118004 },
		gadgets = { 118005, 118006, 118007, 118008, 118009, 118010, 118011, 118012, 118013, 118014, 118015, 118016, 118017, 118018, 118019, 118020, 118021, 118023 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_118022" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_118022(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_118022(context, evt)
	-- 将configid为 118023 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 118023, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "is_remindered" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "is_remindered", 1, 199002119) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end