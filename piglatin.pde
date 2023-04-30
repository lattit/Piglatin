public void setup()
{
  String[] lines = loadStrings("words.txt");
  System.out.println("there are " + lines.length + " lines");
  for (int i = 0; i < lines.length; i++)
  {
    System.out.println(pigLatin(lines[i]));
  }
}

public void draw()
{
}

public int vowels(String sWord) {

  int index = -1;

  for (int i=0; i<sWord.length(); i++)
  {
    String word = sWord.substring(i,i+1);
    if (word.substring(0, 1).equals("a")) {
      index=i;
      break;
    }
    if (word.substring(0, 1).equals("o")) {
      index=i;
      break;
    }
    if (word.substring(0, 1).equals("e")) {
      index=i;
      break;
    }
    if (word.substring(0, 1).equals("i")) {
      index=i;
      break;
    }
    if (word.substring(0, 1).equals("u")) {
      index=i;
      break;
    }
  }
    return index;
  }

public String pigLatin(String sWord) {

  if (vowels(sWord) == -1)
  {
    return sWord + "ay";
    
  } 
  else if (sWord.length() > 0)
  
  {
    if (vowels(sWord.substring(0, 1)) != -1)
    
    {
      return sWord + "way";
      
    } 
    else if (sWord.substring(0, 2).equals("qu"))
    
    {
      return sWord.substring(2, sWord.length()) +"quay";
    }
    return sWord.substring(vowels(sWord), sWord.length())+ sWord.substring(0, vowels(sWord)) + "ay";
  } else {
    //else if (findFirstVowel(sWord) ==0;
    return "ERROR!";
  }
}
