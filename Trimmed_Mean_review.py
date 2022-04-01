def mean(*args, trim=0, weights=None):
    if not 0 <= trim < (len(args)/2):
        return "Invalid args"
		
    elif weights == None:
        return sum(sorted(args)[trim:len(args)-trim]) / (len(args) - 2 * trim)
        #trim 만큼 앞뒤 자르고
        
    else:
        w = tuple(weights)
        if len(w) != len(args):
            return 'Invalid args'
        else:
            a = 0
            for i in range(trim, len(args) - trim):
                a += sorted(args)[i] * w[i]
            return a / sum(w[trim: len(args) - trim])