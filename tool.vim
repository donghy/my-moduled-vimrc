function! ToolStrip(input_string)
    return substitute(a:input_string, '\v\s*', '\1', '')
    return substitute(a:input_string, '\v^\s*\(.\{-}\)\s*$', '\1', '')
endfunction

let var = getline(3)
echo ToolStrip(var)
