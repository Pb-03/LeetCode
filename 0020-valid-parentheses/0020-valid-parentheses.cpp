class Solution {
public:
    bool isValid(string s) {
        int len = s.length();
        if (len % 2 == 1) return false;
        if (s[0] == ')' || s[0] == ']' || s[0] == '}' || s[len - 1] == '(' || s[len-1] == '[' || s[len-1] == '{') return false;

        if(len == 2){
            if(s[0]+1 == s[1] || s[0]+2 == s[1]) return true;
            else return false;
        }

        for(int i=0;i<len;i++){
            if(s[i]+1 != s[i+1] && s[i]+2 != s[i+1]) continue;
            s.erase(i, 2);
            return isValid(s);
        }
        return false;
    
    }
};