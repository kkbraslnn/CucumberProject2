@personel_olusturma
Feature: personel_olusturma
  Scenario Outline: TC_01_personel_olustur
    Given kullanici "https://editor.datatables.net/" gider
    When kullanici new butonuna tiklar
    And kullanici first name "<firstname>" girer
    And kullanici last name "<lastname>" girer
    And kullanici positions "<positions>" girer
    And kullanici office "<office>" girer
    And kullanici extension "<extension>" girer
    And kullanici start_date "<start_date>" girer
    And kullanici salary "<salary>" girer
    And kullanici create buttonuna basar
    When kullanici firstname ile "<firstname>" arar
    Then firstname "<firstname>" in olustugunu test et
    Then close the application


    Examples: personel_bilgileri
      | firstname | lastname | positions    | office     | extension | start_date | salary |
      | john      | walker   | SDET         | ISTANBUL   | 345       | 2023-08-08 | 100000 |
      | zeynep    | black    | developer    | ankara     | 3412      | 2023-08-10 | 80000  |
      | ali       | tez      | BA           | izmir      | 3418      | 2023-08-16 | 70000  |
      | feyza     | sar      | PO           | bursa      | 3490      | 2023-08-18 | 90000  |
      | mukesh    | srivasan | Scrum Master | haydarabat | 3423      | 2023-08-19 | 50000  |
