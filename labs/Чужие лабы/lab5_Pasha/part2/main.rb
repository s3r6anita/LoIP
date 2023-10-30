def calc(num)
    hx = num.to_i.to_s(16)
    cntZ = cntB = 0

    hx.split('').each do |smb|
        if ('a'..'f').include? smb
            cntB += 1
        else
            cntZ += 1
        end
    end
    
    return cntZ, cntB
end