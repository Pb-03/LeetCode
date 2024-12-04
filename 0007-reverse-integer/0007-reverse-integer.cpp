class Solution {
public:
    int reverse(int x) {
        long int revNum=0;
        while(x!=0){
        int ld; 
        
        ld=x%10;
        revNum=revNum*10+ld;
        if(revNum<INT_MIN || revNum>INT_MAX){
            return 0;
        }
        x=x/10;
        }
        return revNum;  
    }
    
    
};