@google_search
Feature: ilk feature file
@iPhone
  Scenario: TC_01_google_iphone_arama
  Given kullanici google gider
  When kullanici iphone icin arama yapar
  Then sonuclarda iphone oldugunu dogrular
  And close the application
@tesla
  Scenario: TC02_google_tesla_arama
    Given kullanici google gider
    When kullanici tesla icin arama yapar
    Then sonuclarda tesla oldugunu dogrular
    Then close the application



  # Her feature file, Feature: kelimesi ile baslamak zorundadir.
  # Her bir file da , yalniz bir Feature: kullanilabilir.
  #Senaryo(test case) olusturmak icin Scenario kelimesi kullanilir.
  #Birden fazla Scenario: kullanilabilir.
  #Her bir adim Given,When,And,Then,But,* kelimelerinden biriyle baslamalidir.
  #Given->genelde ilk satirlarda pre condition stepleri icin kullanilir
  #Then-> genelde son satirlarda verification stepleri icin kullanilir
  #And,When -> genelde ara adimlarda baglar olarak kullanilir
  #Note:Teknik olarak istenilen kelime istenilen step de kullanilabilir,
  #     ama anlam karmasasi olmamasi icin bu adimlar takip edilir.
  #
  # Belirli Scenario lari calistirmak icin cucumber tags ler kullanilir
  #tag ler Fetuature, Scenario, Scerio Outline, Examples kelimeleri ile birlikte kullanilabilir
  # Background: Her bir Scenario kelimesinden ONCE tek bir sefer calisir
  # dryRun=false -> dryRun yokmus gibi calisir.Yani tum adimleri tek tek browserdan acar.
  # dryRun=true  -> yeni bir step eklendiginde sadece tanimlanilmis step definitions olusturmak icin kullanilir,kullanilma sebebi zamandan tasarruftur.