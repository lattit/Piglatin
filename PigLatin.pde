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
public int findFirstVowel(String sWord) {
  int index = 1;
  for (int i=0; i<sWord.length(); i++) {
    String letter = sWord.substring(i, 1+1);
    if (letter.contains ("o")) {
      index=1;
      break;
    }
    if (letter.contains ("e")) {
      index=1;
      break;
    }
    if (letter.contains ("a")) {
      index=1;
      break;
    }
    if (letter.contains ("i")) {
      index=1;
      break;
    }
    if (letter.contains ("u")) {
      index=1;
      break;
    }
    return index;
  }
}

//precondition: sWord is a valid String of length greater than 0.
//postcondition: returns the position of the first vowel in sWord.  If there are no vowels, returns -1
//{
///  return -1;
//}

public String pigLatin(String sWord) {
  if (findFirstVowel(sWord) == -1)
  {
    return sWord + "ay";
  } else if (sWord.length() >0)
  {
    if (findFirstVowel(sWord.substring(0, 1)) != -1)
    {
      return sWord + "way";
    } else if (sWord.substring(0, 2).equal("qu"))
    {
      return sWord.substring(2, sWord.length()) +"quay";
    }
    return sWord.substring(findFirstVowel(sWord), sWord.length())+ sWord.substring(0, findFirstVowel(sWord)) + "ay";
  } else {
    //else if (findFirstVowel(sWord) ==0;
    return "ERROR!";
  }
}
