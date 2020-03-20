def substrings (string, dictionary)
	hash = {}
	newString = string.downcase.gsub(/[\!\.\,\?]*/, "")
	stringArray = newString.split(" ")

	stringArray.each do |word|
		dictionary.each do |dict|
			if (word.match? (/#{dict}/))
				if hash[dict] == nil
					hash[dict] = 1
				elsif
					hash[dict] += 1
				end
				
			end
		end
	end
	hash = hash.transform_keys(&:to_sym)
	hash.sort
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
p substrings("Howdy partner, sit down! How's it going?", dictionary)
