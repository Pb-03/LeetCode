class Solution {
public:
    bool isPalindrome(int x) {
        long int revNum=0;
        int ld, oriNum=x;
        if(x<0){ 
            return false;
        }
        while(x>0){
        ld=x%10;
        revNum=revNum*10+ld;
        x=x/10;
        }
    
    if(oriNum==revNum){ 
        return true;
        }
        else{ 
        return false; 
        }
    }
};