--ServerUploadTool Save to [/root/env/data/lua/common/V3_4]
--======================================================================================================================
--||   Filename      ||    DrumRegexp
--||   RelVersion    ||    V3_4
--||   Owner         ||    chao-jin
--||   Description   ||    
--||   LogName       ||    ##[DrumRegexp]
--||   Protection    ||    
--======================================================================================================================
--Defs & Miscs
local defs = {
	drum = 800001,
	reminder_success = 400112,
	reminder_fail = 400113,
}

--local music_list = {"100110100101","110101011101","101010011101"}
local music_list = {"11001","11101"}
local music_len = 5

--======================================================================================================================
--Events
local DrumRegexp_Triggers = {
    [1] = { name = "group_load", config_id = 8002001, event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_group_load", trigger_count = 0},
}

function DrumRegexp_Initialize()
	for k,v in pairs(DrumRegexp_Triggers) do
		table.insert(triggers, v)
		table.insert(suites[1].triggers, v.name)
	end
end

DrumRegexp_Initialize()

--加载Group时的操作
function action_group_load(context, evt) 
	ScriptLib.PrintContextLog(context, "##[DrumRegexp]:加载敲鼓玩法Group")
	LF_ResetBeatMark(context)
	return 0
end

--======================================================================================================================
--LevelFunctions
--玩家攻击敲鼓的SLC
function SLC_DrumPercussReg(context, beat_time)
--[[
	if 0 ~= ScriptLib.GetGadgetStateByConfigId(context, base_info.group_id, defs.drum) then 
		ScriptLib.PrintContextLog(context, "##[DrumRegexp]: 已经完成了")
		return 0
	end
]]
	if beat_time > 1 then 
		ScriptLib.PrintContextLog(context, "##[DrumRegexp]:在一个区间内敲击了多次，直接失败")
		LF_RegexpPlayFail(context)
		return 0
	end
	ScriptLib.PrintContextLog(context, "##[DrumRegexp]:敲鼓SLC,敲鼓次数"..beat_time)
	local reg_dec = ScriptLib.GetGroupTempValue(context, "RegDec", {})
	local reg_bin = LF_DecToBinStr(reg_dec)
	reg_bin = reg_bin..(math.ceil(beat_time))
	ScriptLib.PrintContextLog(context, "##[DrumRegexp]:当前谱"..reg_bin)
	if string.len(reg_bin) == 5 then 
		for i=1,2 do
			if music_list[i] == reg_bin then 
				LF_RegexpPlaySuccess(context)
				return 0
			end
		end
		LF_RegexpPlayFail(context)
		return 0
	end
	ScriptLib.SetGroupTempValue(context, "RegDec", LF_BinStrToDec(reg_bin), {}) 
	return 0
end

--玩家长时间未敲鼓的SLC
function SLC_DrumPercussRegEnd(context)
--[[
	if 0 ~= ScriptLib.GetGadgetStateByConfigId(context, base_info.group_id, defs.drum) then 
		ScriptLib.PrintContextLog(context, "##[DrumRegexp]: 已经完成了")
		return 0
	end
]]
	ScriptLib.PrintContextLog(context, "##[DrumRegexp]:超时未敲鼓，失败")
	LF_RegexpPlayFail(context)
	return 0
end

--初始化鼓的敲击标记
function LF_ResetBeatMark(context)
	ScriptLib.PrintContextLog(context, "##[DrumRegexp]:初始化节拍监听变量")
	ScriptLib.SetGroupTempValue(context, "RegDec", 1, {}) --记录当前匹配到的列表
end

--演奏成功
function LF_RegexpPlaySuccess(context)
	ScriptLib.PrintContextLog(context, "##[DrumRegexp]:演奏成功")
	LF_ResetBeatMark(context)
	ScriptLib.SetGadgetStateByConfigId(context, defs.drum, 201)
	ScriptLib.ShowReminder(context, defs.reminder_success)
end

--演奏失败
function LF_RegexpPlayFail(context)
	ScriptLib.PrintContextLog(context, "##[DrumRegexp]:演奏失败")
	LF_ResetBeatMark(context)
	ScriptLib.ShowReminder(context, defs.reminder_fail)
end

--把信息从十进制转成二进制的字符串
function LF_DecToBinStr(dec_num)
	--转进制，字符的长度做一定的限制
	local bin_str = ""
	dec_num = math.ceil(dec_num)
	for i=1,16 do
		if dec_num ~= 0 then 
			bin_str = bin_str..(dec_num%2)
			dec_num = math.floor(dec_num/2) 
		else
			return string.reverse(bin_str)
		end
	end
end

--把二进制字符串变成十进制
function LF_BinStrToDec(bin_str)
	local len = string.len(bin_str)
	local dec_num = 0
	for i=1,len do
		dec_num = dec_num + (2^(len-i))*tonumber(string.sub(bin_str,i,i)) 
	end
	return dec_num
end