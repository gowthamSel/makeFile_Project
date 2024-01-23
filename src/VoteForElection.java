package src;

public class VoteForElection {
    
    public static void vote(int number){

        boolean flag = number >=18;
        if (flag) {
            System.out.println("is eligible for Vote"); 
        }else{
            System.out.println("is not eligible for Vote");
        }

    }
}
