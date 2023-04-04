public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  System.out.println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      System.out.println(lines[i] + " IS a palindrome.");
    }
    else
    {
      System.out.println(lines[i] + " is NOT a palindrome.");
    }
  }
}

public boolean palindrome(String word)
{
  word = word.toLowerCase();
  String temp = "";
  
  for (int i = 0; i < word.length(); i++) {
    char tempChar = word.charAt(i);
    if (tempChar != ' ' && tempChar != '!' && tempChar != '.' && tempChar != ',' && tempChar != 39) temp = temp + tempChar;
  }

  for (int i = 0; i < (int)((temp.length()) / 2); i++) {
    if (temp.charAt(i) != temp.charAt(temp.length() - 1 - i)) return false;
  }
  
  return true;
}
