package dev.vt.persistence.model.enums;

/*
public enum US_States {
  AL, AK, AZ, AR, CA, CO, CT, DE, FL, GA,
  HI, ID, IL, IN, IA, KS, KY, LA, ME, MD,
  MA, MI, MN, MS, MO, MT, NE, NV, NH, NJ,
  NM, NY, NC, ND, OH, OK, OR, PA, RI, SC,
  SD, TN, TX, UT, VT, VA, WA, WV, WI, WY
}
*/

public enum US_States {

  CA("CA", "California"),
  NY("NY", "New York"),
  TX("TX", "Texas"),
  AR("AR","Arkansas"),
  CO("CO","Colorado"),

  IL("IL","Illinois"),
  FL("FL","Florida"),
  ID("ID","Idaho") ,
  MA("MA","Massachusetts"),
  WA("WA","Washington"),
  NJ("NJ","New Jersey"),
  AZ("AZ", "Arizona");



  private final String code;
  private final String fullName;

  US_States(String code, String fullName) {
    this.code = code;
    this.fullName = fullName;
  }

  public String getCode() {
    return code;
  }

  public String getFullName() {
    return fullName;
  }

  /* 🔑 The important part */
  public static US_States from(String input) {
    if (input == null || input.isBlank()) {
      throw new IllegalArgumentException("State cannot be null or empty");
    }

    String normalized = input.trim().toUpperCase();

    for (US_States state : values()) {
      if (state.code.equalsIgnoreCase(normalized)
              || state.fullName.equalsIgnoreCase(input.trim())) {
        return state;
      }
    }

    throw new IllegalArgumentException("Invalid state: " + input);
  }
}


