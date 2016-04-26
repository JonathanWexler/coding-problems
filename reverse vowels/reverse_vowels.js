// Jon Wexler
// This function takes a string an reverses the order of vowels
// source: https://leetcode.com/problems/reverse-vowels-of-a-string/

var reverseVowels = function(s) {
    // If null return
    if(s == null || s.length <= 0) return s;

    // Two temp variables
    var collect = [];
    var new_s = "";

    // Two one line loops to check if characters are vowels
    for (var v = 0; v <= s.length -1; v++) if ((/^[aeiou]$/i).test(s.charAt(v))) collect.push(s.charAt(v));
    for (var i = 0; i <= s.length -1; i++) (/^[aeiou]$/i).test(s.charAt(i)) ? new_s += collect.pop() : new_s += s.charAt(i);
    
    // Return new reversed string
    return new_s;
};

console.log(reverseVowels("This is a demo sentence"));

