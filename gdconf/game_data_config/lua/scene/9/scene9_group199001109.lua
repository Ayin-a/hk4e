-- 基础信息
local base_info = {
	group_id = 199001109
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
	{ config_id = 109009, monster_id = 21010401, pos = { x = 559.285, y = 123.695, z = 217.286 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", disableWander = true, pose_id = 402, area_id = 402 },
	{ config_id = 109010, monster_id = 21010401, pos = { x = 559.197, y = 123.687, z = 215.244 }, rot = { x = 0.000, y = 231.473, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", disableWander = true, pose_id = 402, area_id = 402 },
	{ config_id = 109011, monster_id = 21010401, pos = { x = 546.243, y = 123.727, z = 194.021 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", disableWander = true, pose_id = 402, area_id = 402 },
	{ config_id = 109012, monster_id = 21010401, pos = { x = 544.212, y = 123.714, z = 192.477 }, rot = { x = 0.000, y = 253.972, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", disableWander = true, pose_id = 402, area_id = 402 },
	{ config_id = 109014, monster_id = 21030301, pos = { x = 536.021, y = 126.211, z = 237.235 }, rot = { x = 0.000, y = 209.717, z = 0.000 }, level = 20, drop_tag = "丘丘萨满", disableWander = true, area_id = 402 },
	{ config_id = 109015, monster_id = 21011001, pos = { x = 558.258, y = 126.064, z = 202.642 }, rot = { x = 0.000, y = 313.375, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", disableWander = true, pose_id = 32, area_id = 402 },
	{ config_id = 109016, monster_id = 21010501, pos = { x = 559.049, y = 126.055, z = 199.723 }, rot = { x = 0.000, y = 313.375, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", disableWander = true, pose_id = 32, area_id = 402 },
	{ config_id = 109017, monster_id = 21010401, pos = { x = 536.581, y = 126.054, z = 233.036 }, rot = { x = 0.000, y = 196.400, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", disableWander = true, pose_id = 402, area_id = 402 },
	{ config_id = 109018, monster_id = 21010401, pos = { x = 533.832, y = 125.964, z = 237.095 }, rot = { x = 0.000, y = 196.400, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", disableWander = true, pose_id = 402, area_id = 402 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 109001, gadget_id = 70290059, pos = { x = 560.130, y = 120.000, z = 201.460 }, rot = { x = 0.000, y = 315.572, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 109002, gadget_id = 70950092, pos = { x = 560.139, y = 120.000, z = 216.167 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 109003, gadget_id = 70950092, pos = { x = 545.740, y = 120.000, z = 192.426 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 109004, gadget_id = 70290057, pos = { x = 566.522, y = 119.332, z = 226.364 }, rot = { x = 0.000, y = 29.622, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 109005, gadget_id = 70290057, pos = { x = 535.726, y = 119.350, z = 252.869 }, rot = { x = 0.000, y = 341.577, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 109006, gadget_id = 70290057, pos = { x = 539.885, y = 119.382, z = 182.729 }, rot = { x = 0.000, y = 12.201, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 109007, gadget_id = 70290056, pos = { x = 550.702, y = 120.000, z = 229.114 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 402 },
	{ config_id = 109008, gadget_id = 70290056, pos = { x = 525.041, y = 120.000, z = 192.580 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 402 },
	{ config_id = 109013, gadget_id = 70290059, pos = { x = 535.376, y = 120.000, z = 237.500 }, rot = { x = 0.000, y = 254.223, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 109020, gadget_id = 70950087, pos = { x = 543.871, y = 120.000, z = 190.729 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 109021, gadget_id = 70950087, pos = { x = 543.622, y = 120.000, z = 194.020 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 109022, gadget_id = 70950087, pos = { x = 542.287, y = 120.000, z = 192.896 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 109023, gadget_id = 70950087, pos = { x = 561.387, y = 120.000, z = 219.608 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 109024, gadget_id = 70950087, pos = { x = 559.480, y = 120.000, z = 219.876 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 109025, gadget_id = 70950087, pos = { x = 557.497, y = 120.000, z = 217.860 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 109026, gadget_id = 70211002, pos = { x = 560.853, y = 126.202, z = 200.663 }, rot = { x = 0.000, y = 270.545, z = 0.000 }, level = 16, drop_tag = "战斗低级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 402 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 改变变量，解锁宝箱
	{ config_id = 1109019, name = "ANY_MONSTER_DIE_109019", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_109019", action = "action_EVENT_ANY_MONSTER_DIE_109019" }
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
		monsters = { 109009, 109010, 109011, 109012, 109014, 109015, 109016, 109017, 109018 },
		gadgets = { 109001, 109002, 109003, 109004, 109005, 109006, 109007, 109008, 109013, 109020, 109021, 109022, 109023, 109024, 109025, 109026 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_109019" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_109019(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_109019(context, evt)
	-- 将configid为 109026 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 109026, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "is_remindered" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "is_remindered", 1, 199001110) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end