Feature: ilk feature file

  Scenario: TC_01_google_iphone_arama
  Given kullanici google gider
  When kullanici iphone icin arama yapar
  Then sonuclarda iphone oldugunu dogrular





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