@parametre
  Feature: arama_feature

    Background: googlea_git
      Given kullanici google gider
@smoke
      Scenario: TC01_google_iphone_arama
        When kullanici "iphone" icin arama yapar
        Then sonuclarin "ihone" icerdigini dogrula
        Then close the application
@smoke
    Scenario: TC02_google_tesla_arama
      When kullanici "tesla" icin arama yapar
      Then sonuclarin "tesla" icerdigini dogrula
      Then close the application
@smoke
    Scenario: TC01_google_water_arama
      When kullanici "water" icin arama yapar
      Then sonuclarin "water" icerdigini dogrula
      Then close the application
@smoke
    Scenario: TC01_google_porcelain tea pot_arama
      When kullanici "porcelain tea pot" icin arama yapar
      Then sonuclarin "porcelain tea pot" icerdigini dogrula
      Then close the application

    Scenario: TC01_google_skateboard_arama
      When kullanici "skateboard" icin arama yapar
      Then sonuclarin "skateboard" icerdigini dogrula
      Then close the application


        #    "veri" -> feature file i parametrize etmek icin kullanilir
        #
