local function read_local_config_file()
	local file = io.open(vim.fn.stdpath('config') .. "/config/local.properties", "r")
	local map = {}
	if not file then
		return nil
	end
	-- 逐行读取文件内容
	for line in file:lines() do
		if line == "" or line:match("^%s*#") then
			goto continue
		end
		-- 使用正则表达式匹配键值对
		local key, value = line:match("([^=]+)=(.+)")

		-- 如果匹配成功则将键值对存入 map 中
		if key and value then
			map[key] = value
		end
		::continue::
	end

	-- 关闭文件
	file:close()
	return map
end


local config = read_local_config_file()

if config == nil then
	error("请检查配置文件 config/local.properties，或者复制 config/default.properties 到 config/lcoal.properties。")
end

for k, v in pairs(config) do
	vim.g[k] = v
end
