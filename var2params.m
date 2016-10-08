function params = var2params(var,params,freeList)
%params = var2params(var,params,freeList)

count = 1;
for i=1:length(freeList)
  evalStr = sprintf('len = length(params.%s);',char(freeList(i)));
  eval(evalStr);
  evalStr = sprintf('params.%s =  var([%d:%d]);',char(freeList(i)),count,count+len-1);
  eval(evalStr);
  count = count+len;
end
