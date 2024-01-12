public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  String present[] = loadStrings("palindromes.txt");
  System.out.println("there are " + lines.length + " lines");
  //checks for testing functions
  //System.out.println(noCapitals("ALLCAPS"));
  //System.out.println(noSpaces("S P A C E S"));
 //System.out.println(onlyLetters("!!!!!!!!!!!!!"));
  for (int i=0; i < lines.length; i++) 
  {
    lines[i] = noCapitals(lines[i]);
    System.out.println(lines[i]);
    lines[i] =  noSpaces(lines[i]);
    System.out.println(lines[i]);
    lines[i] = onlyLetters(lines[i]);
    System.out.println(lines[i]);
    if(palindrome(lines[i])==true)
    {
      System.out.println(present[i] + " IS a palindrome.");
    }
    else
    {
      System.out.println(present[i] + " is NOT a palindrome.");
    }
  }
}

public boolean palindrome(String word)
{
  if(reverse(word).equals(word)){
    return true;
  } else
  return false;
}
public String reverse(String str)
{
    String sNew = new String();
    for(int i = str.length(); i > 0; i--){
     sNew = sNew + str.substring(i - 1, i);
  }
    return sNew;
}
public String noCapitals(String str){
      return str.toLowerCase();
}
public String noSpaces(String str){
  String s = "";
  for(int i = 0; i < str.length(); i++){
   if(str.charAt(i) !=' '){
    s = s + str.charAt(i);
    }
  }
  return s;
}

public int numLetters(String str){
  int count = 0;
  for(int i = 0; i < str.length(); i++){
    if(Character.isLetter(str.charAt(i))){
      count++;
    }
  }
  return count;
}
public String onlyLetters(String str){
  String s = "";
  for(int i = 0; i < str.length(); i++){
    if(Character.isLetter(str.charAt(i))){
      s = s + str.charAt(i);
    }
  }
  return s;
}

