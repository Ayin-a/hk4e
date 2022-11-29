-- 基础信息
local base_info = {
	group_id = 133102769
}

-- Trigger变量
local defs = {
	born_radius = 6,
	gadget_hp_checker = 769010,
	gadget_boss_operator = 769011,
	hp_stack = {0,203,204,901,902,903},
	gadget_platform_list = {769001,769002,769003,769004,769005,769006,769007,769008,769009},
	group_id = 133102769,
	monster_boss = 769026,
	gadget_anchor = 769055,
	gadget_boss_starter = {769062,769063,769064,769065}
}

-- DEFS_MISCS
sight_groups = {
	{769001,769002,769003,769004,769005,769006,769007,769008,769009,769010,769026}
}
local relevant_group = {
	[1] = 133102112
}

local stage_monster = {
	[1] = { [1] = { sum = 2, suite = {2,12}}, [2] = { sum = 3, suite = {3,13}}, [3] = { sum = 2, suite = {4,14}}, [4] = { sum = 1, suite = {5,15} } },
	[2] = { [1] = { sum = 2, suite = {2,12}}, [2] = { sum = 3, suite = {3,13}}, [3] = { sum = 2, suite = {4,14}}, [4] = { sum = 1, suite = {5,15} } },
	[3] = { [1] = { sum = 2, suite = {2,12}}, [2] = { sum = 3, suite = {3,13}}, [3] = { sum = 2, suite = {4,14}}, [4] = { sum = 1, suite = {5,15} } },
	[4] = { [1] = { sum = 2, suite = {2,12}}, [2] = { sum = 3, suite = {3,13}}, [3] = { sum = 2, suite = {4,14}}, [4] = { sum = 1, suite = {5,15} } },
	[5] = { [1] = { sum = 2, suite = {2,12}}, [2] = { sum = 3, suite = {3,13}}, [3] = { sum = 2, suite = {4,14}}, [4] = { sum = 1, suite = {5,15} } }
}

--深拷贝队列
function LF_Init_Array(array)
	local arr = {}
	for k,v in pairs(array) do
		arr[k] = v
	end
	return arr
end

--获取结算信息
function LF_Get_Array_Pos(table, value)
	--LF_Log(context, "## LF_Get_Array_Pos | "..value)
	local index = 0
	for i,v in ipairs(table) do
		if v == value then
			index = i
			break
		end
	end
	if index == 0 then
		ScriptLib.PrintLog("## LF_Get_Array_Pos Fail!! | value = "..value)
		for i,v in ipairs(table) do
			ScriptLib.PrintLog("## LF_Get_Array_Pos Fail!! | i="..i.." v="..v)
		end
		index = 1
	end
	return index
end

--先算下波怪物信息,算完后需要通知checker
function LF_Calculate_Monster(context, stage)
	LF_Log(context, "## LF_Calculate_Monster | stage = "..stage)
	math.randomseed(ScriptLib.GetServerTime(context) + stage)
	--前两个阶段随机抽一个就行
	local ran = math.random(1,4)	--记录挑选的怪物序列
	--LF_Log(context, "## ran1="..ran)
	if stage == 1 then
--第1波随机选怪物
		ScriptLib.SetGroupVariableValue(context, "next_monster1", ran)
	elseif stage == 2 then
		--第2波需要去重随机
		ran = ScriptLib.GetGroupVariableValue(context, "next_monster1") + math.random(1,3)
		if ran > 4 then
			ran = ran - 4
		end
		ScriptLib.SetGroupVariableValue(context, "next_monster1", ran)
	elseif stage == 3 then
		--第3波和第5波逻辑相同,仅读表数量有区别
		ScriptLib.SetGroupVariableValue(context, "next_monster1", ran)
		--把AC选项抛弃掉,随便抽两个,剩余两个就是选中的怪物组合
		if ran == 1 or ran == 3 then
			ran = ran + 2*math.random(1,2) - 1
			if ran > 4 then
				ran = ran -4
			end
		else
			ran = ran + math.random(1,3)
			if ran > 4 then
				ran = ran -4
			end
		end
		--LF_Log(context, "## ran2="..ran)
		ScriptLib.SetGroupVariableValue(context, "next_monster2", ran)
	elseif stage == 4 then
		--第4波,重新计算选怪逻辑,与第3波不同
		local c1 = ScriptLib.GetGroupVariableValue(context, "next_monster1")
		local c2 = ScriptLib.GetGroupVariableValue(context, "next_monster2")
		--5个组合的乘积
		local c_arr = {2,4,6,8,12}
		for i,v in ipairs(c_arr) do
			if v == c1*c2 then
				ran = i
				break
			end
		end
		--去重后重拿一个组合
		ran = ran + math.random(1,4)
		if ran > 5 then
			ran = ran - 5
		end
		--ran为本次获取到的序列
			if ran == 1 or ran == 3 or ran == 4 then
			ScriptLib.SetGroupVariableValue(context, "next_monster1", 2)
			ScriptLib.SetGroupVariableValue(context, "next_monster2", math.floor(c_arr[ran]/2))
		else
			ScriptLib.SetGroupVariableValue(context, "next_monster1", 4)
			ScriptLib.SetGroupVariableValue(context, "next_monster2", math.floor(c_arr[ran]/4))
		end
	elseif stage == 5 then
		local ran1 = math.random(0,2)
		local ran2 = ran1 + math.random(1,2)
		if ran2 > 2 then
			ran2 = ran2 - 3
		end
		--LF_Log(context, "## ran1="..ran1)
		--LF_Log(context, "## ran2="..ran2)
		ScriptLib.SetGroupVariableValue(context, "next_monster1", math.pow(2,ran1))
		ScriptLib.SetGroupVariableValue(context, "next_monster2", math.pow(2,ran2))
	end
	LF_Calculate_Platform(context, stage)
	return 0
end

--计算平台信息,要把已经sink的platform去掉
function LF_Calculate_Platform(context, stage)
	LF_Log(context,"## LF_Calculate_Platform | stage = "..stage)
	math.randomseed(ScriptLib.GetServerTime(context) + stage)
	local p_arr = {2,4,6,8}
	local m1 = ScriptLib.GetGroupVariableValue(context, "next_monster1")
	--LF_Log(context, "## next_monster1="..m1)
	--任何阶段都有一只怪会挂在m1上
	if m1 == 1 or m1 == 3 then
		ScriptLib.SetGroupVariableValue(context, "summon_platform1", 5)
		ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_platform_list[5], 901)
		--LF_Log(context, "## summon_platform1="..defs.gadget_platform_list[5])
	elseif m1 == 2 then
		p_arr = {1,3,7,9}
		p_arr = LF_Get_Legal_Platform(context, p_arr)
		local pid = p_arr[math.random(1,#p_arr)]
		ScriptLib.SetGroupVariableValue(context, "summon_platform1", pid)
		ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_platform_list[pid], 901)
		--LF_Log(context, "## summon_platform1="..defs.gadget_platform_list[pid])
	elseif m1 == 4 then
		p_arr = LF_Get_Legal_Platform(context, p_arr)
		local pid = p_arr[math.random(1,#p_arr)]
		ScriptLib.SetGroupVariableValue(context, "summon_platform1", pid)
		ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_platform_list[pid], 901)
		--LF_Log(context, "## summon_platform1="..defs.gadget_platform_list[pid])
	end
	--从3阶段开始一次要选两个平台
	if stage >= 3 then
		p_arr = {2,4,6,8}
		--任何阶段都有一只怪会挂在m1上
		local m2 = ScriptLib.GetGroupVariableValue(context, "next_monster2")
		if m2 == 1 or m2 == 3 then
			ScriptLib.SetGroupVariableValue(context, "summon_platform2", 5)
			ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_platform_list[5], 901)
			--LF_Log(context, "## summon_platform2="..defs.gadget_platform_list[5])
		elseif m2 == 2 then
			p_arr = {1,3,7,9}
			p_arr = LF_Get_Legal_Platform(context, p_arr)
			local pid = p_arr[math.random(1,#p_arr)]
			ScriptLib.SetGroupVariableValue(context, "summon_platform2", pid)
			ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_platform_list[pid], 901)
			--LF_Log(context, "## summon_platform2="..defs.gadget_platform_list[pid])
		elseif m2 == 4 then
			p_arr = LF_Get_Legal_Platform(context, p_arr)
			local pid = p_arr[math.random(1,#p_arr)]
			ScriptLib.SetGroupVariableValue(context, "summon_platform2", pid)
			ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_platform_list[pid], 901)
			--LF_Log(context, "## summon_platform2="..defs.gadget_platform_list[pid])
		end
	end
	return 0
end

function LF_Get_Legal_Platform(context, array)
	local arr = array
	for i=1,4 do
		local a = ScriptLib.GetGroupVariableValue(context, "platform"..i)
		if a == 0 then
			break
		end
		for i,v in ipairs(arr) do
			if gadgets[v].config_id == a then
				--LF_Log(context, "## illegal_platform = "..a)
				table.remove(arr, i)
				break
			end 
		end
	end
	return arr
end

--读取平台与怪物信息进行创建
function LF_Summon_Monster(context, stage, num)
	--LF_Log(context, "## LF_Summon_Monster | stage = "..stage.." | num = "..num)
	if stage < 1 or stage > 5 then
		return -1
	end
	--怪物的类型
	local m_type = 0
	--平台的序列
	local platform_id = 0
	if num == 1 then
		m_type = ScriptLib.GetGroupVariableValue(context, "next_monster1")
		platform_id = ScriptLib.GetGroupVariableValue(context, "summon_platform1")
	elseif num == 2 then
		m_type = ScriptLib.GetGroupVariableValue(context, "next_monster2")
		platform_id = ScriptLib.GetGroupVariableValue(context, "summon_platform2")
	end
	--计算对应波次与种类的怪物信息并召唤
	--LF_Log(context, "## m_type="..m_type)
	--LF_Log(context, "## platform_id="..platform_id)
	LF_Summon_Monster_By_Platform(context, m_type, platform_id)
	return 0
end

--根据怪物组与平台创建对应怪物
function LF_Summon_Monster_By_Platform(context, m_type, platform_id)
	math.randomseed(ScriptLib.GetServerTime(context) + platform_id)
	LF_Log(context, "## LF_Summon_Monster_By_Platform | m_type = "..m_type.." | platform_id = "..platform_id)
	local stage = ScriptLib.GetGroupVariableValue(context, "stage")
	--LF_Log(context, "## stage="..stage)
	local sum = stage_monster[stage][m_type].sum
	--LF_Log(context, "## sum="..sum)
	local suite_list = stage_monster[stage][m_type].suite
	local suite = suite_list[math.random(1,#suite_list)]
	--LF_Log(context, "## suite="..suite)
	local t_arr = LF_Init_Array(suites[suite].monsters)
	--取出对应数量,去重选取config_id的monster在对应平台上创建
	for i=1,sum do
		math.randomseed(ScriptLib.GetServerTime(context) + platform_id)
		local c = math.random(1,#t_arr)
		local config_id = t_arr[c]
		LF_Create_Monster_By_Platform(context, config_id, platform_id)
		table.remove(t_arr, c)
	end
	return 0
end

--将指定怪物在指定平台创建
function LF_Create_Monster_By_Platform(context, config_id, platform_id)
	LF_Log(context, "## LF_Create_Monster_By_Platform | config_id = "..config_id.." | platform_id ="..platform_id)
	local position = {x=0,y=0,z=0}
	local rotation = {x=0,y=0,z=0}
	--根据平台计算位置
	math.randomseed(config_id + ScriptLib.GetServerTime(context))
	position.x = gadgets[platform_id].pos.x + (2*math.random()-1)*defs.born_radius
	position.y = gadgets[platform_id].pos.y + 5
	position.z = gadgets[platform_id].pos.z + (2*math.random()-1)*defs.born_radius
	local x0 = gadgets[5].pos.x - gadgets[platform_id].pos.x
	local z0 = gadgets[5].pos.z - gadgets[platform_id].pos.z
	if z0 == 0 then
		z0 = 0.01
	end
	if z0 > 0 then
		rotation.y = math.deg(math.atan(x0/z0))
	else
		rotation.y = math.deg(math.atan(x0/z0)) + 180
	end
	ScriptLib.CreateMonsterByConfigIdByPos(context, config_id, position, rotation)
	return 0
end

--用于调用平台下沉的功能
function LF_Notify_Platform_Sink(context, index)
	LF_Log(context, "## LF_Notify_Platform_Sink | index = "..index)
	math.randomseed(ScriptLib.GetServerTime(context) + index)
	local p_arr = LF_Init_Array(defs.gadget_platform_list)
	--5号平台要扣掉
	table.remove(p_arr, 5)
	--本轮901的也要扣掉
	for i,v in ipairs(p_arr) do
		if 901 == ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, v) then
			table.remove(p_arr, i)
		end
	end
	local p = 0
	if index == 1 then
		local pid = ScriptLib.GetGroupVariableValue(context, "platform1")
		--如果1号平台存在数据,则需要去重两次,并记录在3中
		if pid ~= 0 then
			pid = LF_Get_Array_Pos(p_arr, pid)
			table.remove(p_arr, pid)
			pid = ScriptLib.GetGroupVariableValue(context, "platform2")
			pid = LF_Get_Array_Pos(p_arr, pid)
			table.remove(p_arr, pid)
			p = math.random(1,#p_arr)
			ScriptLib.SetGroupVariableValue(context, "platform3", p_arr[p])
		else
			p = math.random(1,#p_arr)
			ScriptLib.SetGroupVariableValue(context, "platform1", p_arr[p])
		end
	elseif index == 2 then
		--防止台子全奇数或全偶数
		local p_counter = {}
		local pid = ScriptLib.GetGroupVariableValue(context, "platform2")
		--如果2号平台存在数据,则需要去重三次
		if pid ~= 0 then
			p_counter[2] = LF_Get_Array_Pos(defs.gadget_platform_list, pid)
			pid = LF_Get_Array_Pos(p_arr, pid)	
			table.remove(p_arr, pid)
			pid = ScriptLib.GetGroupVariableValue(context, "platform1")
			p_counter[1] = LF_Get_Array_Pos(defs.gadget_platform_list, pid)
			pid = LF_Get_Array_Pos(p_arr, pid)	
			table.remove(p_arr, pid)
			pid = ScriptLib.GetGroupVariableValue(context, "platform3")
			p_counter[3] = LF_Get_Array_Pos(defs.gadget_platform_list, pid)
			pid = LF_Get_Array_Pos(p_arr, pid)
			table.remove(p_arr, pid)
			--校验是否为全奇数或全偶数
			if p_counter[1]%2 == 1 and p_counter[2]%2 == 1 and p_counter[3]%2 == 1 then
				for i,v in ipairs(p_arr) do
					if v%2 == 1 then
						table.remove(p_arr,i)
					end
				end
			elseif p_counter[1]%2 == 0 and p_counter[2]%2 == 0 and p_counter[3]%2 == 0 then
				for i,v in ipairs(p_arr) do
					if v%2 == 0 then
						table.remove(p_arr,i)
					end
				end
			end
			p = math.random(1,#p_arr)
			ScriptLib.SetGroupVariableValue(context, "platform4", p_arr[p])
			ScriptLib.SetGroupTempValue(context, "monster_wave", 5, {})
		else
			pid = ScriptLib.GetGroupVariableValue(context, "platform1")
			pid = LF_Get_Array_Pos(p_arr, pid)
			table.remove(p_arr, pid)
			p = math.random(1,#p_arr)
			ScriptLib.SetGroupVariableValue(context, "platform2", p_arr[p])
			ScriptLib.SetGroupTempValue(context, "monster_wave", 3, {})
		end
	end
	--平台标记为201状态等待怪物通知下沉
	LF_Log(context, "## platform_sink = "..p_arr[p])
	ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, p_arr[p], 201)
	return 0
end

function LF_Create_Boss(context, index)
	--LF_Log(context, "## LF_Create_Boss | index = "..index)
	ScriptLib.ForceRefreshAuthorityByConfigId(context, 769005, context.uid)
	ScriptLib.SetGroupVariableValue(context, "auth_uid_p1", context.uid//10000)
	ScriptLib.SetGroupVariableValue(context, "auth_uid_p2", context.uid%10000)
	--初始化平台位置信息
	for i,v in ipairs(defs.gadget_platform_list) do
		ScriptLib.SetGroupTempValue(context, "arrive_"..v, 0, {})
	end
	local pos = gadgets[4+index].pos
	local rot = gadgets[4+index].rot
	--pos.y = pos.y
	LF_Reset_Platform_State(context)
	ScriptLib.CreateMonsterByConfigIdByPos(context, defs.monster_boss, pos, rot)
	ScriptLib.CreateGadget(context, { config_id = defs.gadget_hp_checker })
	ScriptLib.SetGroupVariableValue(context, "stage", 1)
	LF_Calculate_Monster(context, 1)
	ScriptLib.RemoveExtraGroupSuite(context, 0, index)
	return 0
end

function LF_Reset_Platform_State(context)
	for i,v in ipairs(defs.gadget_platform_list) do
		ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, v, 0)
	end
	return 0
end

function LF_Recover_Platform(context)
	--LF_Log(context, "## LF_Recover_Platform")
	local p1 = ScriptLib.GetGroupVariableValue(context, "platform1")
	local p2 = ScriptLib.GetGroupVariableValue(context, "platform2")
	local p3 = ScriptLib.GetGroupVariableValue(context, "platform3")
	local p4 = ScriptLib.GetGroupVariableValue(context, "platform4")
	local p_arr = {p1,p2,p3,p4}
	for k,v in pairs(p_arr) do
		if v ~= 0 then
			LF_Log(context, "## platform_recover="..v)
			--增加平台未到达底部就恢复的报警
			if ScriptLib.GetGroupTempValue(context, "arrive_"..v, {}) == 1 then
				ScriptLib.StartPlatform(context, v)
			else ScriptLib.PrintGroupWarning(context, "## ocean_id : abnormal platform | not reach bottom = "..v)
			end
		else ScriptLib.PrintGroupWarning(context, "## ocean_id : abnormal platform recovery | k = "..k)
		end
	end
	return 0
end

function LF_Reset_Platform(context)
	--LF_Log(context, "## LF_Reload_Platform")
	for i,v in ipairs(defs.gadget_platform_list) do
		ScriptLib.RemoveEntityByConfigId(context, defs.group_id, EntityType.GADGET, v)
		ScriptLib.CreateGadget(context, {config_id = v })
	end
	LF_Manage_OceanId_Replacement(context, 0)
	return 0
end

--记录平台是否到达路径底部
function LF_Platform_Arrival(context, evt)
	ScriptLib.PrintContextLog(context, "## ocean_id : platform_arrival | config_id="..evt.param1.." route="..evt.param2.." point="..evt.param3)
	if evt.param3 == 1 then
		ScriptLib.SetGroupTempValue(context, "arrive_"..evt.param1, 1, {})
	end
end

function LF_Initialize_Variable(context)
	--LF_Log(context, "## LF_Initialize_Variable")
	ScriptLib.SetGroupVariableValue(context, "next_monster1", 0)
	ScriptLib.SetGroupVariableValue(context, "next_monster2", 0)
	ScriptLib.SetGroupVariableValue(context, "summon_platform1", 0)
	ScriptLib.SetGroupVariableValue(context, "summon_platform2", 0)
	ScriptLib.SetGroupVariableValue(context, "platform1", 0)
	ScriptLib.SetGroupVariableValue(context, "platform2", 0)
	ScriptLib.SetGroupVariableValue(context, "platform3", 0)
	ScriptLib.SetGroupVariableValue(context, "platform4", 0)
	return 0
end

function LF_Remove_Extra_Suite(context)
	--LF_Log(context, "## LF_Remove_Extra_Suite")
	ScriptLib.RemoveExtraGroupSuite(context, 0, 2)
	ScriptLib.RemoveExtraGroupSuite(context, 0, 3)
	ScriptLib.RemoveExtraGroupSuite(context, 0, 4)
	ScriptLib.RemoveExtraGroupSuite(context, 0, 5)
	ScriptLib.RemoveExtraGroupSuite(context, 0, 6)
	ScriptLib.RemoveExtraGroupSuite(context, 0, 7)
	ScriptLib.RemoveExtraGroupSuite(context, 0, 8)
	ScriptLib.RemoveExtraGroupSuite(context, 0, 9)
	ScriptLib.RemoveExtraGroupSuite(context, 0, 10)
	ScriptLib.RemoveExtraGroupSuite(context, 0, 11)
	ScriptLib.RemoveExtraGroupSuite(context, 0, 12)
	ScriptLib.RemoveExtraGroupSuite(context, 0, 13)
	ScriptLib.RemoveExtraGroupSuite(context, 0, 14)
	ScriptLib.RemoveExtraGroupSuite(context, 0, 15)
	return 0
end

function LF_Log(context, text)
	ScriptLib.PrintContextLog(context, text)
	return 0
end

function LF_Set_Secure_Timer(context, name)
	if name == "sink" then
		ScriptLib.InitTimeAxis(context, "sink", {20}, false)
	elseif name == "summon" then
		ScriptLib.InitTimeAxis(context, "summon", {40}, false)
	end
	return 0
end

--管理纯水处boss的竞争机制
function LF_Manage_OceanId_Replacement(context, manage_type)
	if manage_type == 1 then
		for i,v in ipairs(relevant_group) do
			if i == 1 then
				local act_time = ScriptLib.GetActivityOpenAndCloseTimeByScheduleId(context, 5020001)
				local cur_time = ScriptLib.GetServerTime(context)
				ScriptLib.PrintContextLog(context, "## cur_time="..cur_time)
				ScriptLib.PrintContextLog(context, "## act_time=["..act_time[1]..","..act_time[2].."]")
				if cur_time >= act_time[1] and cur_time < act_time[2] then
					ScriptLib.SetGroupVariableValueByGroup(context, "is_in_replacement", 1, v)
				end 
			end
		end
	elseif manage_type == 0 then
		for i,v in ipairs(relevant_group) do
			if i == 1 then
				local act_time = ScriptLib.GetActivityOpenAndCloseTimeByScheduleId(context, 5020001)
				local cur_time = ScriptLib.GetServerTime(context)
				ScriptLib.PrintContextLog(context, "## cur_time="..cur_time)
				ScriptLib.PrintContextLog(context, "## act_time=["..act_time[1]..","..act_time[2].."]")
				if cur_time >= act_time[1] and cur_time < act_time[2] then
					ScriptLib.SetGroupVariableValueByGroup(context, "is_in_replacement", 0, v)
				end 
			end
		end
	end
end

function SLC_OCEANID_ESCAPE(context)
	ScriptLib.PrintContextLog(context, "## ocean_id: new escape")
	LF_Remove_Extra_Suite(context)
	if 1 == ScriptLib.GetGroupVariableValue(context, "boss_exist") then
		LF_Reset_Platform(context)
		LF_Initialize_Variable(context)
		if 0 == ScriptLib.GetGroupVariableValue(context, "is_in_replacement") then
			ScriptLib.AddExtraGroupSuite(context, defs.group_id, 6)
		end
	end
	return 0
end

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 769012, monster_id = 20050201, pos = { x = 1790.194, y = 200.550, z = 279.611 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "魔法生物", mark_flag = 127, area_id = 5 },
	{ config_id = 769013, monster_id = 20050201, pos = { x = 1788.180, y = 200.550, z = 278.874 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "魔法生物", mark_flag = 127, area_id = 5 },
	{ config_id = 769014, monster_id = 20050201, pos = { x = 1786.484, y = 200.550, z = 277.781 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "魔法生物", mark_flag = 127, area_id = 5 },
	{ config_id = 769015, monster_id = 20050901, pos = { x = 1782.592, y = 200.550, z = 278.792 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "魔法生物", mark_flag = 127, area_id = 5 },
	{ config_id = 769016, monster_id = 20050901, pos = { x = 1784.219, y = 200.550, z = 279.619 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "魔法生物", mark_flag = 127, area_id = 5 },
	{ config_id = 769017, monster_id = 20050901, pos = { x = 1785.868, y = 200.550, z = 280.258 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "魔法生物", mark_flag = 127, area_id = 5 },
	{ config_id = 769018, monster_id = 20050901, pos = { x = 1787.918, y = 200.550, z = 281.182 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "魔法生物", mark_flag = 127, area_id = 5 },
	{ config_id = 769019, monster_id = 20050901, pos = { x = 1789.939, y = 200.550, z = 281.982 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "魔法生物", mark_flag = 127, area_id = 5 },
	{ config_id = 769020, monster_id = 20050901, pos = { x = 1792.146, y = 200.550, z = 282.476 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "魔法生物", mark_flag = 127, area_id = 5 },
	{ config_id = 769021, monster_id = 20050401, pos = { x = 1783.182, y = 200.550, z = 280.991 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "魔法生物", mark_flag = 127, area_id = 5 },
	{ config_id = 769022, monster_id = 20050401, pos = { x = 1785.222, y = 200.550, z = 281.776 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "魔法生物", mark_flag = 127, area_id = 5 },
	{ config_id = 769023, monster_id = 20050401, pos = { x = 1787.286, y = 200.550, z = 282.626 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "魔法生物", mark_flag = 127, area_id = 5 },
	{ config_id = 769024, monster_id = 20050501, pos = { x = 1782.674, y = 200.550, z = 282.464 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "魔法生物", mark_flag = 127, area_id = 5 },
	{ config_id = 769025, monster_id = 20050501, pos = { x = 1784.439, y = 200.550, z = 283.067 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "魔法生物", mark_flag = 127, area_id = 5 },
	{ config_id = 769026, monster_id = 20050101, pos = { x = 1787.600, y = 200.550, z = 277.916 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_id = 1000100, title_id = 2211, special_name_id = 10015, mark_flag = 16, area_id = 5 },
	{ config_id = 769031, monster_id = 20050701, pos = { x = 1784.954, y = 200.550, z = 277.400 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "魔法生物", mark_flag = 127, area_id = 5 },
	{ config_id = 769032, monster_id = 20050701, pos = { x = 1785.945, y = 200.550, z = 278.349 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "魔法生物", mark_flag = 127, area_id = 5 },
	{ config_id = 769033, monster_id = 20050701, pos = { x = 1786.996, y = 200.550, z = 279.043 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "魔法生物", mark_flag = 127, area_id = 5 },
	{ config_id = 769034, monster_id = 20050301, pos = { x = 1782.282, y = 200.550, z = 279.822 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "魔法生物", mark_flag = 127, area_id = 5 },
	{ config_id = 769035, monster_id = 20050301, pos = { x = 1783.972, y = 200.550, z = 280.419 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "魔法生物", mark_flag = 127, area_id = 5 },
	{ config_id = 769036, monster_id = 20050301, pos = { x = 1785.437, y = 200.550, z = 281.205 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "魔法生物", mark_flag = 127, area_id = 5 },
	{ config_id = 769037, monster_id = 20050301, pos = { x = 1787.096, y = 200.550, z = 282.090 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "魔法生物", mark_flag = 127, area_id = 5 },
	{ config_id = 769038, monster_id = 20050301, pos = { x = 1789.092, y = 200.550, z = 282.964 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "魔法生物", mark_flag = 127, area_id = 5 },
	{ config_id = 769039, monster_id = 20050301, pos = { x = 1791.052, y = 200.550, z = 283.650 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "魔法生物", mark_flag = 127, area_id = 5 },
	{ config_id = 769040, monster_id = 20050601, pos = { x = 1785.697, y = 200.550, z = 283.210 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "魔法生物", mark_flag = 127, area_id = 5 },
	{ config_id = 769041, monster_id = 20050601, pos = { x = 1787.275, y = 200.550, z = 283.981 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "魔法生物", mark_flag = 127, area_id = 5 },
	{ config_id = 769042, monster_id = 20050601, pos = { x = 1788.823, y = 200.550, z = 284.887 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "魔法生物", mark_flag = 127, area_id = 5 },
	{ config_id = 769043, monster_id = 20050801, pos = { x = 1783.728, y = 200.550, z = 283.321 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "魔法生物", mark_flag = 127, area_id = 5 },
	{ config_id = 769044, monster_id = 20050801, pos = { x = 1785.130, y = 200.550, z = 284.044 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "魔法生物", mark_flag = 127, area_id = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 769001, gadget_id = 70380018, pos = { x = 1809.075, y = 195.500, z = 271.463 }, rot = { x = 0.000, y = 240.000, z = 0.000 }, level = 18, route_id = 310200248, mark_flag = 1, area_id = 5 },
	{ config_id = 769002, gadget_id = 70380017, pos = { x = 1796.084, y = 195.500, z = 264.013 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, level = 18, route_id = 310200249, mark_flag = 2, area_id = 5 },
	{ config_id = 769003, gadget_id = 70380018, pos = { x = 1783.094, y = 195.500, z = 256.463 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, level = 18, route_id = 310200250, mark_flag = 3, area_id = 5 },
	{ config_id = 769004, gadget_id = 70380017, pos = { x = 1801.575, y = 195.500, z = 284.453 }, rot = { x = 0.000, y = 240.000, z = 0.000 }, level = 18, route_id = 310200251, mark_flag = 4, area_id = 5 },
	{ config_id = 769005, gadget_id = 70380016, pos = { x = 1788.556, y = 195.500, z = 277.001 }, rot = { x = 0.000, y = 150.000, z = 0.000 }, level = 18, route_id = 310200252, mark_flag = 5, area_id = 5 },
	{ config_id = 769006, gadget_id = 70380017, pos = { x = 1775.594, y = 195.500, z = 269.453 }, rot = { x = 0.000, y = 60.000, z = 0.000 }, level = 18, route_id = 310200253, mark_flag = 6, area_id = 5 },
	{ config_id = 769007, gadget_id = 70380018, pos = { x = 1794.075, y = 195.500, z = 297.444 }, rot = { x = 0.000, y = 150.000, z = 0.000 }, level = 18, route_id = 310200254, mark_flag = 7, area_id = 5 },
	{ config_id = 769008, gadget_id = 70380017, pos = { x = 1781.034, y = 195.500, z = 290.044 }, rot = { x = 0.000, y = 150.000, z = 0.000 }, level = 18, route_id = 310200255, mark_flag = 8, area_id = 5 },
	{ config_id = 769009, gadget_id = 70380018, pos = { x = 1768.094, y = 195.500, z = 282.444 }, rot = { x = 0.000, y = 60.000, z = 0.000 }, level = 18, route_id = 310200256, mark_flag = 9, area_id = 5 },
	{ config_id = 769010, gadget_id = 42005009, pos = { x = 1788.556, y = 200.550, z = 277.001 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, mark_flag = 10, area_id = 5 },
	{ config_id = 769011, gadget_id = 42005010, pos = { x = 1809.075, y = 200.500, z = 271.463 }, rot = { x = 0.000, y = 285.000, z = 0.000 }, level = 18, mark_flag = 127, area_id = 5 },
	{ config_id = 769045, gadget_id = 42005010, pos = { x = 1783.094, y = 200.500, z = 256.463 }, rot = { x = 0.000, y = 15.000, z = 0.000 }, level = 18, mark_flag = 127, area_id = 5 },
	{ config_id = 769046, gadget_id = 42005010, pos = { x = 1794.075, y = 200.500, z = 297.444 }, rot = { x = 0.000, y = 195.000, z = 0.000 }, level = 18, mark_flag = 127, area_id = 5 },
	{ config_id = 769047, gadget_id = 42005010, pos = { x = 1768.094, y = 200.500, z = 282.444 }, rot = { x = 0.000, y = 105.000, z = 0.000 }, level = 18, mark_flag = 127, area_id = 5 },
	{ config_id = 769054, gadget_id = 70210106, pos = { x = 1787.825, y = 200.490, z = 271.990 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "纯水精灵", isOneoff = true, persistent = true, boss_chest = {monster_config_id=769026,resin=40,life_time=600,take_num=100}, area_id = 5 },
	{ config_id = 769055, gadget_id = 42005005, pos = { x = 1788.556, y = 200.550, z = 277.001 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, mark_flag = 127, area_id = 5 },
	{ config_id = 769062, gadget_id = 70360001, pos = { x = 1809.075, y = 200.500, z = 271.463 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, area_id = 5 },
	{ config_id = 769063, gadget_id = 70360001, pos = { x = 1783.094, y = 200.500, z = 256.463 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, area_id = 5 },
	{ config_id = 769064, gadget_id = 70360001, pos = { x = 1794.075, y = 200.500, z = 297.444 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, area_id = 5 },
	{ config_id = 769065, gadget_id = 70360001, pos = { x = 1768.094, y = 200.500, z = 282.444 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, area_id = 5 }
}

-- 区域
regions = {
	{ config_id = 769057, shape = RegionShape.SPHERE, radius = 60, pos = { x = 1787.226, y = 200.550, z = 276.840 }, area_id = 5 },
	{ config_id = 769059, shape = RegionShape.SPHERE, radius = 45, pos = { x = 1787.360, y = 200.550, z = 276.559 }, area_id = 5 },
	{ config_id = 769060, shape = RegionShape.SPHERE, radius = 55, pos = { x = 1787.843, y = 200.550, z = 278.367 }, area_id = 5 }
}

-- 触发器
triggers = {
	{ config_id = 1769027, name = "ANY_MONSTER_DIE_769027", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_769027", trigger_count = 0 },
	{ config_id = 1769028, name = "GADGET_STATE_CHANGE_769028", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_769028", action = "action_EVENT_GADGET_STATE_CHANGE_769028", trigger_count = 0 },
	{ config_id = 1769029, name = "VARIABLE_CHANGE_769029", event = EventType.EVENT_VARIABLE_CHANGE, source = "stage", condition = "", action = "action_EVENT_VARIABLE_CHANGE_769029", trigger_count = 0 },
	{ config_id = 1769030, name = "GADGET_CREATE_769030", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_769030", action = "action_EVENT_GADGET_CREATE_769030", trigger_count = 0 },
	{ config_id = 1769052, name = "GROUP_LOAD_769052", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_769052", trigger_count = 0 },
	{ config_id = 1769053, name = "GROUP_REFRESH_769053", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_769053", trigger_count = 0 },
	{ config_id = 1769056, name = "TIME_AXIS_PASS_769056", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "", action = "action_EVENT_TIME_AXIS_PASS_769056", trigger_count = 0 },
	{ config_id = 1769057, name = "ENTER_REGION_769057", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_769057", action = "action_EVENT_ENTER_REGION_769057", trigger_count = 0 },
	{ config_id = 1769059, name = "ENTER_REGION_769059", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_769059", action = "action_EVENT_ENTER_REGION_769059", trigger_count = 0, forbid_guest = false },
	{ config_id = 1769060, name = "LEAVE_REGION_769060", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_769060", action = "action_EVENT_LEAVE_REGION_769060", trigger_count = 0, forbid_guest = false },
	{ config_id = 1769061, name = "GROUP_WILL_UNLOAD_769061", event = EventType.EVENT_GROUP_WILL_UNLOAD, source = "", condition = "", action = "action_EVENT_GROUP_WILL_UNLOAD_769061", trigger_count = 0 },
	{ config_id = 1769066, name = "GADGET_CREATE_769066", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_769066", action = "action_EVENT_GADGET_CREATE_769066", trigger_count = 0 },
	{ config_id = 1769067, name = "SELECT_OPTION_769067", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "", action = "action_EVENT_SELECT_OPTION_769067", trigger_count = 0 },
	{ config_id = 1769068, name = "VARIABLE_CHANGE_769068", event = EventType.EVENT_VARIABLE_CHANGE, source = "is_in_replacement", condition = "", action = "action_EVENT_VARIABLE_CHANGE_769068", trigger_count = 0 },
	-- 出怪波次
	{ config_id = 1769069, name = "VARIABLE_CHANGE_769069", event = EventType.EVENT_VARIABLE_CHANGE, source = "monster_wave", condition = "", action = "action_EVENT_VARIABLE_CHANGE_769069", trigger_count = 0 },
	{ config_id = 1769070, name = "PLATFORM_ARRIVAL_769070", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "", action = "action_EVENT_PLATFORM_ARRIVAL_769070", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "next_monster1", value = 0, no_refresh = false },
	{ config_id = 2, name = "next_monster2", value = 0, no_refresh = false },
	{ config_id = 3, name = "summon_platform1", value = 0, no_refresh = false },
	{ config_id = 4, name = "summon_platform2", value = 0, no_refresh = false },
	{ config_id = 5, name = "platform1", value = 0, no_refresh = false },
	{ config_id = 6, name = "platform2", value = 0, no_refresh = false },
	{ config_id = 7, name = "platform3", value = 0, no_refresh = false },
	{ config_id = 8, name = "platform4", value = 0, no_refresh = false },
	{ config_id = 9, name = "boss_exist", value = 1, no_refresh = false },
	{ config_id = 10, name = "stage", value = 0, no_refresh = false },
	{ config_id = 11, name = "REGION_EID", value = 0, no_refresh = false },
	{ config_id = 12, name = "auth_uid_p1", value = 0, no_refresh = false },
	{ config_id = 13, name = "auth_uid_p2", value = 0, no_refresh = false },
	{ config_id = 14, name = "is_in_replacement", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 769058, gadget_id = 71000007, pos = { x = 1788.513, y = 201.319, z = 276.239 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, area_id = 5 }
	},
	regions = {
		{ config_id = 769048, shape = RegionShape.SPHERE, radius = 10, pos = { x = 1809.075, y = 195.300, z = 271.463 }, area_id = 5 },
		{ config_id = 769049, shape = RegionShape.SPHERE, radius = 10, pos = { x = 1783.094, y = 195.300, z = 256.463 }, area_id = 5 },
		{ config_id = 769050, shape = RegionShape.SPHERE, radius = 10, pos = { x = 1794.075, y = 195.300, z = 297.444 }, area_id = 5 },
		{ config_id = 769051, shape = RegionShape.SPHERE, radius = 10, pos = { x = 1768.094, y = 195.300, z = 282.444 }, area_id = 5 }
	},
	triggers = {
		{ config_id = 1769048, name = "ENTER_REGION_769048", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_769048", action = "action_EVENT_ENTER_REGION_769048", trigger_count = 0 },
		{ config_id = 1769049, name = "ENTER_REGION_769049", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_769049", action = "action_EVENT_ENTER_REGION_769049", trigger_count = 0 },
		{ config_id = 1769050, name = "ENTER_REGION_769050", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_769050", action = "action_EVENT_ENTER_REGION_769050", trigger_count = 0 },
		{ config_id = 1769051, name = "ENTER_REGION_769051", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_769051", action = "action_EVENT_ENTER_REGION_769051", trigger_count = 0 }
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
		monsters = { },
		gadgets = { 769001, 769002, 769003, 769004, 769005, 769006, 769007, 769008, 769009 },
		regions = { 769059, 769060 },
		triggers = { "GROUP_LOAD_769052", "GROUP_REFRESH_769053", "TIME_AXIS_PASS_769056", "ENTER_REGION_769059", "LEAVE_REGION_769060", "GROUP_WILL_UNLOAD_769061", "VARIABLE_CHANGE_769068", "PLATFORM_ARRIVAL_769070" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 769012, 769013, 769014 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 769015, 769016, 769017, 769018, 769019, 769020 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 769021, 769022, 769023 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { 769024, 769025 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 769055 },
		regions = { 769057 },
		triggers = { "ANY_MONSTER_DIE_769027", "GADGET_STATE_CHANGE_769028", "VARIABLE_CHANGE_769029", "GADGET_CREATE_769030", "ENTER_REGION_769057", "GADGET_CREATE_769066", "SELECT_OPTION_769067", "VARIABLE_CHANGE_769069" },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { },
		gadgets = { 769011, 769062 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { },
		gadgets = { 769045, 769063 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = ,
		monsters = { },
		gadgets = { 769046, 769064 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
		-- description = ,
		monsters = { },
		gadgets = { 769047, 769065 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 11,
		-- description = ,
		monsters = { 769026 },
		gadgets = { 769010 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 12,
		-- description = ,
		monsters = { 769031, 769032, 769033 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 13,
		-- description = ,
		monsters = { 769034, 769035, 769036, 769037, 769038, 769039 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 14,
		-- description = ,
		monsters = { 769040, 769041, 769042 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 15,
		-- description = ,
		monsters = { 769043, 769044 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 16,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 769060 },
		triggers = { "LEAVE_REGION_769060" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_769027(context, evt)
	--LF_Log(context, "## any_monster_die")
	if 1 == ScriptLib.GetGroupMonsterCount(context) then
		local state = ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_hp_checker)
		if state ~= 903 then
			for i,v in ipairs(defs.hp_stack) do
				if v == state then
					--关卡计算阶段年增加,并通知boss
					ScriptLib.SetGroupVariableValue(context, "stage", i+1)
					LF_Log(context, "## stage="..i+1)
					ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_hp_checker, defs.hp_stack[i+1])		
					break
				end
			end
		end
	elseif evt.param1 == defs.monster_boss then
		LF_Log(context, "## boss_die")
		ScriptLib.ShowReminder(context, 31020010)
		LF_Manage_OceanId_Replacement(context, 0)
		ScriptLib.SetGroupVariableValue(context, "boss_exist", 0)
		ScriptLib.InitTimeAxis(context, "boss_die", {3}, false)
		ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, 11)
		ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, 6)
		ScriptLib.SetWeatherAreaState(context, 2021, 0)
		LF_Recover_Platform(context)
	end
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_769028(context, evt)
	LF_Log(context, "## gadget_state_change | "..evt.param2.." : "..evt.param3.." -> "..evt.param1)
	if evt.param1 == 201 and evt.param2 == defs.gadget_hp_checker then
		return true
	end
	if evt.param1 == 0 and evt.param3 == 901 then 
		return true
	end
	if evt.param1 == 0 and evt.param3 == 202 then 
		return true
	end
	if evt.param1 == 202 and evt.param3 == 201 then
		return true
	end
	if evt.param1 == 202 and evt.param3 == 901 then
		return true
	end
	return false
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_769028(context, evt)
	--说明是创建怪物的流程
	if evt.param1 == 0 then
		ScriptLib.EndTimeAxis(context, "summon")
		--获取此platform位置
		local stage = ScriptLib.GetGroupVariableValue(context, "stage")
		--获取波次与对应平台信息并创建怪物
		if evt.param2 == defs.gadget_platform_list[ScriptLib.GetGroupVariableValue(context, "summon_platform1")] then
			LF_Summon_Monster(context, stage, 1)
		end
		if evt.param2 ==  defs.gadget_platform_list[ScriptLib.GetGroupVariableValue(context, "summon_platform2")] then
			LF_Summon_Monster(context, stage, 2)
		end
	--说明是平台下降的流程
	elseif evt.param1 == 202 then
		ScriptLib.EndTimeAxis(context, "sink")
		ScriptLib.StartPlatform(context, evt.param2)
		--如果是第一个下降的平台,还要补一下第二个平台的信号
		if evt.param2 == ScriptLib.GetGroupVariableValue(context, "platform1") or evt.param2 == ScriptLib.GetGroupVariableValue(context, "platform3") then
			LF_Notify_Platform_Sink(context, 2)
			LF_Set_Secure_Timer(context, "sink")
		end
		if evt.param3 ~= 201 then
			if evt.param2 == defs.gadget_platform_list[ScriptLib.GetGroupVariableValue(context, "summon_platform1")] then
				ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, evt.param2, 901)
			elseif evt.param2 == defs.gadget_platform_list[ScriptLib.GetGroupVariableValue(context, "summon_platform2")] then
				ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, evt.param2, 901)
			end
		end
	--说明是脱战了,重刷此group
	elseif evt.param1 == 201 then
		ScriptLib.PrintContextLog(context, "## oceanid_log : old escape")
		--[[LF_Remove_Extra_Suite(context)
		if 1 == ScriptLib.GetGroupVariableValue(context, "boss_exist") then
			LF_Reset_Platform(context)
			LF_Initialize_Variable(context)
			if 0 == ScriptLib.GetGroupVariableValue(context, "is_in_replacement") then
				ScriptLib.AddExtraGroupSuite(context, defs.group_id, 6)
			end
		end--]]
	end
	return 0
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_769029(context, evt)
	if evt.param1 == evt.param2 then return -1 end
	
	if evt.param1 == 0 then
		return 0
	end
	if evt.param1 == 3 or evt.param1 == 5 then
		LF_Notify_Platform_Sink(context, 1)
		LF_Set_Secure_Timer(context, "sink")
	else ScriptLib.SetGroupTempValue(context, "monster_wave", evt.param1, {})
	end
	LF_Set_Secure_Timer(context, "summon")
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_769030(context, evt)
	if evt.param1 ~= defs.gadget_anchor then
		return false
	end
	if 1 ~= ScriptLib.GetGroupVariableValue(context, "boss_exist") then
		return false
	end
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_769030(context, evt)
	math.randomseed(ScriptLib.GetServerTime(context))
	ScriptLib.SetGroupVariableValue(context, "stage", 0)
	ScriptLib.AddExtraGroupSuite(context, 0, math.random(1,4) + 6)
	ScriptLib.SetGroupVariableValue(context, "auth_uid_p1", 0)
	ScriptLib.SetGroupVariableValue(context, "auth_uid_p2", 0)
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_769052(context, evt)
	LF_Remove_Extra_Suite(context)
	if 1 == ScriptLib.GetGroupVariableValue(context, "boss_exist") then
		LF_Reset_Platform(context)
		LF_Initialize_Variable(context)
		if 0 == ScriptLib.GetGroupVariableValue(context, "is_in_replacement") then
			ScriptLib.AddExtraGroupSuite(context, defs.group_id, 6)
		else
			local act_time = ScriptLib.GetActivityOpenAndCloseTimeByScheduleId(context, 5020001)
			local cur_time = ScriptLib.GetServerTime(context)
			if cur_time > act_time[2] then
				ScriptLib.SetGroupVariableValue(context, "is_in_replacement", 0)
			end 
		end
	end
	return 0
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_769053(context, evt)
	ScriptLib.EndTimeAxis(context, "summon")
	ScriptLib.EndTimeAxis(context, "sink")
	if 0 == ScriptLib.GetGroupVariableValue(context, "is_in_replacement") then
		ScriptLib.AddExtraGroupSuite(context, defs.group_id, 6)
	end
	LF_Reset_Platform(context)
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_769056(context, evt)
	if evt.source_name == "boss_die" then
		ScriptLib.CreateGadget(context, {config_id=769054})
	elseif evt.source_name == "sink" then
		local sink = {}
		sink[1] = ScriptLib.GetGroupVariableValue(context, "platform1")
		sink[2] = ScriptLib.GetGroupVariableValue(context, "platform2")
		sink[3] = ScriptLib.GetGroupVariableValue(context, "platform3")
		sink[4] = ScriptLib.GetGroupVariableValue(context, "platform4")
		for k,v in ipairs(sink) do
			if v == 0 then
				break
			elseif 201 == ScriptLib.GetGadgetStateByConfigId(context, 0, v) then
				ScriptLib.SetGroupGadgetStateByConfigId(context, 0, v, 202)
			end
		end
	elseif evt.source_name == "summon" then
		local sp1 = ScriptLib.GetGroupVariableValue(context, "summon_platform1")
		local sp2 = ScriptLib.GetGroupVariableValue(context, "summon_platform2")
		if sp1 > 0 and 901 == ScriptLib.GetGadgetStateByConfigId(context, 0, defs.gadget_platform_list[sp1]) then
			ScriptLib.SetGroupGadgetStateByConfigId(context, 0, defs.gadget_platform_list[sp1], 0)
		end
		if sp2 > 0 and 901 == ScriptLib.GetGadgetStateByConfigId(context, 0, defs.gadget_platform_list[sp2]) then
			ScriptLib.SetGroupGadgetStateByConfigId(context, 0, defs.gadget_platform_list[sp2], 0)
			end
	end
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_769057(context, evt)
	if evt.param1 ~= 769057 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_769057(context, evt)
	ScriptLib.SetWeatherAreaState(context, 2021, 1)
	ScriptLib.SetGroupVariableValue(context, "REGION_EID", evt.source_eid)
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_769059(context, evt)
	if evt.param1 ~= 769059 then return false end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_769059(context, evt)
	--ScriptLib.SetPlayerEyePoint(context, 769059)
	--ScriptLib.SetPlayerGroupVisionType(context, {context.uid}, {0})
	
	local small_region={}
			local big_region={}
			for i=1,#regions do
				if regions[i].config_id==769059 then
					small_region=regions[i]
				end
				if regions[i].config_id==769060 then
					big_region=regions[i]
				end
			end
			TrySetPlayerEyePoint(context, small_region, big_region, 1, {0})
	return 0
end

-- 触发条件
function condition_EVENT_LEAVE_REGION_769060(context, evt)
	if evt.param1 ~= 769060 then return false end
	return true
end

-- 触发操作
function action_EVENT_LEAVE_REGION_769060(context, evt)
	ScriptLib.ClearPlayerEyePoint(context, 769059)
	ScriptLib.SetPlayerGroupVisionType(context, {context.uid}, {1})
	if 0 == ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) then
		LF_Remove_Extra_Suite(context)
		if 1 == ScriptLib.GetGroupVariableValue(context, "boss_exist") then
			LF_Reset_Platform(context)
			LF_Initialize_Variable(context)
			if 0 == ScriptLib.GetGroupVariableValue(context, "is_in_replacement") then
				ScriptLib.AddExtraGroupSuite(context, defs.group_id, 6)
			end
		end
		return 0
	end
	if 0 == ScriptLib.GetGroupVariableValue(context, "boss_exist") then
		return 0
	end
	ScriptLib.TryReallocateEntityAuthority(context, context.uid, 769026, 769060)
	return 0
end

-- 触发操作
function action_EVENT_GROUP_WILL_UNLOAD_769061(context, evt)
	-- 删除suite16的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133102769, 16)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_769066(context, evt)
	for i,v in ipairs(defs.gadget_boss_starter) do
		if v== evt.param1 then
			return true
		end
	end
	return false
end

-- 触发操作
function action_EVENT_GADGET_CREATE_769066(context, evt)
	-- 设置操作台选项
	ScriptLib.SetWorktopOptionsByGroupId(context, 0, evt.param1, {2901})
	
	return 0
end

-- 触发操作
function action_EVENT_SELECT_OPTION_769067(context, evt)
	for i,v in ipairs(defs.gadget_boss_starter) do
		if evt.param1 == v then
			LF_Create_Boss(context, i+6)
			LF_Manage_OceanId_Replacement(context, 1)
		end
	end
	return 0
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_769068(context, evt)
	if evt.param1 == evt.param2 then return -1 end
	
	if evt.param1 == 0 then
		ScriptLib.AddExtraGroupSuite(context, 0, 6)
	else
		for i=6,15 do
			ScriptLib.RemoveExtraGroupSuite(context, 0, i)
		end
	end
	return 0
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_769069(context, evt)
	if evt.param1 == evt.param2 then return -1 end
	
	if evt.param1 == evt.param2 then return -1 end
	ScriptLib.PrintContextLog(context, "## Oceanid_Log : var_change : "..evt.source_name.." | "..evt.param2.." -> "..evt.param1)
	if evt.param1 > 1 and evt.param1 <= #stage_monster then
		LF_Calculate_Monster(context, evt.param1)
	end
	
	return 0
end

-- 触发操作
function action_EVENT_PLATFORM_ARRIVAL_769070(context, evt)
	LF_Platform_Arrival(context, evt)
	return 0
end

require "TD_Lib"