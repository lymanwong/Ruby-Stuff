firstWords = %w(cinema host aba train)
secondWords = %w(iceman shot bab rain)

def anagram(arr1, arr2)
  firstwordarr=[]
  secondwordarr=[]
  counter = 0
  arr1.each do |firstword|
    firstwordarr << firstword.split('').sort
  end
  arr2.each do |secondword|
    secondwordarr << secondword.split('').sort
  end
  while counter < firstwordarr.length
    if firstwordarr[counter] == secondwordarr[counter]
      p '1'
    else
      p '0'
    end
    counter += 1
  end
end

anagram(firstWords, secondWords)
