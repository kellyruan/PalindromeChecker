public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String newS = new String();
  newS = noStuff(word);
  if(newS.length()%2==0)
    if(newS.substring(0,newS.length()/2).equals(reverse(newS.substring(newS.length()/2,newS.length())))) {
      return true;
    }
    else {return false;}
  else {
    if(newS.substring(0,newS.length()/2+1).equals(reverse(newS.substring(newS.length()/2,newS.length())))) {
      return true;
    }
    else {return false;}
  }
}
public String reverse(String str)
{
    String sNew = new String();   
    for (int i=str.length()-1; i>-1; i--) {
      sNew+=str.substring(i,i+1);
    }
    return sNew;
}

public String noStuff(String sWord){
  String newS = new String();
  for (int i = 0; i<sWord.length(); i++) {
    if (!sWord.substring(i,i+1).equals(" ") && Character.isLetter(sWord.charAt(i))==true) {
      newS+=sWord.substring(i,i+1);
    }
  }
  return newS.toLowerCase();
}


