def process_name(name)
    # фио
    arr = name.split
    text1 = [arr[1], arr[2], arr[0]].join(' ')
    text2 = "#{arr[0]} #{arr[1][0]}.#{arr[2][0]}"

    return text1, text2
end